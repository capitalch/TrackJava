//22nd Jun 2017. GST correction
//13/08/2017 GST correction
//20/08/2017 GST in expences

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cash_payment' and column_name = 'hsn') then
    alter table cash_payment add hsn varchar(8) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cash_payment' and column_name = 'party_ref_no') then
    alter table cash_payment add party_ref_no varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cash_payment' and column_name = 'gstin') then
    alter table cash_payment add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cash_payment' and column_name = 'cgst') then
		alter table cash_payment add cgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cash_payment' and column_name = 'sgst') then
		alter table cash_payment add sgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cash_payment' and column_name = 'igst') then
		alter table cash_payment add igst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cheque_payment' and column_name = 'hsn') then
    alter table cheque_payment add hsn varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cheque_payment' and column_name = 'party_ref_no') then
    alter table cheque_payment add party_ref_no varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'cheque_payment' and column_name = 'gstin') then
    alter table cheque_payment add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cheque_payment' and column_name = 'cgst') then
		alter table cheque_payment add cgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cheque_payment' and column_name = 'sgst') then
		alter table cheque_payment add sgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'cheque_payment' and column_name = 'igst') then
		alter table cheque_payment add igst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'bill_memo' and column_name = 'gstin') then
    alter table bill_memo add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
    table_name =  'customer' and column_name = 'gstin') then
    alter table customer add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'bill_memo' and column_name = 'sgst') then
		alter table bill_memo add sgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'bill_memo' and column_name = 'cgst') then
		alter table bill_memo add cgst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'bill_memo' and column_name = 'igst') then
		alter table bill_memo add igst T_money not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'customer' and column_name = 'stateCode') then
		alter table customer add stateCode char(2) default '19'
end if
go


if not exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'sgst') then
		alter table tax add sgst decimal(5,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'cgst') then
		alter table tax add cgst decimal(5,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'igst') then
		alter table tax add igst decimal(5,2) not null default 0
end if
go


if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_setup' and column_name = 'gstin') then
		alter table acc_setup add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_setup' and column_name = 'state') then
		alter table acc_setup add state varchar(30) default 'West Bengal'
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'acc_setup' and column_name = 'stateCode') then
		alter table acc_setup add stateCode char(2) default '19'
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'invoice' and column_name = 'sgst') then
		alter table invoice add sgst numeric(12,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'invoice' and column_name = 'cgst') then
		alter table invoice add cgst numeric(12,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'invoice' and column_name = 'igst') then
		alter table invoice add igst numeric(12,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'product' and column_name = 'uom') then
		alter table product add uom char(2) not null default 'pc'
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'product' and column_name = 'hsn') then
		alter table product add hsn varchar(15) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'details' and column_name = 'gstin') then
		alter table details add gstin varchar(30) null
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'details' and column_name = 'stateCode') then
		alter table details add stateCode char(2) not null default 19
end if
go

if exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'sales_tax') then
		alter table tax modify sales_tax decimal(5,2) not null default 0
end if
go

if exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'cst') then
		alter table tax modify cst decimal(5,2) not null default 0
end if
go

if exists(select column_name from syscolumn key join systable where 
		table_name =  'tax' and column_name = 'serv_tax') then
		alter table tax modify serv_tax decimal(5,2) not null default 0
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'bill_memo_product' and column_name = 'hsn') then
		alter table bill_memo_product add hsn varchar(8) null 
end if
go

if not exists(select column_name from syscolumn key join systable where 
		table_name =  'invoice_product' and column_name = 'hsn') then
		alter table invoice_product add hsn varchar(8) null 
end if
go

if not exists(select table_name from systable where table_name = 'hsnCodes') then
	CREATE TABLE "DBA"."hsnCodes"
(
	"ID"    			unsigned int NOT NULL DEFAULT autoincrement,
	"item"        			char(10) not null,
	"hsnCode"				varchar(8) not null,
	PRIMARY KEY ("ID")
)
end if
go

ALTER PROCEDURE "DBA"."sp_insert_cheque_payment_pb"( inout @cheq_id unsigned integer,in @cheq_no char(20),in @cheq_date date,in @cheq_amt T_money,
inout @ref_no char(20),in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @clear_date date default null,
in @through varchar(90) default null, in @party_ref_no varchar(30) default null, in @gstin varchar(30) default null, 
in @cgst t_money default 0, in @sgst t_money default 0, in @igst t_money default 0, in @hsn varchar(8) default null  ) 
begin
  declare @acc_id_bank unsigned integer;
  declare @acc_id unsigned integer;
  declare @error integer;
  set @acc_id_bank = func_getaccid(@pay_from);
  if @acc_id_bank is null then
    raiserror 17090;
    return
  end if;
  set @acc_id = func_getaccid(@pay_to);
  if @acc_id is null then
    raiserror 17088;
    return
  end if;
  insert into cheque_payment( cheq_no,cheq_date,acc_id,cheq_amt,
    acc_id_bank,ref_no,remarks,through, party_ref_no,hsn,gstin,cgst,sgst,igst ) values( @cheq_no,@cheq_date,@acc_id,
    @cheq_amt,@acc_id_bank,@ref_no,@remarks,@through, @party_ref_no, @hsn, @gstin, @cgst, @sgst, @igst ) ;
  select @@identity,@@error into @cheq_id,@error;
  if @error <> 0 then
    raiserror 17091;
    return
  end if;
  if @clear_date is not null then update bank_recon set clear_date = @clear_date
      where tran_type = 4 and doc_id = @cheq_id and acc_id_bank = @acc_id_bank
  end if
end
go


ALTER PROCEDURE "DBA"."sp_update_cheque_payment_pb"( @cheq_id unsigned integer,@cheq_no char(20),@cheq_date date,
@cheq_amt T_money,@ref_no char(20),@remarks varchar(200),@pay_from char(15),@pay_to char(15),@through varchar(90)= null
, in @party_ref_no varchar(30) default null, in @gstin varchar(30) default null, 
in @cgst t_money default 0, in @sgst t_money default 0, in @igst t_money default 0, in @hsn varchar(8) default null ) 
as
begin
  declare @acc_id_bank unsigned integer
  declare @acc_id unsigned integer
  declare @cheq_id unsigned integer
  select @acc_id_bank = func_getaccid(@pay_from)
  if @acc_id_bank is null
    begin
      raiserror 17090
      return
    end
  select @acc_id = func_getaccid(@pay_to)
  if @acc_id is null
    begin
      raiserror 17088
      return
    end
  update cheque_payment
    set cheq_no = @cheq_no,
    cheq_date = @cheq_date,
    acc_id = @acc_id,
    cheq_amt = @cheq_amt,
    acc_id_bank = @acc_id_bank,
    ref_no = @ref_no,
    remarks = @remarks,
    through = @through,
    party_ref_no = @party_ref_no,
    gstin = @gstin,
    hsn = @hsn,
    cgst = @cgst,
    sgst = @sgst,
    igst = @igst
    where cheq_id = @cheq_id
end
go


ALTER PROCEDURE "DBA"."sp_insert_cash_payment_pb"( inout @cp_id unsigned integer,in @cp_date date,in @cp_amt T_money,inout @ref_no char(20),
in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @through varchar(90) default null, 
in @party_ref_no varchar(30) default null, in @gstin varchar(30) default null, 
in @cgst t_money default 0, in @sgst t_money default 0, in @igst t_money default 0, in @hsn varchar(8) default null  ) 
begin
  declare @cp_acc_id_cash unsigned integer;
  declare @cp_acc_id unsigned integer;
  declare @error integer;
  set @cp_acc_id_cash = func_getaccid(@pay_from);
  if @cp_acc_id_cash is null then
    raiserror 17087;
    return
  end if;
  set @cp_acc_id = func_getaccid(@pay_to);
  if @cp_acc_id is null then
    raiserror 17088;
    return
  end if;
  insert into cash_payment( cp_date,cp_acc_id,cp_amt,
    cp_acc_id_cash,ref_no,remarks,through, party_ref_no,gstin, cgst, sgst,igst,hsn ) values( @cp_date,@cp_acc_id,
    @cp_amt,@cp_acc_id_cash,@ref_no,@remarks,@through, @party_ref_no, @gstin, @cgst, @sgst, @igst,@hsn ) ;
  select @@identity,@@error into @cp_id,@error;
  if @error <> 0 then
    raiserror 17089;
    return
  end if
end
go


ALTER PROCEDURE "DBA"."sp_update_cash_payment_pb"( in @cp_id unsigned integer,in @cp_date date,in @cp_amt T_money,in @ref_no char(20),
in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @through varchar(90)
,in @party_ref_no varchar(30) default null, in @gstin varchar(30) default null
,in @cgst t_money default 0, in @sgst t_money default 0, in @igst t_money default 0, in @hsn varchar(8) default null ) 
on exception resume
begin
  declare @cp_acc_id_cash unsigned integer;
  declare @cp_acc_id unsigned integer;
  set @cp_acc_id_cash = func_getaccid(@pay_from);
  if @cp_acc_id_cash is null then
    raiserror 17087;
    return
  end if;
  set @cp_acc_id = func_getaccid(@pay_to);
  if @cp_acc_id is null then
    raiserror 17088;
    return
  end if;
  update cash_payment
    set cp_date = @cp_date,
    cp_acc_id = @cp_acc_id,
    cp_amt = @cp_amt,
    cp_acc_id_cash = @cp_acc_id_cash,
    ref_no = @ref_no,
    through = @through,
    remarks = @remarks,
    party_ref_no = @party_ref_no,
    gstin = @gstin,
    hsn = @hsn,
    cgst = @cgst,
    sgst = @sgst,
    igst = @igst
    where cp_id = @cp_id
end
go

ALTER PROCEDURE "DBA"."sp_Purchase_creditor"( in sDate date,in eDate date ) 
on exception resume
begin
  --gives total purchase creditor wise
  declare local temporary table #temp(
    acc_id unsigned integer null,
    amt t_money,
    descr varchar(90) null,
    ) on commit delete rows;
  //journal
  insert into #temp( acc_id,amt,descr ) select 0 as acc_id,if jou_db_cr = 'D' then jou_amt else-jou_amt endif as amt,'Journals'+space(90) as descr into #temp
      from journal key join journal_no
      where func_getclass(jou_acc_id) = 'PURCHASE' and jou_date between sDate and eDate;
  insert into #temp( acc_id,amt,descr ) select acc_id,if type = 'P' then inv_amt else-inv_amt endif,func_getaccname(acc_id)
      from invoice where inv_date between sDate and eDate;
  insert into #temp( acc_id,amt,descr ) select acc_id_cr,dc_amt,func_getaccname(acc_id_cr)
      from debit_credit_note where func_getclass(acc_id_db) = 'PURCHASE' and dc_date between sDate and eDate;
  insert into #temp( acc_id,amt,descr ) select acc_id_db,-dc_amt,func_getaccname(acc_id_db)
      from debit_credit_note where func_getclass(acc_id_cr) = 'PURCHASE' and dc_date between sDate and eDate;
  select acc_id,if type = 'P' then inv_amt else-inv_amt endif as amt,if type = 'P' then vat else-vat endif as vat,
    if type = 'P' then cgst else-cgst endif as cgst,
    if type = 'P' then sgst else-sgst endif as sgst,
    if type = 'P' then igst else-igst endif as igst,
    func_getaccname(acc_id) as descr into #temp1
    from invoice where inv_date between sDate and eDate;
  //select* from #temp
  select acc_id,Func_Getacccode(acc_id) as code,max(descr) as Description,
    sum(amt) as amount,
    (select sum(amt) as amountInvoice from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select sum(vat) as InputVat from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select sum(cgst) as cgst from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select sum(sgst) as sgst from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select sum(igst) as igst from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select max(lst) from details where acc_id = #temp.acc_id) as Lst,
    (select max(tan) from details where acc_id = #temp.acc_id) as TAN,
    (select max(cst) from details where acc_id = #temp.acc_id) as cst,
    (select max(pan) from details where acc_id = #temp.acc_id) as pan,
    (select max(gstin) from details where acc_id = #temp.acc_id) as gstin
    from #temp group by acc_id order by code asc
end
go

ALTER PROCEDURE "DBA"."sp_update_details_pb"( in @acc_id unsigned integer,@details_id unsigned integer,in @addr1 varchar(40),in @addr2 varchar(40),in @pin char(15),in @phone varchar(30),in @fax varchar(30),in @email varchar(40),in @cst varchar(20),in @lst varchar(20),in @remarks varchar(200),in @inc_tax varchar(30),in @category char(1),in @person_name varchar(60),in @acc_code char(15),in @acc_name varchar(40),in @tan numeric(11),in @gstin varchar(30) ) 
begin
  //first update acc_main
  update acc_main set acc_code = @acc_code,acc_name = @acc_name where acc_id = @acc_id;
  if @details_id is null then --new entry to do
    if(@addr1 is null or trim(@addr1) = '') and(@addr2 is null or trim(@addr2) = '')
      and(@pin is null or trim(@pin) = '') and(@phone is null or trim(@phone) = '')
      and(@fax is null or trim(@fax) = '') and(@email is null or trim(@email) = '')
      and(@cst is null or trim(@cst) = '') and(@lst is null or trim(@lst) = '')
      and(@remarks is null or trim(@remarks) = '')
      and(@inc_tax is null or trim(@inc_tax) = '')
      and(@person_name is null or trim(@person_name) = '')
      and(@gstin is null or trim(@gstin) = '')
      and(@tan is null or @tan = 0) then
      return
    end if;
    insert into details( addr1,addr2,pin,phone,fax,email,
      cst,lst,remarks,inc_tax,category,acc_id,person_name,tan,gstin ) values( @addr1,@addr2,@pin,@phone,@fax,@email,
      @cst,@lst,@remarks,@inc_tax,@category,@acc_id,@person_name,@tan, @gstin) 
  else -- already present so update
    if(@addr1 is null or trim(@addr1) = '') and(@addr2 is null or trim(@addr2) = '')
      and(@pin is null or trim(@pin) = '') and(@phone is null or trim(@phone) = '')
      and(@fax is null or trim(@fax) = '') and(@email is null or trim(@email) = '')
      and(@cst is null or trim(@cst) = '') and(@lst is null or trim(@lst) = '')
      and(@remarks is null or trim(@remarks) = '')
      and(@inc_tax is null or trim(@inc_tax) = '')
      and(@person_name is null or trim(@person_name) = '')
      and(@gstin is null or trim(@gstin) = '')
      and(@tan is null or @tan = 0) then
      delete from details where details_id = @details_id;
      return
    end if;
    update details set addr1 = @addr1,
      addr2 = @addr2,pin = @pin,phone = @phone,
      fax = @fax,email = @email,cst = @cst,lst = @lst,
      remarks = @remarks,inc_tax = @inc_tax,category = @category,person_name = @person_name,tan = @tan, gstin=@gstin
      where details_id = @details_id
  end if
end
go

ALTER PROCEDURE "DBA"."sp_insert_bill_memo_cust_pb"( out @bill_memo_id unsigned integer,out @cust_id unsigned integer,
in @ref_no char(30),in @date date,in @form char(1),in @total_amt T_money,in @sale_tax_sale_id unsigned integer,in @acc_id unsigned integer,
in @descr varchar(200),in @challan_no char(10),in @discount T_money,in @credit_limit smallint,in @tax T_money,in @other_charges T_money,
in @type char(1),in @surcharge T_money,in @bill_memo char(1),in @addr1 varchar(70),in @addr2 varchar(60),in @name varchar(55),
in @phone varchar(30),in @pin varchar(10),in @pos_id integer,in @email varchar(30),in @sgst decimal(12,2),
in @cgst decimal(12,2),in @vat decimal(12,2),in @tot decimal(12,2),in @roundoff decimal(12,2),in @igst decimal(12,2),in @sale_text varchar(60),
in @mobile varchar(40),in @dob date,in @dom date, in @gstin varchar(30) default null ) 
begin
  declare @rowcount integer;
  declare @error integer;
  --insert into customer table
  if @name is not null and trim(@name) <> '' then
    insert into customer( name,addr1,addr2,phone,pin,acc_id,email,mobile,dob,dom ) values( @name,@addr1,
      @addr2,@phone,@pin,@acc_id,@email,@mobile,@dob,@dom ) ;
    select @@identity,@@error into @cust_id,@error from dummy;
    if @@error <> 0 then
      raiserror 17079,'error';
      return
    end if end if;
  if @pos_id = 0 then set @pos_id = null
  end if; -- insert into bill_memo table
  insert into bill_memo( ref_no,"date",form,total_amt,sale_tax_sale_id,
    acc_id,descr,challan_no,discount,credit_limit,tax,other_charges,type,
    surcharge,bill_memo,cust_id,inv,pos_id,sgst,tot,cgst,vat,roundoff,igst,sale_text, gstin ) values( @ref_no,@date,@form,@total_amt,
    @sale_tax_sale_id,@acc_id,@descr,@challan_no,@discount,@credit_limit,@tax,
    @other_charges,@type,@surcharge,@bill_memo,@cust_id,'N',@pos_id,@sgst,@tot,@cgst,@vat,@roundoff,@igst,@sale_text,@gstin ) ;
  select @@rowcount,@@identity,@@error into @rowcount,@bill_memo_id,@error
    from dummy;
  if @@rowcount = 0 or @@error <> 0 then raiserror 17080
  end if
end
go

ALTER PROCEDURE "DBA"."sp_update_bill_memo_cust_pb"( in @bill_memo_id unsigned integer,in @cust_id unsigned integer,in @ref_no char(30),
in @date date,in @form char(1),in @total_amt T_money,in @sale_tax_sale_id unsigned integer,in @acc_id unsigned integer,in @descr varchar(200),
in @challan_no char(10),in @discount T_money,in @credit_limit smallint,in @tax T_money,in @other_charges T_money,in @type char(1),
in @surcharge T_money,in @bill_memo char(1),in @addr1 varchar(70),in @addr2 varchar(60),in @name varchar(55),in @phone varchar(30),
in @pin varchar(10),in @pos_id unsigned integer,in @sgst T_money,in @cgst T_money,in @vat T_money,in @tot T_money,in @roundoff T_money,
in @igst T_money,in @sale_text varchar(60),in @mobile varchar(40),in @dob date,in @dom date, in @gstin varchar(30) default null ) 
begin
  declare @rowcount integer;
  declare @error integer;
  --declare @identity unsigned integer
  --update customer table
  call func_checkauditlockdate(@sale_tax_sale_id,@acc_id,@date);
  if(@@error <> 0) then return end if;
  if @cust_id is null then
    if @name is not null then --/add the customer
      insert into customer( name,addr1,addr2,pin,phone,acc_id,mobile,dob,dom ) 
        values( @name,@addr1,@addr2,@pin,@phone,@acc_id,@mobile,@dob,@dom ) ;
      set @cust_id = @@identity
    end if
  else update customer set name = @name,addr1 = @addr1,addr2 = @addr2,pin = @pin,
      phone = @phone,mobile = @mobile where cust_id = @cust_id;
    if @@error <> 0 then raiserror 99999 'Update error in customer table';
      return
    end if end if; --update bill_memo_table
  if @pos_id = 0 then set @pos_id = null
  end if;
  update bill_memo
    set ref_no = @ref_no,"date" = @date,form = @form,total_amt = @total_amt,
    sale_tax_sale_id = @sale_tax_sale_id,acc_id = @acc_id,descr = @descr,
    challan_no = @challan_no,discount = @discount,credit_limit = @credit_limit,
    tax = @tax,other_charges = @other_charges,type = @type,surcharge = @surcharge,
    bill_memo = @bill_memo,cust_id = @cust_id,pos_id = @pos_id,sgst = @sgst,cgst = @cgst,
    vat = @vat,roundoff = @roundoff,tot = @tot,igst = @igst,sale_text = @sale_text, gstin = @gstin where bill_memo_id = @bill_memo_id;
  if @@error <> 0 then
    raiserror 17102;
    return
  end if
end
go

ALTER TRIGGER "insert_before_bill" before insert order 1 on
DBA.bill_memo
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  declare @prefix char(6);
  declare @suffix char(6);
  declare @lastno unsigned integer;
  declare @scheme_lastno unsigned integer;
  declare @scheme_prefix char(6);
  declare @scheme_suffix char(6);
  declare @scheme_billing char(1);
  declare @acc_name varchar(40);
  call func_checkauditlockdate(new_name.sale_tax_sale_id,new_name.acc_id,new_name."date");
  if(@@error <> 0) then return end if;
  -- sales or sales return
  if func_isvaliddate(new_name."date") = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if new_name.form is null then set new_name.form = 'N'
  end if;
  if new_name.discount is null then set new_name.discount = 0
  end if;
  if new_name.credit_limit is null then set new_name.credit_limit = 0
  end if;
  if new_name.tax is null then set new_name.tax = 0
  end if;
  if new_name.other_charges is null then set new_name.other_charges = 0
  end if;
  if new_name.surcharge is null then set new_name.surcharge = 0
  end if;
  if new_name.tot is null then set new_name.tot = 0
  end if;
  if new_name.sgst is null then set new_name.sgst = 0
  end if;
  if new_name.vat is null then set new_name.vat = 0
  end if;
  if new_name.cgst is null then set new_name.cgst = 0
  end if;
  if new_name.roundoff is null then set new_name.roundoff = 0
  end if;
  if new_name.igst is null then set new_name.igst = 0
  end if;
  if new_name.mpreserve is null then set new_name.mpreserve = 'N'
  end if;
  select func_getclass(new_name.acc_id) into @class;
  set new_name.inv = 'N';
  //update for last bill/memo no etc
  //update cashbook_summery or bank_recon
  //get ref_no based on acc_id, in most cases sundry debtors
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    set new_name.ref_no = func_getrefno(new_name.acc_id)
  end if;
  //for pos terminals ref_no
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    if new_name.pos_id is not null and new_name.pos_id <> 0 then
      select scheme_billing,trim(pos_prefix),trim(pos_suffix),pos_lastno+1,scheme_lastno+1,
        scheme_prefix,scheme_suffix into @scheme_billing,@prefix,@suffix,@lastno,@scheme_lastno,
        @scheme_prefix,@scheme_suffix from pointofsale key join pos_scheme
        where pos_id = new_name.pos_id;
      if @scheme_billing = 'N' then
        //use  prefix,suffix,lastno from pointofsale table
        if @prefix is null or @prefix = '' then set @prefix = ''
        else set @prefix = @prefix+'/'
        end if;
        if @suffix is null or @suffix = '' then set @suffix = ''
        else set @suffix = '/'+@suffix
        end if;
        if @lastno is null then set @lastno = 1
        end if;
        set new_name.ref_no = @prefix+trim(string(@lastno))+@suffix;
        update pointofsale set pos_lastno = @lastno where pos_id = new_name.pos_id
      elseif @scheme_billing = 'Y' then //use prefix,suffix,lastno from pos_scheme table
        if @scheme_prefix is null or @scheme_prefix = '' then set @scheme_prefix = ''
        else set @scheme_prefix = @scheme_prefix+'/'
        end if;
        if @scheme_suffix is null or @scheme_suffix = '' then set @scheme_suffix = ''
        else set @scheme_suffix = '/'+@scheme_suffix
        end if;
        if @scheme_lastno is null then set @scheme_lastno = 1
        end if;
        set new_name.ref_no = @scheme_prefix+trim(string(@scheme_lastno))+@scheme_suffix;
        update pos_scheme set scheme_lastno = @scheme_lastno
          where scheme_id = (select scheme_id from pointofsale
            where pos_id = new_name.pos_id)
      else
        set new_name.ref_no = null
      end if end if end if;
  //end if;
  //sets the last bill /memo no based on sales code selected
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    set new_name.ref_no = func_getlastrefno(new_name.acc_id,new_name.sale_tax_sale_id,new_name.type)
  end if;
  if @class = 'CASH' then //cash
    set new_name.bill_memo = 'M';
    set new_name.adj_amt = new_name.total_amt;
    if new_name.type = 'S' then //sales so cash debit
      select func_addcashbook(new_name.acc_id,new_name."date",new_name.total_amt,0)
        //sales return so cash credit
        into @lret
    else select func_addcashbook(new_name.acc_id,new_name."date",0,new_name.total_amt)
        into @lret //bank
    end if
  elseif @class = 'BANK' then
    set new_name.bill_memo = 'M';
    set new_name.adj_amt = new_name.total_amt;
    //bank_recon credit.If there is entry in bill_memo_cheque_details table
    //then following entry is deleted from bank_recon table
    //if sales
    if new_name.type = 'S' then
      //insert into bank_recon as cash entry which is cleared
      select f_insertintobankbook(new_name.acc_id,new_name."date",
        new_name.total_amt,0,new_name.ref_no,new_name.descr,null,'PE',
        new_name.bill_memo_id,2,null,new_name.sale_tax_sale_id,1)
        into @lret //sales return,take out money from bank_recon
    else select f_insertintobankbook(new_name.acc_id,new_name."date",
        0,new_name.total_amt,new_name.ref_no,new_name.descr,null,'PE',
        new_name.bill_memo_id,2,null,new_name.sale_tax_sale_id,1)
        into @lret
    end if //@class is debtor
  else //bank recon is also updated using bill_memo_cheque_details table
    // credit sales or credit sales return
    set new_name.bill_memo = 'B';
    set new_name.adj_amt = 0.0;
    //if this debtor is in auto_subledger table then create a subledger as ref_no -->acc_code and customer name --> acc_name
    if exists(select auto_id from auto_subledger where acc_id = new_name.acc_id) then
      if exists(select acc_code from acc_main where acc_code = new_name.ref_no) then
        raiserror 17124 'Autocreation of Subledger with the Account Code as Ref_no failed, since this ref_no already exists as account code.';
        return
      else //ok to create subledger
        if new_name.cust_id is null then
          set @acc_name = 'Auto Subledger Debtor'
        else
          set @acc_name = (select trim(name) from customer where cust_id = new_name.cust_id);
          if @acc_name is null then
            set @acc_name = 'Auto Subledger Debtor'
          end if end if;
        insert into acc_main( acc_code,acc_name,acc_type,acc_class,acc_parent,acc_root,acc_opbal,acc_db,acc_cr,acc_primary,acc_sibling ) 
          values( new_name.ref_no,@acc_name,'A',@class,new_name.acc_id,'S',0,0,0,'N',0 ) ;
        //set the new subledger account
        set new_name.acc_id = @@identity
      end if end if end if;
  //for Sales journal
  if @class is null then
    if new_name.ref_no is null or trim(new_name.ref_no) = '' then
      set new_name.ref_no = 'TEMP'
    end if; //temp is used because ref_no does not allow null values
    set new_name.bill_memo = 'J'
  end if;
  //default
  if new_name.type = 'S' then //sales
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.bill_memo_id,new_name.total_amt,2,new_name.acc_id,new_name.sale_tax_sale_id ) 
  else // sales return
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.bill_memo_id,new_name.total_amt,2,new_name.sale_tax_sale_id,new_name.acc_id ) 
  end if;
  if new_name.bill_memo = 'M' then // memo so adj_amt = total_amt
    if new_name.adj_amt = 0 then set new_name.adj_amt = new_name.total_amt
    end if
  end if
end
go

ALTER TRIGGER "update_before_bill" before update of acc_id,"date",sale_tax_sale_id,Total_amt,
type order 2 on
DBA.bill_memo
referencing old as old_name new as new_name
for each row
begin
  declare @cheq_amt T_money;
  declare @lret unsigned integer;
  declare @class char(10);
  if func_isvaliddate(new_name."date") = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if new_name.acc_id is null and new_name.bill_memo <> 'J' then
    raiserror 17122 'Account Code cannot be null';
    return
  end if;
  //record the modifications in bill
  if new_name.total_amt <> old_name.total_amt and(old_name.mold is null or old_name.mold = 0) then
    set new_name.mold = old_name.total_amt
  end if;
  //preserve feature
  //if new_name.total_amt = old_name.total_amt then set new_name.mpreserve='N'
  //end if;
  if new_name.mpreserve = 'Y' and new_name.total_amt <> old_name.total_amt then
    if not exists(select bill_memo_id from billMemo where bill_memo_id = old_name.bill_memo_id) then
      insert into billMemo( bill_memo_id,acc_id,ref_no,descr,challan_no,"date",sale_tax_sale_id,discount,cust_id,tax,other_charges,total_amt,type,surcharge,bill_memo,pos_id,tot,vat,cgst,sgst,roundoff,igst,mdatetime,mold ) 
        values( old_name.bill_memo_id,old_name.acc_id,old_name.ref_no,old_name.descr,old_name.challan_no,old_name."date",old_name.sale_tax_sale_id,old_name.discount,old_name.cust_id,old_name.tax,old_name.other_charges,old_name.total_amt,old_name.type,old_name.surcharge,old_name.bill_memo,old_name.pos_id,old_name.tot,old_name.vat,old_name.cgst,old_name.sgst,old_name.roundoff,old_name.igst,old_name.mdatetime,old_name.mold ) ;
      insert into billMemoProduct( bill_product_id,bill_memo_id,inv_main_id,qty,price,gross_profit,sale_warranty,discount,actual_price,spec,actual_profit,mold ) 
        select bill_product_id,bill_memo_id,inv_main_id,qty,price,gross_profit,sale_warranty,discount,actual_price,spec,actual_profit,mold
          from bill_memo_product where bill_memo_id = old_name.bill_memo_id
    end if end if;
  select sum(cheq_amt)
    into @cheq_amt from bill_memo_cheque_details
    where bill_memo_id = new_name.bill_memo_id;
  if @cheq_amt is null then set @cheq_amt = 0
  end if; //class does not change during update
  select func_getclass(old_name.acc_id) into @class;
  //set the last bill /memo no
  if new_name.acc_id <> old_name.acc_id then
    if new_name.ref_no is null or trim(new_name.ref_no) = '' then
      set new_name.ref_no = func_getlastrefno(new_name.acc_id)
    end if end if;
  if new_name.bill_memo is null then
    if @class in( 'BANK','CASH' ) then
      set new_name.bill_memo = 'M'
    elseif @class is null then
      set new_name.bill_memo = 'J'
    elseif @class in( 'DEBTOR','CREDITOR' ) then
      set new_name.bill_memo = 'B'
    else
      raiserror 99999 'There is error in Account Code';
      return
    end if end if;
  //sales
  if new_name.type = 'S' then
    //acc_tran
    update acc_tran
      set amt = new_name.total_amt,
      acc_id_db = new_name.acc_id,
      acc_id_cr = new_name.sale_tax_sale_id
      where acc_tran.doc_id = old_name.bill_memo_id
      and tran_type = 2;
    //cash and bank
    if @class = 'CASH' then
      if(old_name."date" <> new_name."date") or(old_name.total_amt <> new_name.total_amt) then
        select func_addcashbook(old_name.acc_id,old_name."date",-old_name.total_amt,0,-@cheq_amt,0) into @lret;
        select func_addcashbook(new_name.acc_id,new_name."date",new_name.total_amt,0,@cheq_amt,0)
          into @lret
      end if
    elseif @class = 'BANK' then
      if old_name.total_amt <> new_name.total_amt then
        //update bank_recon
        update bank_recon set credit_amt = new_name.total_amt
          where tran_type = 2 and doc_id = old_name.bill_memo_id
      end if //sales return
    end if //acc_tran
  else update acc_tran
      set amt = new_name.total_amt,
      acc_id_db = new_name.sale_tax_sale_id,
      acc_id_cr = new_name.acc_id
      where acc_tran.doc_id = old_name.bill_memo_id
      and tran_type = 2;
    //cash bank
    if @class = 'CASH' then
      if(old_name."date" <> new_name."date") or(old_name.total_amt <> new_name.total_amt) then
        select func_addcashbook(old_name.acc_id,old_name."date",0,-old_name.total_amt,0,-@cheq_amt) into @lret;
        select func_addcashbook(new_name.acc_id,new_name."date",0,new_name.total_amt,0,@cheq_amt)
          into @lret
      end if
    elseif @class = 'BANK' then
      if old_name.total_amt <> new_name.total_amt then
        //update bank_recon
        update bank_recon set debit_amt = new_name.total_amt
          where tran_type = 2 and doc_id = old_name.bill_memo_id
      end if end if end if;
  if @class is null and old_name."date" <> new_name."date" then
    insert into bm_journal_temp
      select bv_id,bill_memo_id,acc_id,bv_dbcr,bv_amt,
        bv_refno,bv_chequeno,bv_bank,bv_branch
        from bill_memo_journal
        where bill_memo_id = old_name.bill_memo_id;
    delete from bill_memo_journal
      where bill_memo_id = old_name.bill_memo_id
  end if;
  //update for change in sale code for adjustment in bank_recon
  if(old_name.sale_tax_sale_id <> new_name.sale_tax_sale_id) and @class = 'BANK' then
    update bank_recon set acc_id = new_name.sale_tax_sale_id
      where doc_id = any(select bcd_id from bill_memo_cheque_details
        where bill_memo_id = old_name.bill_memo_id) and tran_type = 14
  end if
end
go

ALTER PROCEDURE "DBA"."sp_insert_pointofsale_pb"( out @bill_product_id unsigned integer,inout @inv_main_id unsigned integer,in @bill_memo_id unsigned integer,in @code unsigned integer,in @qty smallint,in @price T_money,in @spec varchar(200),@hsn varchar(8) ) 
begin
  declare @pr_id unsigned integer;
  if @inv_main_id is null or @inv_main_id = 0 then
    if @code is null or @code = 0 then
      raiserror 17113 'Product not found';
      return
    end if;
    select pr_id into @pr_id from product where code = @code;
    if @pr_id is null or @pr_id = 0 then
      raiserror 17113 'Product not found';
      return
    end if;
    select inv_main_id into @inv_main_id from inv_main
      where pr_id = @pr_id;
    if @inv_main_id is null then
      insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,
        op_price ) values( 0,0,0,@pr_id,0,0,1,0 ) ;
      set @inv_main_id = @@identity
    end if end if;
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price,spec,hsn ) 
    values( @bill_memo_id,@inv_main_id,@qty,@price,@spec,@hsn ) ;
  set @bill_product_id = @@identity
end
go

ALTER PROCEDURE "DBA"."sp_insert_bill_memo_product_pb"( inout @bill_product_id unsigned integer,inout @inv_main_id unsigned integer,in @gw_code char(15),in @item char(10),in @brand char(20),in @model char(20),in @spec varchar(90),in @bill_memo_id unsigned integer,in @qty smallint,in @price T_money,in @sale_warranty tinyint,in @discount T_money,in @actual_price T_money, in @hsn varchar(8) ) 
begin
  declare @rowcount unsigned integer;
  select inv_main_id into @inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model;
  if @inv_main_id is null or @inv_main_id = 0 then
    raiserror 17113 'This product does not exist';
    return
  end if;
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price,gross_profit,
    sale_warranty,discount,actual_price,spec,hsn ) 
    values( @bill_memo_id,@inv_main_id,@qty,@price,0,@sale_warranty,@discount,
    @actual_price,@spec,@hsn ) ;
  select @@identity,@@rowcount into @bill_product_id,@rowcount;
  if @@error <> 0 or @rowcount = 0 then
    set @bill_product_id = null;
    raiserror 17081 'Error';
    return
  end if
end
go

ALTER PROCEDURE "DBA"."sp_update_bill_memo_product_pb"( @inv_main_id unsigned integer output,@bill_product_id unsigned integer,@gw_code char(15),@item char(10),@brand char(20),@model char(20),@spec varchar(90),@bill_memo_id unsigned integer,@qty smallint,@price T_money,@sale_warranty tinyint,@discount T_money,@actual_price T_money, @hsn varchar(8) ) 
as
begin
  select @inv_main_id = inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model
  if @inv_main_id is null or @inv_main_id = 0
    begin
      raiserror 17103
      return
    end
  update bill_memo_product set bill_memo_id = @bill_memo_id,
    inv_main_id = @inv_main_id,
    qty = @qty,
    price = @price,
    gross_profit = 0,
    sale_warranty = @sale_warranty,
    discount = @discount,
    actual_price = @actual_price,
    hsn=@hsn,
    spec = @spec where bill_product_id = @bill_product_id
end
go

ALTER PROCEDURE "DBA"."sp_insert_invoice_product_pb"( inout @invoice_product_id unsigned integer,inout @inv_main_id unsigned integer,in @inv_id unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @gw_code char(15),in @qty smallint,in @price T_money,in @discount T_money,in @actual_price T_money,in @spl_disc T_money,in @purchase_warranty tinyint, in @hsn varchar(8) ) 
begin
  declare @rowcount unsigned integer;
  declare @identity unsigned integer;
  declare @error integer;
  select distinct inv_main_id into @inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model;
  if @inv_main_id is null then
    raiserror 17099 'Error';
    return
  end if;
  insert into invoice_product( inv_id,inv_main_id,qty,price,discount,
    actual_price,spl_disc,purchase_warranty, hsn ) 
    values( @inv_id,@inv_main_id,@qty,@price,@discount,@actual_price,
    @spl_disc,@purchase_warranty, @hsn ) ;
  select @@identity,@@rowcount,@@error into @identity,@rowcount,@error;
  if @rowcount = 0 or @rowcount is null or @error <> 0 then
    raiserror 17082 'error';
    return
  end if;
  set @invoice_product_id = @identity
end
go

ALTER PROCEDURE "DBA"."sp_update_invoice_product_pb"( in @invoice_product_id unsigned integer,inout @inv_main_id unsigned integer,in @inv_id unsigned integer,in @item char(10),in @brand char(15),in @model char(15),in @gw_code char(15),in @qty smallint,in @price T_money,in @discount T_money,in @actual_price T_money,in @spl_disc T_money,in @purchase_warranty tinyint, in @hsn varchar(8) ) 
on exception resume
begin
  declare @sale_tax_purchase_id integer;declare @acc_id integer;declare @inv_date date;
  select sale_tax_purchase_id,acc_id,inv_date into @sale_tax_purchase_id,@acc_id,@inv_date
    from invoice where inv_id = @inv_id;
  call func_checkauditlockdate(@sale_tax_purchase_id,@acc_id,@inv_date);
  if(@@error <> 0) then return end if;
  select distinct inv_main_id into @inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model;
  if @inv_main_id is null then
    raiserror 17099;
    return
  end if;
  update invoice_product set inv_main_id = @inv_main_id,
    qty = @qty,price = @price,discount = @discount,
    actual_price = @actual_price,spl_disc = @spl_disc,
    purchase_warranty = @purchase_warranty,
    hsn = @hsn
    where invoice_product_id = @invoice_product_id
end
go

ALTER PROCEDURE "DBA"."remoteinsert"( @rec_no char(30),@rec_amt numeric(12,2),@srec_date char(10),@rectype char(1),@job_no char(10),@ptype char(1) ) 
begin
--GST applicable in India w.e.f 1st July 2017
--Taken care of GST rates 18% and 28%
  declare @date date;
  declare @gst18 varchar(15);
  declare @gst28 varchar(15);
  set @date = "date"(@srec_date);
  if func_isvaliddate(@date) = 'N' then
    raiserror 17095 'Invalid date';
    return
  end if;
  if @rectype = 'Y' then
    set @rectype = 'S'
  else set @rectype = 'R'
  end if;
  if @ptype = 'I' then //insert
    select acc_id into @gst18 from acc_main where acc_code = 'SaleGST18%';
    select acc_id into @gst28 from acc_main where acc_code = 'SaleGST28%';
    if @gst18 is not null then
        insert into bill_memo( type,bill_memo,ref_no,"date",sale_tax_sale_id,
          total_amt,acc_id,descr,mpreserve ) 
          values( @rectype,'M',@rec_no,@date,@gst18,@rec_amt,(select default_cash_id
            from acc_setup),'Job No:'+@job_no+'From Service+ package','N' );
    end if;
    if @gst28 is not null then
        insert into bill_memo( type,bill_memo,ref_no,"date",sale_tax_sale_id,
          total_amt,acc_id,descr,mpreserve ) 
          values( @rectype,'M',@rec_no + 'A',@date,@gst28,0,(select default_cash_id
            from acc_setup),'Job No:'+@job_no+'From Service+ package','N' ) 
    end if
    
  else
    delete from bill_memo where ref_no = @rec_no
  end if
end
go