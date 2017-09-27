if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_main' and column_name = 'description') then
		alter table acc_main add description varchar(100) null
end if
go
if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_main_temp' and column_name = 'description') then
		alter table acc_main_temp add description varchar(100) null
end if
go
if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_temp' and column_name = 'description') then
		alter table acc_temp add description varchar(100) null
end if
go

ALTER PROCEDURE "DBA"."sp_importaccounts"(in @acc_id_capital unsigned integer default null,in @acc_id_cash unsigned integer default null)
begin
  declare @capital_id unsigned integer;
  declare @profitloss T_money;
  declare @assets T_money;
  declare @liabilities T_money;
  //@acc_id_capital is actually acc_id for capital account in acc_temp. So to actual acc_id = func_getcrossacc_id(acc_id_capital)
  //Transfers the closing balance from acc_temp to the opening balance
  //of acc_main.
  //pass1,insert those account codes which are not there in acc_main
  //call sp_registercapitalaccount();
  if not exists(select acc_id from acc_temp) then
    return
  end if;
  insert into acc_main(acc_code,acc_name,acc_class,acc_parent,acc_opbal,
    acc_db,acc_cr,acc_root,acc_sibling,acc_type,description)
    select acc_code,acc_name,acc_class,0,0,
      0,0,acc_root,acc_sibling,acc_type,description from acc_temp where
      not acc_temp.acc_code = any(select acc_code from acc_main);
  //pass1 update description
    update acc_main join acc_temp on acc_main.acc_code = acc_temp.acc_code
    set acc_main.description = acc_temp.description
    where acc_temp.description is not null and rtrim(acc_temp.description) <> '';
  //pass2,updates the parents of newly inserted acc_codes.
  update acc_main set acc_parent = func_getcrossparentid(acc_main.acc_code) where
    acc_code = any(select acc_code from acc_temp) and acc_parent = 0; // where acc_id > @maxid;
  //pass3, resets the opening balances of acc_main
  update acc_main set acc_opbal = 0 where acc_root in('Y','S');
  update acc_main set acc_opbal = 0 where acc_root = 'L';
  //pass4,update the opbalance in acc_main
  update acc_main set acc_opbal = func_getcrossopbalance(acc_main.acc_code) where
    acc_root in('Y','S'); //and acc_type in('L','A');
  //pass5 get profitloss from acc_temp
  select sum(acc_opbal+acc_db-acc_cr) into @assets
    from acc_temp where acc_type = 'A' and acc_root in('Y','S');
  select sum(acc_opbal+acc_db-acc_cr) into @liabilities
    from acc_temp where acc_type = 'L' and acc_root in('Y','S');
  set @profitloss=@assets+@liabilities;
  //update acc_setup for capital and cash account
  if(select capitalaccount from acc_setup) is null then
    if @acc_id_capital is not null then
      update acc_setup set capitalaccount = func_getcrossaccid(@acc_id_capital)
    end if
  end if;
  if(select default_cash_id from acc_setup) is null then
    if @acc_id_cash is not null then
      update acc_setup set default_cash_id = func_getcrossaccid(@acc_id_cash)
    end if
  end if;
  // update acc_main for profitloss
  update acc_main set acc_opbal = acc_opbal-@profitloss where
    acc_id = (select capitalaccount from acc_setup);
  // delete those account codes where transactions and op balance is 0 and parent is autosubledger
  // delete those account codes where transactions and op balance is 0 and parent is autosubledger
  delete from acc_main where acc_opbal = 0 and acc_db = 0 and acc_cr = 0 and acc_root = 'S' and acc_parent = 
    any(select acc_id from auto_subledger) and not acc_id = any(select acc_id from bill_memo) and not acc_id = any(select acc_id from details)
    and not acc_id = any(select acc_id from pos_scheme_credit) and not acc_id = any(select acc_id from pos_scheme_debit) and not acc_id = any(select acc_id from bill_series)
end
go
if not exists(select table_name from systable where table_name = 'ThroughM') then
	CREATE TABLE "DBA"."ThroughM"
(
	"ID"    			unsigned int NOT NULL DEFAULT autoincrement,
	"MName"        			varchar(50) null,
	PRIMARY KEY ("ID")
)
end if
go
ALTER PROCEDURE "DBA"."sp_compactproduct"()
begin
  declare @lret integer;
  set @lret=0;
  delete from inv_main where op = 0 and db = 0 and cr = 0 and
    trf_cr = 0 and trf_db = 0;
  delete from price_list where pr_id not in(select product.pr_id from product key join inv_main);
  delete from product where not pr_id = any(select pr_id from price_list) and
    not pr_id = any(select pr_id from inv_main) and
    not pr_id = any(select pr_id from godown_tran_product);
  if @@error <> 0 then
    raiserror 17072 'Error';
    set @lret=-1
  end if;
  select @lret from dummy
end
go

//27th oct 2013
if not exists(select table_name from systable where table_name = 'KVSetting') then
  CREATE TABLE "DBA"."KVSetting"
  (
    "MKey"          varchar(100) not null,
    "MValue"        long varchar,
    "IntValue"      unsigned int not null default 0,
    PRIMARY KEY ("MKey")
  )
end if
go
if not exists(select table_name from systable where table_name = 'PartyProduct') then
  CREATE TABLE "DBA"."PartyProduct"
  (
    "ID"          unsigned int NOT NULL DEFAULT autoincrement,
    "acc_id"        unsigned int NOT NULL,
    CounterCode varchar(10) not null,
    Item varchar(10) not null,
    Brand varchar(20) not null,
    PRIMARY KEY ("ID")
  );
  ALTER TABLE "DBA"."PartyProduct"
      ADD FOREIGN KEY "acc_id" ("acc_id") 
      REFERENCES "DBA"."acc_main" ("acc_id");
  CREATE UNIQUE INDEX "ID" ON "DBA"."PartyProduct"
  (
    "ID" ASC
  );
end if
go
//3rd Nov 2013
if not exists(select table_name from systable where table_name='KVOrderHistory') then
  CREATE TABLE "DBA"."KVOrderHistory"
  (
    "ID" unsigned int NOT NULL default autoincrement,
    "OrderDate" date not null,
    "OrderNo" varchar(30) not null,
    "MailIDs" varchar(300) not null,
    "MailTo" varchar(100) not null,
    "OrderAmount" unsigned int NOT NULL default 0,
    "OrderXML" long varchar not null,
    PRIMARY KEY("ID")
  );
  CREATE UNIQUE INDEX "ID" ON "DBA"."KVOrderHistory"
  (
    "ID" ASC
  );
end if
go
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'KVSetting' and column_name = 'IntValue') then
    alter table KVSetting add IntValue unsigned int not null default 0
end if
go
if exists(select table_name from systable where table_name='KVSetting') then
  alter table KVSetting modify MValue long varchar null
end if
go
if not exists(select MKey from KVSetting where MKey='LastOrderNo') then
  insert into KVSetting (MKey,IntValue) values('LastOrderNo',100);
end if
go
//23rd Nov 2013
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'Inv_Main' and column_name = 'TallyDate') then
    alter table Inv_Main add TallyDate date null
end if
go
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'Inv_Main' and column_name = 'IsDisputed') then
    alter table Inv_Main add IsDisputed bit not null default 0
end if
go
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'Inv_Main' and column_name = 'IsIgnored') then
    alter table Inv_Main add IsIgnored bit not null default 0
end if
go
//1st Dec 2013
if not exists(select table_name from systable where table_name='KVStockTallyHistory') then
  CREATE TABLE "DBA"."KVStockTallyHistory"
  (
    "ID" unsigned int NOT NULL default autoincrement,
    "StockTallyDate" date not null,
    "StockTallyNo" unsigned int NOT NULL,
    "StockTallyXML" long varchar not null,
    PRIMARY KEY("ID")
  );
  CREATE UNIQUE INDEX "ID" ON "DBA"."KVStockTallyHistory"
  (
    "ID" ASC
  );
end if
go
if not exists(select MKey from KVSetting where MKey='LastStockTallyNo') then
  insert into KVSetting (MKey,IntValue) values('LastStockTallyNo',0);
end if
go
//1st jan 2014
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'acc_main' and column_name = 'IsHide') then
    alter table acc_main add IsHide bit not null default 0
end if
go
//8th Mar 2014
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'acc_main_temp' and column_name = 'IsHide') then
    alter table acc_main_temp add IsHide bit not null default 0
end if
go
//2nd April 2014
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'inv_main_temp' and column_name = 'TallyDate') then
    alter table inv_main_temp add TallyDate date null
end if
go
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'inv_main_temp' and column_name = 'IsDisputed') then
    alter table inv_main_temp add IsDisputed bit not null default 0
end if
go
if not exists(select column_name from syscolumn key join systable where 
    table_name =  'inv_main_temp' and column_name = 'IsIgnored') then
    alter table inv_main_temp add IsIgnored bit not null default 0
end if
go
ALTER TRIGGER "insert_inv_main_temp" before insert order 1 on
DBA.inv_main_temp
referencing new as new_name
for each row
begin
  declare @gw_id numeric(3);
  declare @pr_id unsigned integer;
  declare @trf_db integer;
  declare @trf_cr integer;
  declare @trf integer;
  select gw_id into @gw_id from godown where gw_code = (select gw_code from godown_temp where gw_id = new_name.gw_id);
  select pr_id into @pr_id from product where item = (select item from product_temp where pr_id = new_name.pr_id) and
    brand = (select brand from product_temp where pr_id = new_name.pr_id) and
    model = (select model from product_temp where pr_id = new_name.pr_id);
  if @gw_id is null or @pr_id is null then
    raiserror 99999 'Error in product';
    return
  end if;
  set @trf=new_name.trf_db-new_name.trf_cr;
  if @trf is null or @trf = 0 then
    set @trf_db=0;
    set @trf_cr=0
  elseif @trf < 0 then
    set @trf_cr=-@trf;
    set @trf_db=0
  else
    set @trf_cr=0;
    set @trf_db=@trf
  end if;
  if not exists(select inv_main_id from inv_main where gw_id = @gw_id and pr_id = @pr_id) then
    insert into inv_main(op,db,cr,gw_id,pr_id,trf_db,trf_cr,TallyDate,IsDisputed,IsIgnored) values(
      (new_name.op+new_name.db-new_name.cr),0,0,@gw_id,@pr_id,@trf_db,@trf_cr,new_name.TallyDate,newName.IsDisputed,New_name.IsIgnored)
  else
    update inv_main set op = new_name.op+new_name.db-new_name.cr,
      trf_db = @trf_db,
      trf_cr = @trf_cr where
      pr_id = @pr_id and gw_id = @gw_id
  end if
end
go

