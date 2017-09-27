--
-- This command file reloads a database that was unloaded using "dbunload".
--
-- (Version:  11.0.1.2376)
--


-- Database file: c:\progra~1\capital\acc\database\capi2013.db
-- Database CHAR collation: 1252LATIN1, NCHAR collation: UCA
-- Connection Character Set: windows-1252
--
-- CREATE DATABASE command: CREATE DATABASE 'c:\\progra~1\\capital\\acc\\database\\capi2013.db' LOG ON 'c:\\progra~1\\capital\\acc\\database\\capi2013.log' CASE IGNORE ACCENT IGNORE PAGE SIZE 4096 COLLATION '1252LATIN1' NCHAR COLLATION 'UCA' BLANK PADDING ON JCONNECT ON CHECKSUM OFF
--


SET OPTION date_order          = 'YMD'
go

SET OPTION PUBLIC.preserve_source_format = 'OFF'
go

SET TEMPORARY OPTION tsql_outer_joins = 'ON'
go


-------------------------------------------------
--   Create dbspaces
-------------------------------------------------


-------------------------------------------------
--   Create login policies
-------------------------------------------------


-------------------------------------------------
--   Create users
-------------------------------------------------

GRANT CONNECT,DBA,RESOURCE TO "DBA" IDENTIFIED BY sql
go

GRANT CONNECT,DBA,GROUP,RESOURCE TO "dbo"
go


-------------------------------------------------
--   Create user types
-------------------------------------------------

CREATE DOMAIN "T_money" decimal(12,2) NOT NULL DEFAULT 0
go


-------------------------------------------------
--   Create group memberships
-------------------------------------------------


-------------------------------------------------
--   Create remote servers
-------------------------------------------------

CREATE SERVER "acc" CLASS 'asaodbc' USING 'acc' 
go

create temporary procedure sa_unload_define_capability( 
    srvname char(128), capname char(128), onoff char(3) ) 
begin 
  execute immediate 'alter server "' || srvname || '" ' || 
      'CAPABILITY ''' || capname || ''' '  || onoff; 
 exception when others then 
end
go

call sa_unload_define_capability( 'acc', 'Alter table with add', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Alter table with drop', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Owner supported', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Primary key requires index', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Create table constraints', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Truncate table', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Create index', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Create unique index', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Syscapability system table initialized', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in group by', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in comparison', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in exist', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in IN', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery correlated', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in select list', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Subquery in update', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Order by', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Order by expressions', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Order by column not in select list', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Order by allowed in update', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Joins', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Outer joins', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Full outer joins', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Multiple outer joins', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Logical operators in outer join', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Outer joins mixed with normal joins', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ANSI join syntax', 'ON' )
go

call sa_unload_define_capability( 'acc', 'TSQL join syntax', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'ODBC outer join syntax', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Unrestricted ANSI ON', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Group by', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Group by ALL', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Aggregates', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Aggregates with column name', 'ON' )
go

call sa_unload_define_capability( 'acc', 'And', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Or', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Like', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Like - TSQL', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Distinct', 'ON' )
go

call sa_unload_define_capability( 'acc', 'In', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Case expression', 'ON' )
go

call sa_unload_define_capability( 'acc', 'For update clause required', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Expressions, minimum', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Expressions, ANSI', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Expressions, TSQL', 'ON' )
go

call sa_unload_define_capability( 'acc', 'update/delete allow multiple tables', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Insert select', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Insert select with order by', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Holdlock', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Case sensitivity', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Insert', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Update', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Delete', 'ON' )
go

call sa_unload_define_capability( 'acc', 'List', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ASE function names', 'ON' )
go

call sa_unload_define_capability( 'acc', 'DB2 function names', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Textpointers', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Positioned updates via rowid', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Position updates and deletes', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Update table list', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Union', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Union all', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Having', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Having without group by', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Current constants', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Identity, ASE', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Identity, ASA', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Default', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ODBC function escapes', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Correlation names', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Derived tables', 'ON' )
go

call sa_unload_define_capability( 'acc', 'Correlation names in update', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Database names can be quoted', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Reserved 89', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Reserved 90', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'Reserved 91', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'ANSI Concatenate', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'TSQL Concatenate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'today', 'ON' )
go

call sa_unload_define_capability( 'acc', 'substr', 'ON' )
go

call sa_unload_define_capability( 'acc', 'substring', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ifnull', 'ON' )
go

call sa_unload_define_capability( 'acc', 'argn', 'ON' )
go

call sa_unload_define_capability( 'acc', 'days', 'ON' )
go

call sa_unload_define_capability( 'acc', 'second', 'ON' )
go

call sa_unload_define_capability( 'acc', 'minute', 'ON' )
go

call sa_unload_define_capability( 'acc', 'hour', 'ON' )
go

call sa_unload_define_capability( 'acc', 'day', 'ON' )
go

call sa_unload_define_capability( 'acc', 'month', 'ON' )
go

call sa_unload_define_capability( 'acc', 'hours', 'ON' )
go

call sa_unload_define_capability( 'acc', 'minutes', 'ON' )
go

call sa_unload_define_capability( 'acc', 'seconds', 'ON' )
go

call sa_unload_define_capability( 'acc', 'number', 'ON' )
go

call sa_unload_define_capability( 'acc', 'identity', 'ON' )
go

call sa_unload_define_capability( 'acc', 'now', 'ON' )
go

call sa_unload_define_capability( 'acc', 'remainder', 'ON' )
go

call sa_unload_define_capability( 'acc', 'mod', 'ON' )
go

call sa_unload_define_capability( 'acc', 'weeks', 'ON' )
go

call sa_unload_define_capability( 'acc', 'datetime', 'ON' )
go

call sa_unload_define_capability( 'acc', 'date', 'ON' )
go

call sa_unload_define_capability( 'acc', 'explanation', 'ON' )
go

call sa_unload_define_capability( 'acc', 'plan', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ulplan', 'ON' )
go

call sa_unload_define_capability( 'acc', 'traceback', 'ON' )
go

call sa_unload_define_capability( 'acc', 'atn2', 'ON' )
go

call sa_unload_define_capability( 'acc', 'char', 'ON' )
go

call sa_unload_define_capability( 'acc', 'estimate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'estimate-source', 'ON' )
go

call sa_unload_define_capability( 'acc', 'index_estimate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'experience_estimate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'tsequal', 'ON' )
go

call sa_unload_define_capability( 'acc', 'dayname', 'ON' )
go

call sa_unload_define_capability( 'acc', 'monthname', 'ON' )
go

call sa_unload_define_capability( 'acc', 'quarter', 'ON' )
go

call sa_unload_define_capability( 'acc', 'truncate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'datalength', 'ON' )
go

call sa_unload_define_capability( 'acc', 'db_id', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'db_name', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'property_name', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'property_description', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'property_number', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'next_connection', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'next_database', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'property', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'connection_property', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'db_property', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'textptr', 'ON' )
go

call sa_unload_define_capability( 'acc', 'rowid', 'ON' )
go

call sa_unload_define_capability( 'acc', 'user id', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'user name', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'suser id', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'suser name', 'OFF' )
go

call sa_unload_define_capability( 'acc', 'cot', 'ON' )
go

call sa_unload_define_capability( 'acc', 'degrees', 'ON' )
go

call sa_unload_define_capability( 'acc', 'exp', 'ON' )
go

call sa_unload_define_capability( 'acc', 'floor', 'ON' )
go

call sa_unload_define_capability( 'acc', 'log', 'ON' )
go

call sa_unload_define_capability( 'acc', 'log10', 'ON' )
go

call sa_unload_define_capability( 'acc', 'pi', 'ON' )
go

call sa_unload_define_capability( 'acc', 'power', 'ON' )
go

call sa_unload_define_capability( 'acc', 'radians', 'ON' )
go

call sa_unload_define_capability( 'acc', 'rand', 'ON' )
go

call sa_unload_define_capability( 'acc', 'round', 'ON' )
go

call sa_unload_define_capability( 'acc', 'sign', 'ON' )
go

call sa_unload_define_capability( 'acc', 'sin', 'ON' )
go

call sa_unload_define_capability( 'acc', 'sqrt', 'ON' )
go

call sa_unload_define_capability( 'acc', 'tan', 'ON' )
go

call sa_unload_define_capability( 'acc', 'datepart', 'ON' )
go

call sa_unload_define_capability( 'acc', 'datadiff', 'ON' )
go

call sa_unload_define_capability( 'acc', 'datename', 'ON' )
go

call sa_unload_define_capability( 'acc', 'dateadd', 'ON' )
go

call sa_unload_define_capability( 'acc', 'hextoint', 'ON' )
go

call sa_unload_define_capability( 'acc', 'inttohex', 'ON' )
go

call sa_unload_define_capability( 'acc', 'convert', 'ON' )
go

call sa_unload_define_capability( 'acc', 'getdate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'pattern', 'ON' )
go

call sa_unload_define_capability( 'acc', 'byte length', 'ON' )
go

call sa_unload_define_capability( 'acc', 'byte substr', 'ON' )
go

call sa_unload_define_capability( 'acc', 'insertstr', 'ON' )
go

call sa_unload_define_capability( 'acc', 'lcase', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ucase', 'ON' )
go

call sa_unload_define_capability( 'acc', 'left', 'ON' )
go

call sa_unload_define_capability( 'acc', 'length', 'ON' )
go

call sa_unload_define_capability( 'acc', 'locate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'repeat', 'ON' )
go

call sa_unload_define_capability( 'acc', 'similar', 'ON' )
go

call sa_unload_define_capability( 'acc', 'trim', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ascii', 'ON' )
go

call sa_unload_define_capability( 'acc', 'asciichar', 'ON' )
go

call sa_unload_define_capability( 'acc', 'charindex', 'ON' )
go

call sa_unload_define_capability( 'acc', 'charlen', 'ON' )
go

call sa_unload_define_capability( 'acc', 'difference', 'ON' )
go

call sa_unload_define_capability( 'acc', 'lower', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ltrim', 'ON' )
go

call sa_unload_define_capability( 'acc', 'patindex', 'ON' )
go

call sa_unload_define_capability( 'acc', 'replicate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'reverse', 'ON' )
go

call sa_unload_define_capability( 'acc', 'right', 'ON' )
go

call sa_unload_define_capability( 'acc', 'rtrim', 'ON' )
go

call sa_unload_define_capability( 'acc', 'soundex', 'ON' )
go

call sa_unload_define_capability( 'acc', 'space', 'ON' )
go

call sa_unload_define_capability( 'acc', 'str', 'ON' )
go

call sa_unload_define_capability( 'acc', 'stuff', 'ON' )
go

call sa_unload_define_capability( 'acc', 'upper', 'ON' )
go

call sa_unload_define_capability( 'acc', 'abs', 'ON' )
go

call sa_unload_define_capability( 'acc', 'acos', 'ON' )
go

call sa_unload_define_capability( 'acc', 'asin', 'ON' )
go

call sa_unload_define_capability( 'acc', 'atan', 'ON' )
go

call sa_unload_define_capability( 'acc', 'atan2', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ceiling', 'ON' )
go

call sa_unload_define_capability( 'acc', 'cos', 'ON' )
go

call sa_unload_define_capability( 'acc', 'isnull', 'ON' )
go

call sa_unload_define_capability( 'acc', 'coalesce', 'ON' )
go

call sa_unload_define_capability( 'acc', 'string', 'ON' )
go

call sa_unload_define_capability( 'acc', 'ymd', 'ON' )
go

call sa_unload_define_capability( 'acc', 'todate', 'ON' )
go

call sa_unload_define_capability( 'acc', 'months', 'ON' )
go

call sa_unload_define_capability( 'acc', 'year', 'ON' )
go

call sa_unload_define_capability( 'acc', 'years', 'ON' )
go

call sa_unload_define_capability( 'acc', 'dateformat', 'ON' )
go

call sa_unload_define_capability( 'acc', 'dow', 'ON' )
go

call sa_unload_define_capability( 'acc', 'nullif', 'ON' )
go


-------------------------------------------------
--   Create dbspace permissions
-------------------------------------------------

begin
    for dbspaces as dbcurs cursor for 
	select privilege_type, dbspace_name, user_name 
		from SYS.SYSDBSPACEPERM p 
		join SYS.SYSDBSPACE d on p.dbspace_id = d.dbspace_id
		join SYS.SYSUSER u on u.user_id = p.grantee
    do
	execute immediate 'revoke ' + if privilege_type = 1 then 'CREATE' else 'UNKNOWN' endif + ' on "' + dbspace_name + '" from "' + user_name + '"'
    end for;
end

go

grant CREATE on "system" to "PUBLIC"
go

grant CREATE on "temporary" to "PUBLIC"
go


-------------------------------------------------
--   Create external environments
-------------------------------------------------

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'java' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "java"
        LOCATION '' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'perl' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "perl"
        LOCATION 'perl' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'clr' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "clr"
        LOCATION 'dbextclr11' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'php' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "php"
        LOCATION 'php' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'c_esql32' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "c_esql32"
        LOCATION 'bin32[SLASH]dbexternc11' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'c_odbc32' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "c_odbc32"
        LOCATION 'bin32[SLASH]dbexternc11' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'c_esql64' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "c_esql64"
        LOCATION 'bin64[SLASH]dbexternc11' 
END IF 
go

IF EXISTS( SELECT * FROM SYS.SYSEXTERNENV WHERE name = 'c_odbc64' ) THEN 
    ALTER EXTERNAL ENVIRONMENT "c_odbc64"
        LOCATION 'bin64[SLASH]dbexternc11' 
END IF 
go


-------------------------------------------------
--   Create external environment objects
-------------------------------------------------

create temporary procedure sa_unload_display_table_status( 
    msgid int, ord int, numtabs int, user_name char(128), table_name char(128) )
begin 
  declare @fullmsg long varchar; 
  set @fullmsg = lang_message( msgid ) ||
      ' (' || ord || '/' || numtabs || ') ' ||
      '"' || user_name || '"."' || table_name || '"'; 
  message @fullmsg type info to client; 
end
go


-------------------------------------------------
--   Create tables
-------------------------------------------------

CREATE TABLE "DBA"."acc_main" (
    "acc_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_code"                       char(15) NOT NULL
   ,"acc_name"                       varchar(40) NOT NULL
   ,"acc_type"                       char(1) NOT NULL check(acc_type in( 'L','A','E','I' ) )
   ,"acc_class"                      char(10) NOT NULL
   ,"acc_parent"                     unsigned int NOT NULL
   ,"acc_root"                       char(1) NOT NULL DEFAULT 'Y' check(acc_root in( 'Y','N','L','S' ) )
   ,"acc_opbal"                      "T_money" NOT NULL
   ,"Description"                    varchar(100) NULL
   ,"acc_db"                         "T_money" NOT NULL
   ,"acc_cr"                         "T_money" NOT NULL
   ,"acc_primary"                    char(1) NULL DEFAULT 'N'
   ,"acc_sibling"                    tinyint NOT NULL
   ,"IsHide"                         bit NOT NULL DEFAULT 0
   ,PRIMARY KEY ("acc_id") 
)
go

CREATE TABLE "DBA"."godown" (
    "gw_id"                          numeric(3,0) NOT NULL DEFAULT autoincrement
   ,"gw_code"                        char(15) NOT NULL
   ,"gw_descr"                       varchar(20) NOT NULL
   ,PRIMARY KEY ("gw_id") 
)
go

CREATE TABLE "DBA"."product" (
    "pr_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"item"                           char(10) NOT NULL
   ,"brand"                          char(20) NOT NULL
   ,"model"                          char(20) NOT NULL
   ,"sl_no"                          char(1) NOT NULL DEFAULT 'N' check(sl_no in( 'Y','N' ) )
   ,"op_price"                       "T_money" NULL
   ,"last_price"                     "T_money" NULL
   ,"last_date"                      date NULL
   ,"acc_id_sale_tax"                integer NULL
   ,"spec"                           varchar(90) NULL
   ,"basic_price"                    "T_money" NULL
   ,"show"                           char(1) NOT NULL DEFAULT 'Y'
   ,"code"                           unsigned int NOT NULL
   ,"bar_code"                       varchar(20) NULL
   ,"counter_id"                     unsigned int NOT NULL
   ,PRIMARY KEY ("pr_id") 
)
go

CREATE TABLE "DBA"."bill_memo" (
    "bill_memo_id"                   unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NULL
   ,"ref_no"                         varchar(30) NOT NULL
   ,"descr"                          varchar(200) NULL
   ,"challan_no"                     char(10) NULL
   ,"date"                           date NOT NULL
   ,"form"                           char(1) NOT NULL DEFAULT 'N' check(form in( 'L','C','N' ) )
   ,"sale_tax_sale_id"               unsigned int NOT NULL
   ,"discount"                       "T_money" NOT NULL
   ,"credit_limit"                   smallint NOT NULL DEFAULT 0
   ,"cust_id"                        unsigned int NULL
   ,"Tax"                            "T_money" NOT NULL
   ,"Other_charges"                  "T_money" NOT NULL
   ,"Total_amt"                      "T_money" NOT NULL
   ,"type"                           char(1) NOT NULL DEFAULT 'S' check(type in( 'S','R' ) )
   ,"surcharge"                      "T_money" NOT NULL
   ,"bill_memo"                      char(1) NOT NULL check(bill_memo in( 'B','M','J' ) )
   ,"inv"                            char(1) NOT NULL DEFAULT 'N' check(inv in( 'Y','N' ) )
   ,"Due_amt"                        "T_money" NOT NULL COMPUTE (total_amt-adj_amt)
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"tag"                            unsigned int NULL
   ,"pos_id"                         integer NULL
   ,"tot"                            "T_money" NOT NULL
   ,"vat"                            "T_money" NOT NULL
   ,"serv_tax"                       "T_money" NOT NULL
   ,"sales_tax"                      "T_money" NOT NULL
   ,"roundoff"                       "T_money" NOT NULL
   ,"cst"                            "T_money" NOT NULL
   ,"sale_text"                      varchar(60) NULL
   ,"mdatetime"                      timestamp NULL DEFAULT current timestamp
   ,"mold"                           "T_money" NULL
   ,"mpreserve"                      char(1) NOT NULL
   ,PRIMARY KEY ("bill_memo_id") 
)
go

CREATE TABLE "DBA"."invoice" (
    "inv_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"ref_no"                         varchar(30) NOT NULL
   ,"descr"                          varchar(200) NULL
   ,"challan_no"                     char(10) NULL
   ,"inv_date"                       date NOT NULL
   ,"inv_amt"                        "T_money" NOT NULL
   ,"spl_disc"                       "T_money" NOT NULL
   ,"sale_tax_purchase_id"           unsigned int NOT NULL
   ,"debit_note_id"                  unsigned int NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"credit_note_amt"                "T_money" NOT NULL
   ,"subtotal"                       "T_money" NOT NULL
   ,"form"                           char(1) NOT NULL DEFAULT 'N' check(form in( 'C','N','L' ) )
   ,"adjusted"                       char(1) NOT NULL DEFAULT 'N' check(adjusted in( 'Y','N' ) )
   ,"type"                           char(1) NOT NULL DEFAULT 'P' check(type in( 'R','P' ) )
   ,"rec_date"                       date NULL
   ,"credit_limit"                   smallint NULL
   ,"due_amt"                        "T_money" NOT NULL COMPUTE (inv_amt-adj_amt)
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"tag"                            unsigned int NULL
   ,"vat"                            numeric(12,2) NOT NULL
   ,"Checked"                        char(1) NULL
   ,PRIMARY KEY ("inv_id") 
)
go

CREATE TABLE "DBA"."invoice_product" (
    "invoice_product_id"             unsigned int NOT NULL DEFAULT autoincrement
   ,"inv_id"                         unsigned int NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"qty"                            smallint NOT NULL
   ,"price"                          "T_money" NOT NULL
   ,"discount"                       "T_money" NOT NULL
   ,"actual_price"                   "T_money" NOT NULL
   ,"spl_disc"                       "T_money" NOT NULL
   ,"purchase_warranty"              tinyint NOT NULL
   ,PRIMARY KEY ("invoice_product_id") 
)
go

CREATE TABLE "DBA"."acc_tran" (
    "acc_tran_id"                    unsigned int NOT NULL DEFAULT autoincrement
   ,"doc_id"                         unsigned int NOT NULL
   ,"amt"                            "T_money" NOT NULL
   ,"tran_type"                      tinyint NOT NULL
   ,"acc_id_db"                      unsigned int NULL
   ,"acc_id_cr"                      unsigned int NULL
   ,PRIMARY KEY ("acc_tran_id") 
)
go

CREATE TABLE "DBA"."bill_memo_product" (
    "bill_product_id"                unsigned int NOT NULL DEFAULT autoincrement
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"qty"                            smallint NOT NULL DEFAULT 1
   ,"price"                          "T_money" NOT NULL
   ,"gross_profit"                   "T_money" NOT NULL
   ,"sale_warranty"                  tinyint NOT NULL DEFAULT 12
   ,"discount"                       "T_money" NOT NULL
   ,"actual_price"                   "T_money" NOT NULL
   ,"spec"                           varchar(200) NULL
   ,"actual_profit"                  "T_money" NULL
   ,"coupon_id"                      unsigned int NULL
   ,"mold"                           "T_money" NULL
   ,PRIMARY KEY ("bill_product_id") 
)
go

CREATE TABLE "DBA"."customer" (
    "cust_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"name"                           char(55) NULL
   ,"addr1"                          varchar(70) NULL
   ,"addr2"                          varchar(60) NULL
   ,"pin"                            varchar(10) NULL
   ,"phone"                          varchar(30) NULL
   ,"email"                          varchar(30) NULL
   ,"card_no"                        varchar(30) NULL
   ,"card_name"                      varchar(10) NULL
   ,"acc_id"                         unsigned int NULL
   ,"mobile"                         varchar(40) NULL
   ,"dob"                            date NULL
   ,"dom"                            date NULL
   ,PRIMARY KEY ("cust_id") 
)
go

CREATE TABLE "DBA"."Details" (
    "details_id"                     unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"addr1"                          varchar(40) NULL
   ,"addr2"                          varchar(40) NULL
   ,"pin"                            char(15) NULL
   ,"phone"                          varchar(30) NULL
   ,"fax"                            varchar(30) NULL
   ,"email"                          varchar(40) NULL
   ,"cst"                            varchar(20) NULL
   ,"lst"                            varchar(20) NULL
   ,"remarks"                        varchar(200) NULL
   ,"inc_tax"                        varchar(30) NULL
   ,"category"                       char(1) NULL DEFAULT 'A'
   ,"adj_amt"                        decimal(12,2) NULL DEFAULT 0.0
   ,"tag"                            unsigned int NULL
   ,"mobile"                         varchar(40) NULL
   ,"pan"                            varchar(40) NULL
   ,"person_name"                    varchar(60) NULL
   ,"tan"                            numeric(11,0) NULL
   ,PRIMARY KEY ("details_id") 
)
go

CREATE TABLE "DBA"."godown_tran" (
    "tran_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"tran_date"                      date NOT NULL
   ,"tran_refno"                     char(15) NULL
   ,"tran_remarks"                   varchar(70) NULL
   ,"gw_id_from"                     numeric(3,0) NOT NULL
   ,"gw_id_to"                       numeric(3,0) NOT NULL
   ,PRIMARY KEY ("tran_id") 
)
go

CREATE TABLE "DBA"."inv_main" (
    "op"                             integer NOT NULL
   ,"db"                             integer NOT NULL
   ,"cr"                             integer NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL DEFAULT autoincrement
   ,"pr_id"                          unsigned int NOT NULL
   ,"trf_db"                         integer NOT NULL DEFAULT 0
   ,"trf_cr"                         integer NOT NULL DEFAULT 0
   ,"gw_id"                          numeric(3,0) NOT NULL
   ,"op_price"                       decimal(10,2) NULL
   ,"TallyDate"                      date NULL
   ,"IsDisputed"                     bit NOT NULL DEFAULT 0
   ,"IsIgnored"                      bit NOT NULL DEFAULT 0
   ,PRIMARY KEY ("inv_main_id") 
)
go

CREATE TABLE "DBA"."pbcattbl" (
    "pbt_tnam"                       char(129) NOT NULL
   ,"pbt_tid"                        integer NULL
   ,"pbt_ownr"                       char(129) NOT NULL
   ,"pbd_fhgt"                       smallint NULL
   ,"pbd_fwgt"                       smallint NULL
   ,"pbd_fitl"                       char(1) NULL
   ,"pbd_funl"                       char(1) NULL
   ,"pbd_fchr"                       smallint NULL
   ,"pbd_fptc"                       smallint NULL
   ,"pbd_ffce"                       char(18) NULL
   ,"pbh_fhgt"                       smallint NULL
   ,"pbh_fwgt"                       smallint NULL
   ,"pbh_fitl"                       char(1) NULL
   ,"pbh_funl"                       char(1) NULL
   ,"pbh_fchr"                       smallint NULL
   ,"pbh_fptc"                       smallint NULL
   ,"pbh_ffce"                       char(18) NULL
   ,"pbl_fhgt"                       smallint NULL
   ,"pbl_fwgt"                       smallint NULL
   ,"pbl_fitl"                       char(1) NULL
   ,"pbl_funl"                       char(1) NULL
   ,"pbl_fchr"                       smallint NULL
   ,"pbl_fptc"                       smallint NULL
   ,"pbl_ffce"                       char(18) NULL
   ,"pbt_cmnt"                       char(254) NULL
)
go

GRANT SELECT,INSERT,DELETE,UPDATE,ALTER,REFERENCES ON "DBA"."pbcattbl" TO "PUBLIC" 
go

CREATE TABLE "DBA"."pbcatcol" (
    "pbc_tnam"                       char(129) NOT NULL
   ,"pbc_tid"                        integer NULL
   ,"pbc_ownr"                       char(129) NOT NULL
   ,"pbc_cnam"                       char(129) NOT NULL
   ,"pbc_cid"                        smallint NULL
   ,"pbc_labl"                       char(254) NULL
   ,"pbc_lpos"                       smallint NULL
   ,"pbc_hdr"                        char(254) NULL
   ,"pbc_hpos"                       smallint NULL
   ,"pbc_jtfy"                       smallint NULL
   ,"pbc_mask"                       char(31) NULL
   ,"pbc_case"                       smallint NULL
   ,"pbc_hght"                       smallint NULL
   ,"pbc_wdth"                       smallint NULL
   ,"pbc_ptrn"                       char(31) NULL
   ,"pbc_bmap"                       char(1) NULL
   ,"pbc_init"                       char(254) NULL
   ,"pbc_cmnt"                       char(254) NULL
   ,"pbc_edit"                       char(31) NULL
   ,"pbc_tag"                        char(254) NULL
)
go

GRANT SELECT,INSERT,DELETE,UPDATE,ALTER,REFERENCES ON "DBA"."pbcatcol" TO "PUBLIC" 
go

CREATE TABLE "DBA"."pbcatfmt" (
    "pbf_name"                       char(30) NOT NULL
   ,"pbf_frmt"                       char(254) NULL
   ,"pbf_type"                       smallint NULL
   ,"pbf_cntr"                       integer NULL
)
go

GRANT SELECT,INSERT,DELETE,UPDATE,ALTER,REFERENCES ON "DBA"."pbcatfmt" TO "PUBLIC" 
go

CREATE TABLE "DBA"."pbcatvld" (
    "pbv_name"                       char(30) NOT NULL
   ,"pbv_vald"                       char(254) NULL
   ,"pbv_type"                       smallint NULL
   ,"pbv_cntr"                       integer NULL
   ,"pbv_msg"                        char(254) NULL
)
go

GRANT SELECT,INSERT,DELETE,UPDATE,ALTER,REFERENCES ON "DBA"."pbcatvld" TO "PUBLIC" 
go

CREATE TABLE "DBA"."pbcatedt" (
    "pbe_name"                       char(30) NOT NULL
   ,"pbe_edit"                       char(254) NULL
   ,"pbe_type"                       smallint NULL
   ,"pbe_cntr"                       integer NULL
   ,"pbe_seqn"                       smallint NOT NULL
   ,"pbe_flag"                       integer NULL
   ,"pbe_work"                       char(32) NULL
)
go

GRANT SELECT,INSERT,DELETE,UPDATE,ALTER,REFERENCES ON "DBA"."pbcatedt" TO "PUBLIC" 
go

CREATE TABLE "DBA"."tran_type" (
    "id"                             tinyint NOT NULL
   ,"descr"                          char(12) NOT NULL
   ,"prefix"                         char(5) NULL
   ,"lastno"                         unsigned int NULL
   ,"suffix"                         char(5) NULL
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."acc_setup" (
    "comp_name"                      varchar(70) NULL
   ,"addr1"                          varchar(40) NULL
   ,"addr2"                          varchar(40) NULL
   ,"pin"                            char(10) NULL
   ,"fax"                            varchar(30) NULL
   ,"phone"                          varchar(60) NULL
   ,"email"                          varchar(60) NULL
   ,"cst"                            varchar(70) NULL
   ,"lst"                            varchar(70) NULL
   ,"inc_tax"                        char(30) NULL
   ,"pan"                            char(30) NULL
   ,"default_godown"                 numeric(3,0) NOT NULL DEFAULT 1
   ,"id"                             numeric(1,0) NOT NULL DEFAULT 1
   ,"startdate"                      date NULL
   ,"enddate"                        date NULL
   ,"default_cash_id"                unsigned int NULL
   ,"supervisor"                     char(20) NOT NULL DEFAULT 'k\\X[P\\WISWT'
   ,"advanced"                       char(20) NOT NULL DEFAULT 'iLLISEYFB'
   ,"guest"                          char(20) NOT NULL DEFAULT 'fYWHWH'
   ,"user"                           char(20) NOT NULL DEFAULT 'eVHUV'
   ,"security"                       char(4) NOT NULL DEFAULT 'cQO'
   ,"capitalaccount"                 unsigned int NULL
   ,"allow_clearbankrecon"           char(1) NULL DEFAULT 'N'
   ,"default_chequeincash"           char(1) NULL
   ,"tag"                            unsigned int NULL
   ,"last_rtno_pd"                   unsigned int NULL
   ,"stock_x"                        unsigned int NULL DEFAULT 0.0
   ,"preprinted"                     char(1) NULL DEFAULT 'N'
   ,"default_billsuffix"             char(5) NULL
   ,"free1"                          varchar(100) NULL
   ,"free2"                          varchar(100) NULL
   ,"free3"                          varchar(100) NULL
   ,"free4"                          varchar(100) NULL
   ,"version"                        char(12) NULL
   ,"coupon"                         char(1) NULL
   ,"last_coupon_no"                 integer NULL
   ,"padlock"                        char(1) NULL
   ,"cellport"                       char(4) NULL
   ,"cellno"                         char(11) NULL
   ,"roundoff"                       char(1) NOT NULL
   ,"timing"                         char(1) NULL
   ,"last_seq_no"                    unsigned int NULL
   ,"seq_no_prefix"                  varchar(3) NULL
   ,"enforce_seq_no"                 char(1) NULL
   ,"auto_seq_no"                    char(1) NULL
   ,"vat_option"                     char(1) NULL
   ,"vat_no"                         numeric(11,0) NULL
   ,"maxcode"                        unsigned int NULL
   ,"acc_id_card_deposit"            unsigned int NULL
   ,"acc_id_card_comm"               unsigned int NULL
   ,"allowtran"                      char(1) NULL
   ,"MenuSecurityXml"                long varchar NULL
   ,"VatXML"                         long varchar NULL
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."cash_payment" (
    "cp_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"cp_date"                        date NOT NULL
   ,"cp_amt"                         "T_money" NOT NULL
   ,"cp_acc_id"                      unsigned int NOT NULL
   ,"cp_acc_id_cash"                 unsigned int NOT NULL
   ,"ref_no"                         char(20) NULL
   ,"remarks"                        varchar(200) NULL
   ,"Through"                        varchar(90) NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (cp_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,"pos_id"                         integer NULL
   ,PRIMARY KEY ("cp_id") 
)
go

CREATE TABLE "DBA"."cheque_receipt" (
    "cheq_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"cheq_no"                        char(20) NOT NULL
   ,"rec_date"                       date NOT NULL
   ,"bank"                           varchar(40) NULL
   ,"branch"                         varchar(40) NULL
   ,"cheq_amt"                       "T_money" NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"acc_id_cash_bank"               unsigned int NOT NULL
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        varchar(200) NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (cheq_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,"pos_id"                         integer NULL
   ,"through"                        varchar(90) NULL
   ,PRIMARY KEY ("cheq_id") 
)
go

CREATE TABLE "DBA"."cheque_payment" (
    "cheq_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"cheq_no"                        char(20) NOT NULL
   ,"cheq_date"                      date NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"cheq_amt"                       "T_money" NOT NULL
   ,"acc_id_bank"                    unsigned int NOT NULL
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        varchar(200) NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (cheq_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,"pos_id"                         integer NULL
   ,"through"                        varchar(90) NULL
   ,PRIMARY KEY ("cheq_id") 
)
go

ALTER TABLE "DBA"."cheque_payment"
    ADD UNIQUE ( "cheq_id" )
go

CREATE TABLE "DBA"."receipt_bill_memo" (
    "bill_memo_id"                   unsigned int NOT NULL
   ,"cheq_id"                        unsigned int NULL
   ,"cr_id"                          unsigned int NULL
   ,"rb_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"rec_amt"                        "T_money" NOT NULL
   ,PRIMARY KEY ("rb_id") 
)
go

ALTER TABLE "DBA"."receipt_bill_memo"
    ADD UNIQUE ( "rb_id" )
go

CREATE TABLE "DBA"."cash_receipt" (
    "cr_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"rec_date"                       date NOT NULL
   ,"amt"                            "T_money" NOT NULL
   ,"ref_no"                         char(30) NOT NULL
   ,"remarks"                        varchar(200) NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"acc_id_cash"                    unsigned int NOT NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,"pos_id"                         integer NULL
   ,"through"                        varchar(90) NULL
   ,PRIMARY KEY ("cr_id") 
)
go

CREATE TABLE "DBA"."Journal" (
    "jou_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"jou_no"                         unsigned int NOT NULL
   ,"jou_acc_id"                     unsigned int NOT NULL
   ,"jou_remarks"                    varchar(200) NULL
   ,"jou_amt"                        "T_money" NOT NULL
   ,"jou_db_cr"                      char(1) NOT NULL check(jou_db_cr in( 'C','D' ) )
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (jou_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,PRIMARY KEY ("jou_id") 
)
go

CREATE TABLE "DBA"."journal_no" (
    "jou_no"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"jou_date"                       date NOT NULL
   ,"pos_id"                         integer NULL
   ,"ref_no"                         varchar(30) NOT NULL
   ,"remarks"                        varchar(300) NULL
   ,PRIMARY KEY ("jou_no") 
)
go

CREATE TABLE "DBA"."Debit_credit_note" (
    "dc_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        varchar(300) NULL
   ,"dc_amt"                         "T_money" NOT NULL
   ,"acc_id_db"                      unsigned int NOT NULL
   ,"acc_id_cr"                      unsigned int NOT NULL
   ,"dc_date"                        date NOT NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (dc_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,PRIMARY KEY ("dc_id") 
)
go

CREATE TABLE "DBA"."contra_entries" (
    "contra_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"contra_date"                    date NULL
   ,"ref_no"                         char(30) NULL
   ,"contra_amt"                     "T_money" NOT NULL
   ,"remarks"                        varchar(200) NULL
   ,"acc_id_db"                      unsigned int NOT NULL
   ,"acc_id_cr"                      unsigned int NOT NULL
   ,"cheq_no"                        char(20) NULL
   ,PRIMARY KEY ("contra_id") 
)
go

CREATE TABLE "DBA"."department" (
    "dep_id"                         integer NOT NULL DEFAULT autoincrement
   ,"dep_name"                       char(30) NOT NULL
   ,"dep_incharge"                   char(30) NOT NULL
   ,PRIMARY KEY ("dep_id") 
)
go

CREATE TABLE "DBA"."cashbook_summery" (
    "cs_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"cs_date"                        date NOT NULL
   ,"cs_debit"                       "T_money" NOT NULL
   ,"cs_credit"                      "T_money" NOT NULL
   ,"acc_id_cash"                    unsigned int NOT NULL
   ,"cs_debit_cheque"                "T_money" NOT NULL
   ,"cs_credit_cheque"               "T_money" NOT NULL
   ,PRIMARY KEY ("cs_id") 
)
go

ALTER TABLE "DBA"."cashbook_summery"
    ADD UNIQUE ( "cs_id" )
go

CREATE TABLE "DBA"."WebConnection" (
    "Id"                             integer NOT NULL DEFAULT autoincrement
   ,"Name"                           char(20) NOT NULL
   ,"Datasource"                     char(128) NULL
   ,"Userid"                         char(128) NULL
   ,"Password"                       char(128) NULL
   ,"ConnectParameters"              varchar(255) NULL
   ,"Description"                    varchar(255) NULL
   ,PRIMARY KEY ("Id") 
)
go

ALTER TABLE "DBA"."WebConnection"
    ADD UNIQUE ( "Name" )
go

CREATE TABLE "DBA"."WebDocumentType" (
    "Id"                             integer NOT NULL DEFAULT autoincrement
   ,"Extension"                      varchar(255) NULL
   ,"Type"                           varchar(255) NOT NULL
   ,PRIMARY KEY ("Id") 
)
go

CREATE TABLE "DBA"."WebSynchronize" (
    "TableName"                      char(20) NOT NULL
   ,"Revision"                       integer NOT NULL
   ,PRIMARY KEY ("TableName") 
)
go

CREATE TABLE "DBA"."WebTemplate" (
    "Id"                             integer NOT NULL DEFAULT autoincrement
   ,"ConnectionId"                   integer NOT NULL
   ,"DocType"                        integer NOT NULL
   ,"ParentId"                       integer NULL
   ,"Name"                           varchar(250) NOT NULL check(Name not like '%/%')
   ,"Size"                           integer NOT NULL DEFAULT 0
   ,"LastModified"                   "smalldatetime" NOT NULL DEFAULT getdate()
   ,"Description"                    varchar(255) NULL
   ,"Location"                       varchar(255) NOT NULL DEFAULT ''
   ,"DiskDirectory"                  varchar(255) NULL
   ,PRIMARY KEY ("Id") 
)
go

CREATE TABLE "DBA"."WebData" (
    "Id"                             integer NOT NULL
   ,"Sequence"                       integer NOT NULL
   ,"Data"                           binary(255) NOT NULL
   ,PRIMARY KEY ("Id","Sequence") 
)
go

CREATE TABLE "DBA"."WebVersion" (
    "NIDVersion"                     integer NOT NULL
   ,PRIMARY KEY ("NIDVersion") 
)
go

CREATE TABLE "DBA"."Expence" (
    "exp_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"ref_no"                         varchar(30) NULL
   ,"descr"                          varchar(200) NULL
   ,"exp_date"                       date NOT NULL
   ,"exp_amt"                        "T_money" NOT NULL
   ,"acc_id_exp"                     unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"adj_amt"                        decimal(12,2) NOT NULL DEFAULT 0
   ,"due_amt"                        decimal(12,2) NOT NULL COMPUTE (exp_amt-adj_amt)
   ,"tag"                            unsigned int NULL
   ,PRIMARY KEY ("exp_id") 
)
go

CREATE TABLE "DBA"."cash_bank_journal" (
    "cb_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"cb_date"                        date NOT NULL
   ,"cb_no"                          unsigned int NOT NULL
   ,"cb_refno"                       char(30) NULL
   ,"cb_amt"                         "T_money" NOT NULL
   ,"cb_remarks"                     varchar(70) NULL
   ,"acc_id_db"                      unsigned int NOT NULL
   ,"acc_id_cr"                      unsigned int NOT NULL
   ,"cb_cheqno"                      char(20) NULL
   ,PRIMARY KEY ("cb_id") 
)
go

ALTER TABLE "DBA"."cash_bank_journal"
    ADD UNIQUE ( "cb_id" )
go

CREATE TABLE "DBA"."bank_recon" (
    "br_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id_bank"                    unsigned int NOT NULL
   ,"tran_date"                      date NOT NULL
   ,"debit_amt"                      "T_money" NOT NULL
   ,"credit_amt"                     "T_money" NOT NULL
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        varchar(200) NULL
   ,"clear_date"                     date NULL
   ,"period"                         char(2) NOT NULL
   ,"doc_id"                         unsigned int NULL
   ,"tran_type"                      tinyint NULL
   ,"cheq_no"                        char(20) NULL
   ,"acc_id"                         unsigned int NULL
   ,"cleared"                        tinyint NOT NULL DEFAULT 1 check(cleared = 0 or cleared = 1)
   ,PRIMARY KEY ("br_id") 
)
go

CREATE TABLE "DBA"."bank_balances" (
    "bb_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"bb_opbalance"                   "T_money" NOT NULL
   ,"bb_closbalance"                 "T_money" NOT NULL
   ,"acc_id_bank"                    unsigned int NOT NULL
   ,"bb_lockdate"                    date NULL
   ,PRIMARY KEY ("bb_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_ledger" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"date"                           date NULL
   ,"cheq_no"                        char(20) NULL
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        char(70) NULL
   ,"debit"                          "T_money" NULL
   ,"credit"                         "T_money" NULL
   ,"accname"                        varchar(40) NULL
   ,"type"                           char(8) NULL
   ,"acc_id_org"                     unsigned int NULL
   ,"tempid"                         unsigned int NOT NULL
   ,"acc_id_other"                   unsigned int NULL
   ,PRIMARY KEY ("id") 
) ON COMMIT DELETE ROWS
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."bs_temp" (
    "bs_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"bs_name"                        varchar(40) NOT NULL
   ,"bs_balance"                     "T_money" NOT NULL
   ,"bs_parent"                      unsigned int NOT NULL
   ,"bs_level"                       tinyint NULL
   ,"bs_acc_id"                      unsigned int NOT NULL
   ,"bs_code"                        char(15) NOT NULL
   ,"bs_sign"                        integer NULL
   ,PRIMARY KEY ("bs_id") 
) ON COMMIT PRESERVE ROWS
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_ledger1" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"date"                           date NULL
   ,"cheq_no"                        char(20) NULL
   ,"ref_no"                         char(30) NULL
   ,"remarks"                        char(70) NULL
   ,"debit"                          "T_money" NULL
   ,"credit"                         "T_money" NULL
   ,"accname"                        varchar(40) NULL
   ,"type"                           char(8) NULL
   ,"tempid"                         unsigned int NOT NULL
   ,"acc_id_org"                     unsigned int NULL
   ,"acc_id_other"                   unsigned int NULL
   ,PRIMARY KEY ("id") 
) ON COMMIT DELETE ROWS
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_accid" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"accid"                          unsigned int NOT NULL
   ,PRIMARY KEY ("id") 
) ON COMMIT PRESERVE ROWS
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp1_accid" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"accid"                          unsigned int NOT NULL
   ,PRIMARY KEY ("id") 
) ON COMMIT DELETE ROWS
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_item" (
    "TI_ID"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"TI_name"                        char(21) NOT NULL
   ,PRIMARY KEY ("TI_ID") 
) ON COMMIT DELETE ROWS
go

ALTER TABLE "DBA"."temp_item"
    ADD UNIQUE ( "TI_ID" )
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_brand" (
    "ti_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"ti_name"                        char(21) NOT NULL
   ,PRIMARY KEY ("ti_id") 
) ON COMMIT DELETE ROWS
go

ALTER TABLE "DBA"."temp_brand"
    ADD UNIQUE ( "ti_id" )
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."temp_model" (
    "TI_ID"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"TI_NAME"                        char(21) NOT NULL
   ,PRIMARY KEY ("TI_ID") 
) ON COMMIT DELETE ROWS
go

ALTER TABLE "DBA"."temp_model"
    ADD UNIQUE ( "TI_ID" )
go

CREATE TABLE "DBA"."bill_series" (
    "BS_ID"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"BS_SERIES"                      char(5) NULL
   ,"BS_LAST"                        unsigned int NULL
   ,"ACC_ID"                         unsigned int NOT NULL
   ,"suffix"                         char(5) NULL
   ,"pricetype"                      char(3) NULL
   ,PRIMARY KEY ("BS_ID") 
)
go

ALTER TABLE "DBA"."bill_series"
    ADD UNIQUE ( "BS_ID" )
go

CREATE TABLE "DBA"."bill_memo_cheque_details" (
    "bcd_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"cheq_no"                        char(20) NOT NULL
   ,"cheq_date"                      date NOT NULL
   ,"cheq_amt"                       "T_money" NOT NULL
   ,"ref_no"                         char(20) NULL
   ,"bank"                           varchar(40) NULL
   ,PRIMARY KEY ("bcd_id") 
)
go

ALTER TABLE "DBA"."bill_memo_cheque_details"
    ADD UNIQUE ( "bcd_id" )
go

CREATE TABLE "DBA"."opening_cheque_details" (
    "oc_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"oc_Cheque_no"                   char(20) NOT NULL
   ,"oc_bank"                        varchar(40) NULL
   ,"oc_branch"                      varchar(40) NULL
   ,"oc_amt"                         "T_money" NOT NULL
   ,"oc_date"                        "datetime" NOT NULL
   ,PRIMARY KEY ("oc_id") 
)
go

ALTER TABLE "DBA"."opening_cheque_details"
    ADD UNIQUE ( "oc_id" )
go

CREATE TABLE "DBA"."stock_journal" (
    "sj_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"date"                           date NOT NULL
   ,"ref_no"                         varchar(30) NOT NULL
   ,"descr"                          varchar(200) NULL
   ,PRIMARY KEY ("sj_id") 
)
go

CREATE TABLE "DBA"."stock_journal_product" (
    "sjp_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"debit_qty"                      smallint NULL
   ,"credit_qty"                     smallint NULL
   ,"remarks"                        varchar(70) NULL
   ,"sj_id"                          unsigned int NOT NULL
   ,PRIMARY KEY ("sjp_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."acclist_temp" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_code"                       char(15) NOT NULL
   ,"acc_name"                       varchar(70) NOT NULL
   ,"level"                          integer NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"acc_parent"                     unsigned int NOT NULL
   ,"acc_type"                       char(1) NOT NULL
   ,"acc_root"                       char(1) NOT NULL
   ,PRIMARY KEY ("id") 
) ON COMMIT PRESERVE ROWS
go

ALTER TABLE "DBA"."acclist_temp"
    ADD UNIQUE ( "id" )
go

CREATE TABLE "DBA"."acc_temp" (
    "acc_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_code"                       char(15) NOT NULL
   ,"acc_name"                       varchar(40) NOT NULL
   ,"acc_type"                       char(1) NOT NULL check(acc_type in( 'L','A','E','I' ) )
   ,"acc_class"                      char(10) NOT NULL
   ,"acc_parent"                     unsigned int NOT NULL
   ,"acc_root"                       char(1) NOT NULL DEFAULT 'Y'
   ,"acc_opbal"                      "T_money" NOT NULL
   ,"Description"                    varchar(100) NULL
   ,"acc_db"                         "T_money" NOT NULL
   ,"acc_cr"                         "T_money" NOT NULL
   ,"acc_primary"                    char(1) NULL DEFAULT 'N'
   ,"acc_sibling"                    tinyint NOT NULL
   ,PRIMARY KEY ("acc_id") 
)
go

CREATE TABLE "DBA"."godown_tran_product" (
    "tp_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"pr_id"                          unsigned int NOT NULL
   ,"tp_qty"                         integer NOT NULL
   ,"tp_remarks"                     varchar(70) NULL
   ,"tran_id"                        unsigned int NOT NULL
   ,PRIMARY KEY ("tp_id") 
)
go

ALTER TABLE "DBA"."godown_tran_product"
    ADD UNIQUE ( "tp_id" )
go

CREATE TABLE "DBA"."bill_memo_descriptive_sales" (
    "bd_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"bd_descr"                       varchar(70) NOT NULL
   ,"bd_price"                       "T_money" NOT NULL
   ,"bd_qty"                         smallint NOT NULL
   ,"m_id"                           smallint NOT NULL
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"bd_discount"                    "T_money" NOT NULL
   ,PRIMARY KEY ("bd_id") 
)
go

CREATE TABLE "DBA"."invoice_descriptive_purchase" (
    "id_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"id_descr"                       varchar(70) NOT NULL
   ,"id_price"                       "T_money" NOT NULL
   ,"id_qty"                         smallint NOT NULL
   ,"m_id"                           smallint NOT NULL
   ,"inv_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("id_id") 
)
go

CREATE TABLE "DBA"."unit_of_measurement" (
    "m_id"                           smallint NOT NULL DEFAULT autoincrement
   ,"m_name"                         varchar(10) NOT NULL
   ,"dec_place"                      smallint NOT NULL
   ,PRIMARY KEY ("m_id") 
)
go

CREATE TABLE "DBA"."bill_memo_journal" (
    "bv_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"bv_dbcr"                        char(2) NOT NULL check(bv_dbcr in( 'DB','CR' ) )
   ,"bv_amt"                         "T_money" NOT NULL
   ,"bv_refno"                       varchar(30) NULL
   ,"bv_chequeno"                    char(20) NULL
   ,"bv_bank"                        varchar(40) NULL
   ,"bv_branch"                      varchar(40) NULL
   ,"tag"                            unsigned int NULL
   ,PRIMARY KEY ("bv_id") 
)
go

CREATE TABLE "DBA"."price_list" (
    "pr_id"                          unsigned int NOT NULL
   ,"lsp"                            "T_money" NULL
   ,"cd"                             decimal(5,2) NULL DEFAULT 0
   ,"bill_disc1"                     varchar(30) NULL
   ,"bill_disc2"                     varchar(30) NULL
   ,"bill_disc3"                     varchar(30) NULL
   ,"scheme1"                        varchar(30) NULL
   ,"scheme2"                        varchar(30) NULL
   ,"scheme3"                        varchar(30) NULL
   ,"spd"                            "T_money" NULL
   ,"spa"                            "T_money" NULL
   ,"spb"                            "T_money" NULL
   ,"spc"                            "T_money" NULL
   ,"glp"                            "T_money" NULL
   ,"lpp"                            "T_money" NULL
   ,PRIMARY KEY ("pr_id") 
)
go

ALTER TABLE "DBA"."price_list"
    ADD UNIQUE ( "pr_id" )
go

CREATE TABLE "DBA"."debitaccount" (
    "db_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"pos_id"                         unsigned int NOT NULL
   ,"db_acccode"                     char(15) NOT NULL
   ,PRIMARY KEY ("db_id") 
)
go

CREATE TABLE "DBA"."brand" (
    "br_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"pos_id"                         unsigned int NOT NULL
   ,"brand"                          char(20) NOT NULL
   ,PRIMARY KEY ("br_id") 
)
go

CREATE TABLE "DBA"."sale_code" (
    "sc_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"pos_id"                         unsigned int NOT NULL
   ,"acc_code"                       char(15) NOT NULL
   ,PRIMARY KEY ("sc_id") 
)
go

CREATE TABLE "DBA"."audit_lock" (
    "al_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"lock_date"                      date NOT NULL
   ,PRIMARY KEY ("al_id") 
)
go

ALTER TABLE "DBA"."audit_lock"
    ADD UNIQUE ( "al_id" )
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."bm_journal_temp" (
    "bv_id"                          unsigned int NOT NULL
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"bv_dbcr"                        char(2) NOT NULL
   ,"bv_amt"                         "T_money" NOT NULL
   ,"bv_refno"                       varchar(30) NULL
   ,"bv_chequeno"                    char(20) NULL
   ,"bv_bank"                        varchar(40) NULL
   ,"bv_branch"                      varchar(40) NULL
   ,PRIMARY KEY ("bv_id") 
) ON COMMIT DELETE ROWS
go

CREATE TABLE "DBA"."chequeincash_table" (
    "cc_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"chequeincash"                   char(1) NOT NULL check(chequeincash in( 'Y','N' ) )
   ,PRIMARY KEY ("cc_id") 
)
go

CREATE TABLE "DBA"."tag" (
    "tag_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"tag"                            unsigned int NOT NULL
   ,"doc_id"                         unsigned int NOT NULL
   ,"tran_type"                      tinyint NOT NULL
   ,"amt"                            "T_money" NOT NULL
   ,PRIMARY KEY ("tag_id") 
)
go

CREATE TABLE "DBA"."postdated_cheques" (
    "cheq_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"cheq_no"                        char(20) NOT NULL
   ,"cheq_date"                      date NOT NULL
   ,"cheq_amt"                       "T_money" NOT NULL
   ,"bank"                           varchar(40) NULL
   ,"branch"                         varchar(40) NULL
   ,"remarks"                        varchar(200) NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"bin"                            char(2) NULL
   ,PRIMARY KEY ("cheq_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."postdated_cheques_temp" (
    "cheq_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"cheq_no"                        char(20) NOT NULL
   ,"cheq_date"                      date NOT NULL
   ,"cheq_amt"                       "T_money" NOT NULL
   ,"bank"                           varchar(40) NULL
   ,"branch"                         varchar(40) NULL
   ,"remarks"                        varchar(200) NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"bin"                            char(2) NULL
   ,PRIMARY KEY ("cheq_id") 
) ON COMMIT PRESERVE ROWS
go

CREATE TABLE "DBA"."date_series" (
    "date_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"mdate"                          date NOT NULL
   ,"lastno"                         unsigned int NULL
   ,PRIMARY KEY ("date_id") 
)
go

CREATE TABLE "DBA"."month_series" (
    "month_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"mmonth"                         tinyint NOT NULL
   ,"lastno"                         unsigned int NULL
   ,PRIMARY KEY ("month_id") 
)
go

CREATE TABLE "DBA"."pointofsale" (
    "pos_id"                         integer NOT NULL DEFAULT autoincrement
   ,"pos_prefix"                     char(5) NULL
   ,"pos_suffix"                     char(5) NULL
   ,"pos_lastno"                     unsigned int NULL
   ,"master_id"                      unsigned int NOT NULL
   ,"scheme_id"                      unsigned int NOT NULL
   ,"printer"                        varchar(30) NULL
   ,"template"                       char(30) NULL
   ,"pos_active"                     char(1) NOT NULL
   ,PRIMARY KEY ("pos_id") 
)
go

CREATE TABLE "DBA"."delete_bill_memo" (
    "delete_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"delete_timestamp"               "smalldatetime" NOT NULL DEFAULT current timestamp
   ,"bill_memo_ref_no"               varchar(20) NOT NULL
   ,"bill_memo_total_amt"            decimal(12,2) NOT NULL
   ,"bill_memo_date"                 date NOT NULL
   ,"pos_id"                         integer NULL
   ,PRIMARY KEY ("delete_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."label_temp" (
    "code"                           unsigned int NULL
   ,"item"                           char(10) NULL
   ,"brand"                          char(20) NULL
   ,"model"                          char(20) NULL
   ,"bar_code"                       varchar(20) NULL
   ,"lsp"                            decimal(12,2) NULL
   ,"qty"                            integer NULL
   ,"id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,PRIMARY KEY ("id") 
) ON COMMIT PRESERVE ROWS
go

CREATE TABLE "DBA"."godown_temp" (
    "gw_id"                          numeric(3,0) NOT NULL DEFAULT autoincrement
   ,"gw_code"                        char(15) NOT NULL
   ,"gw_descr"                       varchar(20) NOT NULL
   ,PRIMARY KEY ("gw_id") 
)
go

CREATE TABLE "DBA"."price_list_temp" (
    "pr_id"                          unsigned int NOT NULL
   ,"lsp"                            "T_money" NULL
   ,"cd"                             decimal(5,2) NULL
   ,"bill_disc1"                     varchar(30) NULL
   ,"bill_disc2"                     varchar(30) NULL
   ,"bill_disc3"                     varchar(30) NULL
   ,"scheme1"                        varchar(30) NULL
   ,"scheme2"                        varchar(30) NULL
   ,"scheme3"                        varchar(30) NULL
   ,"spd"                            "T_money" NULL
   ,"spa"                            "T_money" NULL
   ,"spb"                            "T_money" NULL
   ,"spc"                            "T_money" NULL
   ,"glp"                            "T_money" NULL
   ,"lpp"                            "T_money" NULL
   ,PRIMARY KEY ("pr_id") 
)
go

CREATE TABLE "DBA"."inv_main_temp" (
    "op"                             integer NOT NULL
   ,"db"                             integer NOT NULL
   ,"cr"                             integer NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL DEFAULT autoincrement
   ,"pr_id"                          unsigned int NOT NULL
   ,"trf_db"                         integer NOT NULL
   ,"trf_cr"                         integer NOT NULL
   ,"gw_id"                          numeric(3,0) NOT NULL
   ,"op_price"                       decimal(10,2) NULL
   ,PRIMARY KEY ("inv_main_id") 
)
go

CREATE TABLE "DBA"."slno_invoice_product" (
    "slno_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"invoice_product_id"             unsigned int NOT NULL
   ,"sl_no"                          varchar(30) NOT NULL
   ,"cid"                            unsigned int NULL
   ,PRIMARY KEY ("slno_id") 
)
go

CREATE TABLE "DBA"."container" (
    "cid"                            unsigned int NOT NULL DEFAULT autoincrement
   ,"cname"                          varchar(30) NULL
   ,"cno"                            unsigned int NOT NULL DEFAULT autoincrement
   ,PRIMARY KEY ("cid") 
)
go

CREATE TABLE "DBA"."slno_bill_memo_product" (
    "slno_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"product_id"                     unsigned int NOT NULL
   ,"sl_no"                          varchar(30) NOT NULL
   ,PRIMARY KEY ("slno_id") 
)
go

CREATE TABLE "DBA"."slno_op" (
    "slno_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"sl_no"                          varchar(30) NOT NULL
   ,PRIMARY KEY ("slno_id") 
)
go

CREATE TABLE "DBA"."gp_formula" (
    "item"                           char(10) NULL
   ,"brand"                          char(20) NULL
   ,"formula"                        varchar(90) NULL
   ,"id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"deduction"                      numeric(14,10) NULL DEFAULT 0
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."temp" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"item"                           char(10) NOT NULL
   ,"brand"                          char(20) NOT NULL
   ,"model"                          char(20) NOT NULL
   ,"code"                           unsigned int NOT NULL
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."pos_master" (
    "pos_name"                       varchar(60) NOT NULL
   ,"master_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,PRIMARY KEY ("master_id") 
)
go

CREATE TABLE "DBA"."pos_color" (
    "color_name"                     char(10) NOT NULL
   ,"color_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"red"                            integer NOT NULL
   ,"green"                          integer NOT NULL
   ,"blue"                           integer NOT NULL
   ,PRIMARY KEY ("color_id") 
)
go

CREATE TABLE "DBA"."pos_scheme" (
    "scheme_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"color_id"                       unsigned int NOT NULL
   ,"printout"                       integer NOT NULL
   ,"scheme_name"                    varchar(30) NOT NULL
   ,"scheme_lastno"                  unsigned int NULL
   ,"scheme_prefix"                  char(5) NULL
   ,"scheme_suffix"                  char(5) NULL
   ,"acc_id_db"                      unsigned int NULL
   ,"acc_id_cr"                      unsigned int NULL
   ,"ptype"                          char(1) NOT NULL
   ,"scheme_billing"                 char(1) NOT NULL
   ,"sch_active"                     char(1) NOT NULL
   ,PRIMARY KEY ("scheme_id") 
)
go

CREATE TABLE "DBA"."tempcode" (
    "temp_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"code"                           unsigned int NOT NULL
   ,"item"                           char(10) NOT NULL
   ,"brand"                          char(20) NOT NULL
   ,"model"                          char(20) NOT NULL
   ,PRIMARY KEY ("temp_id") 
)
go

CREATE TABLE "DBA"."counter" (
    "counter_id"                     unsigned int NOT NULL DEFAULT autoincrement
   ,"counter_code"                   char(10) NOT NULL
   ,"counter_name"                   varchar(20) NOT NULL
   ,PRIMARY KEY ("counter_id") 
)
go

CREATE TABLE "DBA"."counter_temp" (
    "counter_id"                     unsigned int NOT NULL DEFAULT autoincrement
   ,"counter_code"                   char(10) NOT NULL
   ,"counter_name"                   varchar(20) NOT NULL
   ,PRIMARY KEY ("counter_id") 
)
go

CREATE TABLE "DBA"."coupon" (
    "coupon_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"coupon_no"                      integer NOT NULL
   ,PRIMARY KEY ("coupon_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."coupon_temp" (
    "temp_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"counter_id"                     unsigned int NOT NULL
   ,"coupon_id"                      unsigned int NOT NULL
   ,PRIMARY KEY ("temp_id") 
) ON COMMIT DELETE ROWS
go

CREATE TABLE "DBA"."pos_scheme_debit" (
    "debit_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"scheme_id"                      unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("debit_id") 
)
go

CREATE TABLE "DBA"."pos_scheme_credit" (
    "credit_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"scheme_id"                      unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("credit_id") 
)
go

CREATE TABLE "DBA"."tally_physical_stock" (
    "phy_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"qty"                            integer NOT NULL
   ,PRIMARY KEY ("phy_id") 
)
go

CREATE TABLE "DBA"."tally" (
    "tally_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"sj_id"                          unsigned int NOT NULL
   ,PRIMARY KEY ("tally_id") 
)
go

CREATE TABLE "DBA"."tally_details" (
    "details_id"                     unsigned int NOT NULL DEFAULT autoincrement
   ,"tally_id"                       unsigned int NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"physical_stock"                 integer NOT NULL
   ,"book_stock"                     integer NOT NULL
   ,"adjustment"                     integer NOT NULL
   ,PRIMARY KEY ("details_id") 
)
go

CREATE TABLE "DBA"."pos_master_temp" (
    "pos_name"                       varchar(60) NOT NULL
   ,"master_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,PRIMARY KEY ("master_id") 
)
go

CREATE TABLE "DBA"."pos_color_temp" (
    "color_name"                     char(10) NOT NULL
   ,"color_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"red"                            integer NOT NULL
   ,"green"                          integer NOT NULL
   ,"blue"                           integer NOT NULL
   ,PRIMARY KEY ("color_id") 
)
go

CREATE TABLE "DBA"."pos_scheme_temp" (
    "scheme_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"color_id"                       unsigned int NOT NULL
   ,"printout"                       integer NOT NULL
   ,"scheme_name"                    varchar(30) NOT NULL
   ,"scheme_lastno"                  unsigned int NULL
   ,"scheme_prefix"                  char(5) NULL
   ,"scheme_suffix"                  char(5) NULL
   ,"acc_id_db"                      unsigned int NULL
   ,"acc_id_cr"                      unsigned int NULL
   ,"ptype"                          char(1) NOT NULL
   ,"scheme_billing"                 char(1) NOT NULL
   ,"sch_active"                     char(1) NOT NULL
   ,PRIMARY KEY ("scheme_id") 
)
go

CREATE TABLE "DBA"."pos_scheme_debit_temp" (
    "debit_id"                       unsigned int NOT NULL DEFAULT autoincrement
   ,"scheme_id"                      unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("debit_id") 
)
go

CREATE TABLE "DBA"."pos_scheme_credit_temp" (
    "credit_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"scheme_id"                      unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("credit_id") 
)
go

CREATE TABLE "DBA"."lock_table" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."pointofsale_temp" (
    "pos_id"                         integer NOT NULL DEFAULT autoincrement
   ,"pos_prefix"                     char(5) NULL
   ,"pos_suffix"                     char(5) NULL
   ,"pos_lastno"                     unsigned int NULL
   ,"master_id"                      unsigned int NOT NULL
   ,"scheme_id"                      unsigned int NOT NULL
   ,"printer"                        varchar(30) NULL
   ,"pos_active"                     char(1) NOT NULL
   ,"template"                       char(30) NULL
   ,PRIMARY KEY ("pos_id") 
)
go

CREATE TABLE "DBA"."auto_subledger" (
    "auto_id"                        unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("auto_id") 
)
go

CREATE TABLE "DBA"."cashbook_summery_temp" (
    "cs_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"cs_date"                        date NOT NULL
   ,"cs_debit"                       "T_money" NOT NULL
   ,"cs_credit"                      "T_money" NOT NULL
   ,"acc_id_cash"                    unsigned int NOT NULL
   ,"cs_debit_cheque"                "T_money" NOT NULL
   ,"cs_credit_cheque"               "T_money" NOT NULL
   ,PRIMARY KEY ("cs_id") 
)
go

CREATE TABLE "DBA"."acc_tran_temp" (
    "acc_tran_id"                    unsigned int NOT NULL DEFAULT autoincrement
   ,"doc_id"                         unsigned int NOT NULL
   ,"amt"                            "T_money" NOT NULL
   ,"tran_type"                      tinyint NOT NULL
   ,"acc_id_db"                      unsigned int NULL
   ,"acc_id_cr"                      unsigned int NULL
   ,PRIMARY KEY ("acc_tran_id") 
)
go

CREATE TABLE "DBA"."tax" (
    "tax_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"tot"                            decimal(5,2) NOT NULL
   ,"vat"                            decimal(5,2) NOT NULL
   ,"sales_tax"                      decimal(5,2) NOT NULL
   ,"surcharge"                      decimal(5,2) NOT NULL
   ,"cst"                            decimal(5,2) NOT NULL
   ,"serv_tax"                       decimal(5,2) NOT NULL
   ,"sale_text"                      varchar(60) NULL
   ,PRIMARY KEY ("tax_id") 
)
go

CREATE TABLE "DBA"."seq_no" (
    "seq_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"seq_no"                         varchar(20) NOT NULL
   ,"stock"                          char(1) NULL
   ,"slno_id"                        unsigned int NULL
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"last_id"                        unsigned int NOT NULL
   ,PRIMARY KEY ("seq_id") 
)
go

CREATE TABLE "DBA"."seq_no_tran" (
    "id"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"tran_type"                      integer NOT NULL
   ,"tran_id"                        unsigned int NOT NULL
   ,"prev_id"                        unsigned int NOT NULL
   ,"seq_id"                         unsigned int NOT NULL
   ,PRIMARY KEY ("id") 
)
go

CREATE TABLE "DBA"."module" (
    "module_id"                      unsigned int NOT NULL DEFAULT autoincrement
   ,"module"                         varchar(10) NOT NULL
   ,PRIMARY KEY ("module_id") 
)
go

CREATE TABLE "DBA"."voucher" (
    "vou_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"ref_no"                         varchar(30) NOT NULL
   ,"vtype_id"                       unsigned int NOT NULL
   ,"vdate"                          date NOT NULL
   ,"vremarks"                       varchar(600) NULL
   ,PRIMARY KEY ("vou_id") 
)
go

CREATE TABLE "DBA"."voucher_details" (
    "details_id"                     unsigned int NOT NULL DEFAULT autoincrement
   ,"vou_id"                         unsigned int NOT NULL
   ,"acc_id"                         unsigned int NOT NULL
   ,"db_cr"                          char(1) NOT NULL
   ,"amount"                         "T_money" NOT NULL
   ,"dremarks"                       varchar(200) NULL
   ,"cheq_no"                        varchar(20) NULL
   ,"bank"                           varchar(40) NULL
   ,"branch"                         varchar(40) NULL
   ,"through"                        varchar(90) NULL
   ,PRIMARY KEY ("details_id") 
)
go

CREATE TABLE "DBA"."voucher_type" (
    "vtype_id"                       unsigned int NOT NULL
   ,"vdescr"                         varchar(20) NOT NULL
   ,"prefix"                         varchar(5) NULL
   ,"lastno"                         unsigned int NULL
   ,"suffix"                         varchar(5) NULL
   ,PRIMARY KEY ("vtype_id") 
)
go

CREATE GLOBAL TEMPORARY TABLE "DBA"."prid_temp" (
    "pr_id"                          unsigned int NOT NULL
   ,PRIMARY KEY ("pr_id") 
) ON COMMIT PRESERVE ROWS
go

CREATE TABLE "DBA"."billMemo" (
    "bill_memo_id"                   unsigned int NOT NULL
   ,"acc_id"                         unsigned int NULL
   ,"ref_no"                         varchar(30) NOT NULL
   ,"descr"                          varchar(200) NULL
   ,"challan_no"                     char(10) NULL
   ,"date"                           date NOT NULL
   ,"sale_tax_sale_id"               unsigned int NOT NULL
   ,"discount"                       "T_money" NOT NULL
   ,"cust_id"                        unsigned int NULL
   ,"Tax"                            "T_money" NOT NULL
   ,"Other_charges"                  "T_money" NOT NULL
   ,"Total_amt"                      "T_money" NOT NULL
   ,"type"                           char(1) NOT NULL DEFAULT 'S' check(type in( 'S','R' ) )
   ,"surcharge"                      "T_money" NOT NULL
   ,"bill_memo"                      char(1) NOT NULL check(bill_memo in( 'B','M','J' ) )
   ,"pos_id"                         integer NULL
   ,"tot"                            "T_money" NOT NULL
   ,"vat"                            "T_money" NOT NULL
   ,"serv_tax"                       "T_money" NOT NULL
   ,"sales_tax"                      "T_money" NOT NULL
   ,"roundoff"                       "T_money" NOT NULL
   ,"cst"                            "T_money" NOT NULL
   ,"mdatetime"                      timestamp NULL DEFAULT current timestamp
   ,"mold"                           "T_money" NULL
   ,PRIMARY KEY ("bill_memo_id") 
)
go

CREATE TABLE "DBA"."billMemoProduct" (
    "bill_product_id"                unsigned int NOT NULL
   ,"bill_memo_id"                   unsigned int NOT NULL
   ,"inv_main_id"                    unsigned int NOT NULL
   ,"qty"                            smallint NOT NULL DEFAULT 1
   ,"price"                          "T_money" NOT NULL
   ,"gross_profit"                   "T_money" NOT NULL
   ,"sale_warranty"                  tinyint NOT NULL DEFAULT 12
   ,"discount"                       "T_money" NOT NULL
   ,"actual_price"                   "T_money" NOT NULL
   ,"spec"                           varchar(200) NULL
   ,"actual_profit"                  "T_money" NULL
   ,"mold"                           "T_money" NULL
   ,PRIMARY KEY ("bill_product_id") 
)
go

CREATE TABLE "DBA"."deleted" (
    "delId"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"tableName"                      varchar(256) NOT NULL
   ,"id"                             unsigned int NOT NULL
   ,"primaryKey"                     varchar(256) NOT NULL
   ,PRIMARY KEY ("delId") 
)
go

CREATE TABLE "DBA"."Replication" (
    "ReplId"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"LastUpload"                     unsigned int NULL
   ,"LastUpdate"                     unsigned int NULL
   ,"mTransaction"                   char(1) NOT NULL
   ,PRIMARY KEY ("ReplId") 
)
go

CREATE TABLE "DBA"."product_temp" (
    "pr_id"                          unsigned int NOT NULL DEFAULT autoincrement
   ,"item"                           char(10) NOT NULL
   ,"brand"                          char(20) NOT NULL
   ,"model"                          char(20) NOT NULL
   ,"sl_no"                          char(1) NOT NULL DEFAULT 'N' check(sl_no in( 'Y','N' ) )
   ,"op_price"                       "T_money" NULL
   ,"last_price"                     "T_money" NULL
   ,"last_date"                      date NULL
   ,"acc_id_sale_tax"                integer NULL
   ,"spec"                           varchar(90) NULL
   ,"basic_price"                    "T_money" NULL
   ,"show"                           char(1) NOT NULL DEFAULT 'Y'
   ,"code"                           unsigned int NOT NULL
   ,"bar_code"                       varchar(20) NULL
   ,"counter_id"                     unsigned int NOT NULL
   ,PRIMARY KEY ("pr_id") 
)
go

CREATE TABLE "DBA"."error_table" (
    "err_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"err_no"                         integer NOT NULL
   ,"err_message"                    varchar(130) NOT NULL
   ,PRIMARY KEY ("err_id") 
)
go

CREATE TABLE "DBA"."BsTemp" (
    "ID"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"Amount"                         "T_money" NOT NULL
   ,"accIDDebit"                     unsigned int NULL DEFAULT 0
   ,"accIDCredit"                    unsigned int NULL DEFAULT 0
   ,PRIMARY KEY ("ID") 
)
go

CREATE TABLE "DBA"."acc_main_temp" (
    "acc_id"                         unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_code"                       char(15) NOT NULL
   ,"acc_name"                       varchar(40) NOT NULL
   ,"acc_type"                       char(1) NOT NULL check(acc_type in( 'L','A','E','I' ) )
   ,"acc_class"                      char(10) NOT NULL
   ,"acc_parent"                     unsigned int NOT NULL
   ,"acc_root"                       char(1) NOT NULL DEFAULT 'Y' check(acc_root in( 'Y','N','L','S' ) )
   ,"acc_opbal"                      "T_money" NOT NULL
   ,"Description"                    varchar(100) NULL
   ,"acc_db"                         "T_money" NOT NULL
   ,"acc_cr"                         "T_money" NOT NULL
   ,"acc_primary"                    char(1) NULL DEFAULT 'N'
   ,"acc_sibling"                    tinyint NOT NULL
   ,"IsHide"                         bit NOT NULL DEFAULT 0
   ,PRIMARY KEY ("acc_id") 
)
go

CREATE TABLE "DBA"."KVSetting" (
    "MKey"                           varchar(100) NOT NULL
   ,"MValue"                         long varchar NULL INLINE 256 PREFIX 8
   ,"IntValue"                       unsigned int NOT NULL DEFAULT 0
   ,PRIMARY KEY ("MKey") 
)
go

CREATE TABLE "DBA"."ThroughM" (
    "ID"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"MName"                          varchar(50) NULL
   ,PRIMARY KEY ("ID") 
)
go

CREATE TABLE "DBA"."PartyProduct" (
    "ID"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"acc_id"                         unsigned int NOT NULL
   ,"CounterCode"                    varchar(10) NOT NULL
   ,"Item"                           varchar(10) NOT NULL
   ,"Brand"                          varchar(20) NOT NULL
   ,PRIMARY KEY ("ID") 
)
go

CREATE TABLE "DBA"."KVOrderHistory" (
    "ID"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"OrderDate"                      date NOT NULL
   ,"OrderNo"                        varchar(30) NOT NULL
   ,"MailIDs"                        varchar(300) NOT NULL
   ,"MailTo"                         varchar(100) NOT NULL
   ,"OrderAmount"                    unsigned int NOT NULL DEFAULT 0
   ,"OrderXML"                       long varchar NOT NULL
   ,PRIMARY KEY ("ID") 
)
go

CREATE TABLE "DBA"."KVStockTallyHistory" (
    "ID"                             unsigned int NOT NULL DEFAULT autoincrement
   ,"StockTallyDate"                 date NOT NULL
   ,"StockTallyNo"                   unsigned int NOT NULL
   ,"StockTallyXML"                  long varchar NOT NULL
   ,PRIMARY KEY ("ID") 
)
go

commit work
go


-------------------------------------------------
--   Create text configurations
-------------------------------------------------


-------------------------------------------------
--   Create materialized views
-------------------------------------------------

commit
go



-------------------------------------------------
--   Create indexes
-------------------------------------------------

call sa_unload_display_table_status( 17738, 1, 128, 'DBA', 'acc_main' )
go

CREATE UNIQUE INDEX "acccode" ON "DBA"."acc_main"
    ( "acc_code" )
go

CREATE INDEX "accparent" ON "DBA"."acc_main"
    ( "acc_parent" )
go

CREATE INDEX "acc_class" ON "DBA"."acc_main"
    ( "acc_class" )
go

CREATE INDEX "acc_root" ON "DBA"."acc_main"
    ( "acc_root" )
go

call sa_unload_display_table_status( 17738, 2, 128, 'DBA', 'godown' )
go

CREATE UNIQUE INDEX "code" ON "DBA"."godown"
    ( "gw_code" )
go

call sa_unload_display_table_status( 17738, 3, 128, 'DBA', 'product' )
go

ALTER TABLE "DBA"."product"
    ADD NOT NULL FOREIGN KEY "counter_id" ("counter_id")
    REFERENCES "DBA"."counter" ("counter_id")
    
go

CREATE UNIQUE INDEX "code" ON "DBA"."product"
    ( "code" )
go

CREATE UNIQUE INDEX "bar_code" ON "DBA"."product"
    ( "bar_code" )
go

CREATE UNIQUE INDEX "Product" ON "DBA"."product"
    ( "item","brand","model" )
go

call sa_unload_display_table_status( 17738, 4, 128, 'DBA', 'bill_memo' )
go

ALTER TABLE "DBA"."bill_memo"
    ADD NOT NULL FOREIGN KEY "sale" ("sale_tax_sale_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."bill_memo"
    ADD FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."bill_memo"
    ADD FOREIGN KEY "customer" ("cust_id")
    REFERENCES "DBA"."customer" ("cust_id")
    ON DELETE SET NULL 
go

ALTER TABLE "DBA"."bill_memo"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

CREATE UNIQUE INDEX "billmemo" ON "DBA"."bill_memo"
    ( "bill_memo_id" )
go

CREATE INDEX "bill_memo_acc_id_type" ON "DBA"."bill_memo"
    ( "bill_memo_id","acc_id","type" )
go

CREATE INDEX "type" ON "DBA"."bill_memo"
    ( "type" )
go

CREATE INDEX "due_amt" ON "DBA"."bill_memo"
    ( "Due_amt" )
go

CREATE INDEX "date" ON "DBA"."bill_memo"
    ( "date" )
go

CREATE INDEX "refno" ON "DBA"."bill_memo"
    ( "ref_no" )
go

CREATE INDEX "acc_id" ON "DBA"."bill_memo"
    ( "acc_id" )
go

call sa_unload_display_table_status( 17738, 5, 128, 'DBA', 'invoice' )
go

ALTER TABLE "DBA"."invoice"
    ADD NOT NULL FOREIGN KEY "tax" ("sale_tax_purchase_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."invoice"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE INDEX "saletaxpurchase" ON "DBA"."invoice"
    ( "sale_tax_purchase_id" )
go

CREATE INDEX "refno" ON "DBA"."invoice"
    ( "ref_no" )
go

CREATE INDEX "accid" ON "DBA"."invoice"
    ( "acc_id" )
go

CREATE INDEX "due_amt" ON "DBA"."invoice"
    ( "due_amt" )
go

CREATE INDEX "inv_date" ON "DBA"."invoice"
    ( "inv_date" )
go

call sa_unload_display_table_status( 17738, 6, 128, 'DBA', 'invoice_product' )
go

ALTER TABLE "DBA"."invoice_product"
    ADD NOT NULL FOREIGN KEY "invoice" ("inv_id")
    REFERENCES "DBA"."invoice" ("inv_id")
    
go

ALTER TABLE "DBA"."invoice_product"
    ADD NOT NULL FOREIGN KEY "inv_main" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

call sa_unload_display_table_status( 17738, 7, 128, 'DBA', 'acc_tran' )
go

ALTER TABLE "DBA"."acc_tran"
    ADD FOREIGN KEY "acciddb" ("acc_id_db")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."acc_tran"
    ADD FOREIGN KEY "accidcr" ("acc_id_cr")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."acc_tran"
    ADD NOT NULL FOREIGN KEY "acc_tran_fkey" ("tran_type")
    REFERENCES "DBA"."tran_type" ("id")
    
go

CREATE UNIQUE INDEX "trantypedocid" ON "DBA"."acc_tran"
    ( "doc_id","tran_type" )
go

CREATE INDEX "acciddb" ON "DBA"."acc_tran"
    ( "acc_id_db" )
go

CREATE INDEX "accidcr" ON "DBA"."acc_tran"
    ( "acc_id_cr" )
go

call sa_unload_display_table_status( 17738, 8, 128, 'DBA', 'bill_memo_product' )
go

ALTER TABLE "DBA"."bill_memo_product"
    ADD NOT NULL FOREIGN KEY "FK_BILL_PRO_REF_1099_BILL" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

ALTER TABLE "DBA"."bill_memo_product"
    ADD NOT NULL FOREIGN KEY "inv_main" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

ALTER TABLE "DBA"."bill_memo_product"
    ADD FOREIGN KEY "coupon_id" ("coupon_id")
    REFERENCES "DBA"."coupon" ("coupon_id")
    
go

call sa_unload_display_table_status( 17738, 9, 128, 'DBA', 'customer' )
go

ALTER TABLE "DBA"."customer"
    ADD FOREIGN KEY "acc" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 10, 128, 'DBA', 'Details' )
go

ALTER TABLE "DBA"."Details"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 11, 128, 'DBA', 'godown_tran' )
go

ALTER TABLE "DBA"."godown_tran"
    ADD NOT NULL FOREIGN KEY "gwidfrom" ("gw_id_from")
    REFERENCES "DBA"."godown" ("gw_id")
    
go

ALTER TABLE "DBA"."godown_tran"
    ADD NOT NULL FOREIGN KEY "gwidto" ("gw_id_to")
    REFERENCES "DBA"."godown" ("gw_id")
    
go

CREATE INDEX "trandate" ON "DBA"."godown_tran"
    ( "tran_date" )
go

call sa_unload_display_table_status( 17738, 12, 128, 'DBA', 'inv_main' )
go

ALTER TABLE "DBA"."inv_main"
    ADD NOT NULL FOREIGN KEY "godown" ("gw_id")
    REFERENCES "DBA"."godown" ("gw_id")
    
go

ALTER TABLE "DBA"."inv_main"
    ADD NOT NULL FOREIGN KEY "product" ("pr_id")
    REFERENCES "DBA"."product" ("pr_id")
    
go

CREATE UNIQUE INDEX "product" ON "DBA"."inv_main"
    ( "pr_id","gw_id" )
go

call sa_unload_display_table_status( 17738, 13, 128, 'DBA', 'pbcattbl' )
go

CREATE UNIQUE INDEX "pbcatt_x" ON "DBA"."pbcattbl"
    ( "pbt_tnam","pbt_ownr" )
go

call sa_unload_display_table_status( 17738, 14, 128, 'DBA', 'pbcatcol' )
go

CREATE UNIQUE INDEX "pbcatc_x" ON "DBA"."pbcatcol"
    ( "pbc_tnam","pbc_ownr","pbc_cnam" )
go

call sa_unload_display_table_status( 17738, 15, 128, 'DBA', 'pbcatfmt' )
go

CREATE UNIQUE INDEX "pbcatf_x" ON "DBA"."pbcatfmt"
    ( "pbf_name" )
go

call sa_unload_display_table_status( 17738, 16, 128, 'DBA', 'pbcatvld' )
go

CREATE UNIQUE INDEX "pbcatv_x" ON "DBA"."pbcatvld"
    ( "pbv_name" )
go

call sa_unload_display_table_status( 17738, 17, 128, 'DBA', 'pbcatedt' )
go

CREATE UNIQUE INDEX "pbcate_x" ON "DBA"."pbcatedt"
    ( "pbe_name","pbe_seqn" )
go

call sa_unload_display_table_status( 17738, 18, 128, 'DBA', 'tran_type' )
go

call sa_unload_display_table_status( 17738, 19, 128, 'DBA', 'acc_setup' )
go

ALTER TABLE "DBA"."acc_setup"
    ADD NOT NULL FOREIGN KEY "godown" ("default_godown")
    REFERENCES "DBA"."godown" ("gw_id")
    
go

ALTER TABLE "DBA"."acc_setup"
    ADD FOREIGN KEY "cash" ("default_cash_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."acc_setup"
    ADD FOREIGN KEY "capital" ("capitalaccount")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 20, 128, 'DBA', 'cash_payment' )
go

ALTER TABLE "DBA"."cash_payment"
    ADD NOT NULL FOREIGN KEY "fkey_accid" ("cp_acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cash_payment"
    ADD NOT NULL FOREIGN KEY "fkey_cash" ("cp_acc_id_cash")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cash_payment"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

CREATE UNIQUE INDEX "cp" ON "DBA"."cash_payment"
    ( "cp_id" )
go

CREATE INDEX "cp_date" ON "DBA"."cash_payment"
    ( "cp_date" )
go

call sa_unload_display_table_status( 17738, 21, 128, 'DBA', 'cheque_receipt' )
go

ALTER TABLE "DBA"."cheque_receipt"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cheque_receipt"
    ADD NOT NULL FOREIGN KEY "accidbank" ("acc_id_cash_bank")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cheque_receipt"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

CREATE INDEX "cheq_no" ON "DBA"."cheque_receipt"
    ( "cheq_no" )
go

CREATE INDEX "rec_date" ON "DBA"."cheque_receipt"
    ( "rec_date" )
go

call sa_unload_display_table_status( 17738, 22, 128, 'DBA', 'cheque_payment' )
go

ALTER TABLE "DBA"."cheque_payment"
    ADD NOT NULL FOREIGN KEY "accidbank" ("acc_id_bank")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cheque_payment"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cheque_payment"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

CREATE INDEX "chequeno" ON "DBA"."cheque_payment"
    ( "cheq_no" )
go

CREATE INDEX "cheqdate" ON "DBA"."cheque_payment"
    ( "cheq_date" )
go

call sa_unload_display_table_status( 17738, 23, 128, 'DBA', 'receipt_bill_memo' )
go

ALTER TABLE "DBA"."receipt_bill_memo"
    ADD NOT NULL FOREIGN KEY "billmemo" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

ALTER TABLE "DBA"."receipt_bill_memo"
    ADD FOREIGN KEY "cheque" ("cheq_id")
    REFERENCES "DBA"."cheque_receipt" ("cheq_id")
    
go

ALTER TABLE "DBA"."receipt_bill_memo"
    ADD FOREIGN KEY "receipt" ("cr_id")
    REFERENCES "DBA"."cash_receipt" ("cr_id")
    
go

call sa_unload_display_table_status( 17738, 24, 128, 'DBA', 'cash_receipt' )
go

ALTER TABLE "DBA"."cash_receipt"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cash_receipt"
    ADD NOT NULL FOREIGN KEY "accidcash" ("acc_id_cash")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cash_receipt"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

CREATE INDEX "rec_date" ON "DBA"."cash_receipt"
    ( "rec_date" )
go

call sa_unload_display_table_status( 17738, 25, 128, 'DBA', 'Journal' )
go

ALTER TABLE "DBA"."Journal"
    ADD NOT NULL FOREIGN KEY "acc" ("jou_acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."Journal"
    ADD NOT NULL FOREIGN KEY "jou" ("jou_no")
    REFERENCES "DBA"."journal_no" ("jou_no")
    
go

CREATE INDEX "jour" ON "DBA"."Journal"
    ( "jou_no" )
go

call sa_unload_display_table_status( 17738, 26, 128, 'DBA', 'journal_no' )
go

CREATE INDEX "date" ON "DBA"."journal_no"
    ( "jou_date" )
go

call sa_unload_display_table_status( 17738, 27, 128, 'DBA', 'Debit_credit_note' )
go

ALTER TABLE "DBA"."Debit_credit_note"
    ADD NOT NULL FOREIGN KEY "accdb" ("acc_id_db")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."Debit_credit_note"
    ADD NOT NULL FOREIGN KEY "acccr" ("acc_id_cr")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE INDEX "dc_date" ON "DBA"."Debit_credit_note"
    ( "dc_date" )
go

call sa_unload_display_table_status( 17738, 28, 128, 'DBA', 'contra_entries' )
go

ALTER TABLE "DBA"."contra_entries"
    ADD NOT NULL FOREIGN KEY "accdb" ("acc_id_db")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."contra_entries"
    ADD NOT NULL FOREIGN KEY "acccr" ("acc_id_cr")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "contra_entries" ON "DBA"."contra_entries"
    ( "contra_id" )
go

CREATE INDEX "contra_date" ON "DBA"."contra_entries"
    ( "contra_date" )
go

call sa_unload_display_table_status( 17738, 29, 128, 'DBA', 'department' )
go

call sa_unload_display_table_status( 17738, 30, 128, 'DBA', 'cashbook_summery' )
go

ALTER TABLE "DBA"."cashbook_summery"
    ADD NOT NULL FOREIGN KEY "cash" ("acc_id_cash")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "date" ON "DBA"."cashbook_summery"
    ( "cs_date","acc_id_cash" )
go

CREATE INDEX "dat" ON "DBA"."cashbook_summery"
    ( "cs_date" )
go

call sa_unload_display_table_status( 17738, 31, 128, 'DBA', 'WebConnection' )
go

call sa_unload_display_table_status( 17738, 32, 128, 'DBA', 'WebDocumentType' )
go

call sa_unload_display_table_status( 17738, 33, 128, 'DBA', 'WebSynchronize' )
go

call sa_unload_display_table_status( 17738, 34, 128, 'DBA', 'WebTemplate' )
go

ALTER TABLE "DBA"."WebTemplate"
    ADD NOT NULL FOREIGN KEY "WebConnection" ("ConnectionId")
    REFERENCES "DBA"."WebConnection" ("Id")
    
go

ALTER TABLE "DBA"."WebTemplate"
    ADD NOT NULL FOREIGN KEY "WebDocumentType" ("DocType")
    REFERENCES "DBA"."WebDocumentType" ("Id")
    
go

ALTER TABLE "DBA"."WebTemplate"
    ADD FOREIGN KEY "WebTemplate" ("ParentId")
    REFERENCES "DBA"."WebTemplate" ("Id")
    ON DELETE CASCADE 
go

CREATE UNIQUE INDEX "NameInFolder" ON "DBA"."WebTemplate"
    ( "Name","ParentId" )
go

call sa_unload_display_table_status( 17738, 35, 128, 'DBA', 'WebData' )
go

ALTER TABLE "DBA"."WebData"
    ADD NOT NULL FOREIGN KEY "WebTemplate" ("Id")
    REFERENCES "DBA"."WebTemplate" ("Id")
    ON DELETE CASCADE 
go

call sa_unload_display_table_status( 17738, 36, 128, 'DBA', 'WebVersion' )
go

call sa_unload_display_table_status( 17738, 37, 128, 'DBA', 'Expence' )
go

ALTER TABLE "DBA"."Expence"
    ADD NOT NULL FOREIGN KEY "accidexp" ("acc_id_exp")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."Expence"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE INDEX "exp_date" ON "DBA"."Expence"
    ( "exp_date" )
go

call sa_unload_display_table_status( 17738, 38, 128, 'DBA', 'cash_bank_journal' )
go

ALTER TABLE "DBA"."cash_bank_journal"
    ADD NOT NULL FOREIGN KEY "acciddb" ("acc_id_db")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."cash_bank_journal"
    ADD NOT NULL FOREIGN KEY "accidcr" ("acc_id_cr")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "cbno" ON "DBA"."cash_bank_journal"
    ( "cb_no" )
go

CREATE INDEX "cb_date" ON "DBA"."cash_bank_journal"
    ( "cb_date" )
go

call sa_unload_display_table_status( 17738, 39, 128, 'DBA', 'bank_recon' )
go

ALTER TABLE "DBA"."bank_recon"
    ADD FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."bank_recon"
    ADD NOT NULL FOREIGN KEY "accidbank" ("acc_id_bank")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."bank_recon"
    ADD FOREIGN KEY "trantype" ("tran_type")
    REFERENCES "DBA"."tran_type" ("id")
    
go

CREATE INDEX "cleared" ON "DBA"."bank_recon"
    ( "clear_date","cleared" )
go

CREATE INDEX "tran" ON "DBA"."bank_recon"
    ( "doc_id","tran_type" )
go

call sa_unload_display_table_status( 17738, 40, 128, 'DBA', 'bank_balances' )
go

ALTER TABLE "DBA"."bank_balances"
    ADD NOT NULL FOREIGN KEY "bbalance" ("acc_id_bank")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "accid" ON "DBA"."bank_balances"
    ( "acc_id_bank" )
go

call sa_unload_display_table_status( 17738, 41, 128, 'DBA', 'temp_ledger' )
go

call sa_unload_display_table_status( 17738, 42, 128, 'DBA', 'bs_temp' )
go

CREATE INDEX "parent" ON "DBA"."bs_temp"
    ( "bs_parent" )
go

CREATE UNIQUE INDEX "accid" ON "DBA"."bs_temp"
    ( "bs_acc_id" )
go

call sa_unload_display_table_status( 17738, 43, 128, 'DBA', 'temp_ledger1' )
go

call sa_unload_display_table_status( 17738, 44, 128, 'DBA', 'temp_accid' )
go

call sa_unload_display_table_status( 17738, 45, 128, 'DBA', 'temp1_accid' )
go

call sa_unload_display_table_status( 17738, 46, 128, 'DBA', 'temp_item' )
go

call sa_unload_display_table_status( 17738, 47, 128, 'DBA', 'temp_brand' )
go

call sa_unload_display_table_status( 17738, 48, 128, 'DBA', 'temp_model' )
go

call sa_unload_display_table_status( 17738, 49, 128, 'DBA', 'bill_series' )
go

ALTER TABLE "DBA"."bill_series"
    ADD NOT NULL FOREIGN KEY "accid" ("ACC_ID")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "acc_id" ON "DBA"."bill_series"
    ( "ACC_ID" )
go

call sa_unload_display_table_status( 17738, 50, 128, 'DBA', 'bill_memo_cheque_details' )
go

ALTER TABLE "DBA"."bill_memo_cheque_details"
    ADD NOT NULL FOREIGN KEY "billmemo" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

call sa_unload_display_table_status( 17738, 51, 128, 'DBA', 'opening_cheque_details' )
go

ALTER TABLE "DBA"."opening_cheque_details"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 52, 128, 'DBA', 'stock_journal' )
go

CREATE INDEX "refno" ON "DBA"."stock_journal"
    ( "ref_no" )
go

call sa_unload_display_table_status( 17738, 53, 128, 'DBA', 'stock_journal_product' )
go

ALTER TABLE "DBA"."stock_journal_product"
    ADD NOT NULL FOREIGN KEY "stk" ("sj_id")
    REFERENCES "DBA"."stock_journal" ("sj_id")
    
go

ALTER TABLE "DBA"."stock_journal_product"
    ADD NOT NULL FOREIGN KEY "invmain" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

call sa_unload_display_table_status( 17738, 54, 128, 'DBA', 'acclist_temp' )
go

call sa_unload_display_table_status( 17738, 55, 128, 'DBA', 'acc_temp' )
go

call sa_unload_display_table_status( 17738, 56, 128, 'DBA', 'godown_tran_product' )
go

ALTER TABLE "DBA"."godown_tran_product"
    ADD NOT NULL FOREIGN KEY "product" ("pr_id")
    REFERENCES "DBA"."product" ("pr_id")
    
go

ALTER TABLE "DBA"."godown_tran_product"
    ADD NOT NULL FOREIGN KEY "tran" ("tran_id")
    REFERENCES "DBA"."godown_tran" ("tran_id")
    
go

call sa_unload_display_table_status( 17738, 57, 128, 'DBA', 'bill_memo_descriptive_sales' )
go

ALTER TABLE "DBA"."bill_memo_descriptive_sales"
    ADD NOT NULL FOREIGN KEY "billmemo" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

call sa_unload_display_table_status( 17738, 58, 128, 'DBA', 'invoice_descriptive_purchase' )
go

ALTER TABLE "DBA"."invoice_descriptive_purchase"
    ADD NOT NULL FOREIGN KEY "invoicedesc" ("inv_id")
    REFERENCES "DBA"."invoice" ("inv_id")
    
go

call sa_unload_display_table_status( 17738, 59, 128, 'DBA', 'unit_of_measurement' )
go

call sa_unload_display_table_status( 17738, 60, 128, 'DBA', 'bill_memo_journal' )
go

ALTER TABLE "DBA"."bill_memo_journal"
    ADD NOT NULL FOREIGN KEY "billmemo" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

ALTER TABLE "DBA"."bill_memo_journal"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 61, 128, 'DBA', 'price_list' )
go

ALTER TABLE "DBA"."price_list"
    ADD NOT NULL FOREIGN KEY "prid" ("pr_id")
    REFERENCES "DBA"."product" ("pr_id")
    
go

call sa_unload_display_table_status( 17738, 62, 128, 'DBA', 'debitaccount' )
go

CREATE UNIQUE INDEX "db_name" ON "DBA"."debitaccount"
    ( "pos_id","db_acccode" )
go

call sa_unload_display_table_status( 17738, 63, 128, 'DBA', 'brand' )
go

CREATE UNIQUE INDEX "brand" ON "DBA"."brand"
    ( "pos_id","brand" )
go

call sa_unload_display_table_status( 17738, 64, 128, 'DBA', 'sale_code' )
go

CREATE UNIQUE INDEX "sale_code unique (acc_code)" ON "DBA"."sale_code"
    ( "pos_id","acc_code" )
go

call sa_unload_display_table_status( 17738, 65, 128, 'DBA', 'audit_lock' )
go

ALTER TABLE "DBA"."audit_lock"
    ADD NOT NULL FOREIGN KEY "fkey_accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "accid" ON "DBA"."audit_lock"
    ( "acc_id" )
go

call sa_unload_display_table_status( 17738, 66, 128, 'DBA', 'bm_journal_temp' )
go

call sa_unload_display_table_status( 17738, 67, 128, 'DBA', 'chequeincash_table' )
go

ALTER TABLE "DBA"."chequeincash_table"
    ADD NOT NULL FOREIGN KEY "chequeincash" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "cheque" ON "DBA"."chequeincash_table"
    ( "acc_id" )
go

call sa_unload_display_table_status( 17738, 68, 128, 'DBA', 'tag' )
go

CREATE INDEX "tag" ON "DBA"."tag"
    ( "tag" )
go

CREATE INDEX "tran_type" ON "DBA"."tag"
    ( "doc_id","tran_type" )
go

call sa_unload_display_table_status( 17738, 69, 128, 'DBA', 'postdated_cheques' )
go

ALTER TABLE "DBA"."postdated_cheques"
    ADD NOT NULL FOREIGN KEY "accid" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE INDEX "bin" ON "DBA"."postdated_cheques"
    ( "bin" )
go

CREATE INDEX "cheq" ON "DBA"."postdated_cheques"
    ( "cheq_no" )
go

CREATE INDEX "cheqdate" ON "DBA"."postdated_cheques"
    ( "cheq_date" )
go

CREATE UNIQUE INDEX "cheque" ON "DBA"."postdated_cheques"
    ( "cheq_no","cheq_amt","bank" )
go

call sa_unload_display_table_status( 17738, 70, 128, 'DBA', 'postdated_cheques_temp' )
go

call sa_unload_display_table_status( 17738, 71, 128, 'DBA', 'date_series' )
go

CREATE UNIQUE INDEX "mdate" ON "DBA"."date_series"
    ( "mdate" )
go

call sa_unload_display_table_status( 17738, 72, 128, 'DBA', 'month_series' )
go

CREATE UNIQUE INDEX "month" ON "DBA"."month_series"
    ( "mmonth" )
go

call sa_unload_display_table_status( 17738, 73, 128, 'DBA', 'pointofsale' )
go

ALTER TABLE "DBA"."pointofsale"
    ADD NOT NULL FOREIGN KEY "master_id" ("master_id")
    REFERENCES "DBA"."pos_master" ("master_id")
    
go

ALTER TABLE "DBA"."pointofsale"
    ADD NOT NULL FOREIGN KEY "scheme_id" ("scheme_id")
    REFERENCES "DBA"."pos_scheme" ("scheme_id")
    
go

CREATE UNIQUE INDEX "master_scheme" ON "DBA"."pointofsale"
    ( "master_id","scheme_id" )
go

call sa_unload_display_table_status( 17738, 74, 128, 'DBA', 'delete_bill_memo' )
go

call sa_unload_display_table_status( 17738, 75, 128, 'DBA', 'label_temp' )
go

call sa_unload_display_table_status( 17738, 76, 128, 'DBA', 'godown_temp' )
go

call sa_unload_display_table_status( 17738, 77, 128, 'DBA', 'price_list_temp' )
go

call sa_unload_display_table_status( 17738, 78, 128, 'DBA', 'inv_main_temp' )
go

CREATE UNIQUE INDEX "prid" ON "DBA"."inv_main_temp"
    ( "pr_id","gw_id" )
go

call sa_unload_display_table_status( 17738, 79, 128, 'DBA', 'slno_invoice_product' )
go

ALTER TABLE "DBA"."slno_invoice_product"
    ADD NOT NULL FOREIGN KEY "fkey_purch" ("invoice_product_id")
    REFERENCES "DBA"."invoice_product" ("invoice_product_id")
    
go

ALTER TABLE "DBA"."slno_invoice_product"
    ADD FOREIGN KEY "fkey_container" ("cid")
    REFERENCES "DBA"."container" ("cid")
    
go

CREATE UNIQUE INDEX "slno_purchase" ON "DBA"."slno_invoice_product"
    ( "invoice_product_id","sl_no" )
go

CREATE INDEX "purchase_slno" ON "DBA"."slno_invoice_product"
    ( "sl_no" )
go

call sa_unload_display_table_status( 17738, 80, 128, 'DBA', 'container' )
go

CREATE UNIQUE INDEX "cname" ON "DBA"."container"
    ( "cname" )
go

CREATE UNIQUE INDEX "cno" ON "DBA"."container"
    ( "cno" )
go

call sa_unload_display_table_status( 17738, 81, 128, 'DBA', 'slno_bill_memo_product' )
go

ALTER TABLE "DBA"."slno_bill_memo_product"
    ADD NOT NULL FOREIGN KEY "fkey_slno_sale" ("product_id")
    REFERENCES "DBA"."bill_memo_product" ("bill_product_id")
    
go

CREATE UNIQUE INDEX "sale_slno" ON "DBA"."slno_bill_memo_product"
    ( "product_id","sl_no" )
go

CREATE INDEX "slno_sale" ON "DBA"."slno_bill_memo_product"
    ( "sl_no" )
go

call sa_unload_display_table_status( 17738, 82, 128, 'DBA', 'slno_op' )
go

ALTER TABLE "DBA"."slno_op"
    ADD NOT NULL FOREIGN KEY "fkey_op" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

CREATE UNIQUE INDEX "slno_op" ON "DBA"."slno_op"
    ( "inv_main_id","sl_no" )
go

CREATE INDEX "op_slno" ON "DBA"."slno_op"
    ( "sl_no" )
go

call sa_unload_display_table_status( 17738, 83, 128, 'DBA', 'gp_formula' )
go

call sa_unload_display_table_status( 17738, 84, 128, 'DBA', 'temp' )
go

call sa_unload_display_table_status( 17738, 85, 128, 'DBA', 'pos_master' )
go

CREATE UNIQUE INDEX "pos_name" ON "DBA"."pos_master"
    ( "pos_name" )
go

call sa_unload_display_table_status( 17738, 86, 128, 'DBA', 'pos_color' )
go

CREATE UNIQUE INDEX "color_name" ON "DBA"."pos_color"
    ( "color_name" )
go

call sa_unload_display_table_status( 17738, 87, 128, 'DBA', 'pos_scheme' )
go

ALTER TABLE "DBA"."pos_scheme"
    ADD FOREIGN KEY "acc_id_cr" ("acc_id_cr")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."pos_scheme"
    ADD NOT NULL FOREIGN KEY "color_id" ("color_id")
    REFERENCES "DBA"."pos_color" ("color_id")
    
go

ALTER TABLE "DBA"."pos_scheme"
    ADD FOREIGN KEY "acc_id_db" ("acc_id_db")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "scheme_name" ON "DBA"."pos_scheme"
    ( "scheme_name" )
go

call sa_unload_display_table_status( 17738, 88, 128, 'DBA', 'tempcode' )
go

call sa_unload_display_table_status( 17738, 89, 128, 'DBA', 'counter' )
go

CREATE UNIQUE INDEX "counter" ON "DBA"."counter"
    ( "counter_code" )
go

call sa_unload_display_table_status( 17738, 90, 128, 'DBA', 'counter_temp' )
go

call sa_unload_display_table_status( 17738, 91, 128, 'DBA', 'coupon' )
go

call sa_unload_display_table_status( 17738, 92, 128, 'DBA', 'coupon_temp' )
go

call sa_unload_display_table_status( 17738, 93, 128, 'DBA', 'pos_scheme_debit' )
go

ALTER TABLE "DBA"."pos_scheme_debit"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."pos_scheme_debit"
    ADD NOT NULL FOREIGN KEY "scheme_id" ("scheme_id")
    REFERENCES "DBA"."pos_scheme" ("scheme_id")
    
go

call sa_unload_display_table_status( 17738, 94, 128, 'DBA', 'pos_scheme_credit' )
go

ALTER TABLE "DBA"."pos_scheme_credit"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."pos_scheme_credit"
    ADD NOT NULL FOREIGN KEY "scheme_id" ("scheme_id")
    REFERENCES "DBA"."pos_scheme" ("scheme_id")
    
go

call sa_unload_display_table_status( 17738, 95, 128, 'DBA', 'tally_physical_stock' )
go

ALTER TABLE "DBA"."tally_physical_stock"
    ADD NOT NULL FOREIGN KEY "inv_main_id" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

call sa_unload_display_table_status( 17738, 96, 128, 'DBA', 'tally' )
go

ALTER TABLE "DBA"."tally"
    ADD NOT NULL FOREIGN KEY "sj_id" ("sj_id")
    REFERENCES "DBA"."stock_journal" ("sj_id")
    
go

call sa_unload_display_table_status( 17738, 97, 128, 'DBA', 'tally_details' )
go

ALTER TABLE "DBA"."tally_details"
    ADD NOT NULL FOREIGN KEY "tally_id" ("tally_id")
    REFERENCES "DBA"."tally" ("tally_id")
    
go

ALTER TABLE "DBA"."tally_details"
    ADD NOT NULL FOREIGN KEY "inv_main_id" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

call sa_unload_display_table_status( 17738, 98, 128, 'DBA', 'pos_master_temp' )
go

call sa_unload_display_table_status( 17738, 99, 128, 'DBA', 'pos_color_temp' )
go

call sa_unload_display_table_status( 17738, 100, 128, 'DBA', 'pos_scheme_temp' )
go

call sa_unload_display_table_status( 17738, 101, 128, 'DBA', 'pos_scheme_debit_temp' )
go

call sa_unload_display_table_status( 17738, 102, 128, 'DBA', 'pos_scheme_credit_temp' )
go

call sa_unload_display_table_status( 17738, 103, 128, 'DBA', 'lock_table' )
go

call sa_unload_display_table_status( 17738, 104, 128, 'DBA', 'pointofsale_temp' )
go

call sa_unload_display_table_status( 17738, 105, 128, 'DBA', 'auto_subledger' )
go

ALTER TABLE "DBA"."auto_subledger"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "acc_id" ON "DBA"."auto_subledger"
    ( "acc_id" )
go

call sa_unload_display_table_status( 17738, 106, 128, 'DBA', 'cashbook_summery_temp' )
go

call sa_unload_display_table_status( 17738, 107, 128, 'DBA', 'acc_tran_temp' )
go

call sa_unload_display_table_status( 17738, 108, 128, 'DBA', 'tax' )
go

ALTER TABLE "DBA"."tax"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "acc_id" ON "DBA"."tax"
    ( "acc_id" )
go

call sa_unload_display_table_status( 17738, 109, 128, 'DBA', 'seq_no' )
go

ALTER TABLE "DBA"."seq_no"
    ADD NOT NULL FOREIGN KEY "inv_main_id" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

ALTER TABLE "DBA"."seq_no"
    ADD FOREIGN KEY "slno_id" ("slno_id")
    REFERENCES "DBA"."slno_invoice_product" ("slno_id")
    
go

CREATE UNIQUE INDEX "seq_no" ON "DBA"."seq_no"
    ( "seq_no" )
go

call sa_unload_display_table_status( 17738, 110, 128, 'DBA', 'seq_no_tran' )
go

call sa_unload_display_table_status( 17738, 111, 128, 'DBA', 'module' )
go

call sa_unload_display_table_status( 17738, 112, 128, 'DBA', 'voucher' )
go

ALTER TABLE "DBA"."voucher"
    ADD NOT NULL FOREIGN KEY "vtype_id" ("vtype_id")
    REFERENCES "DBA"."voucher_type" ("vtype_id")
    
go

call sa_unload_display_table_status( 17738, 113, 128, 'DBA', 'voucher_details' )
go

ALTER TABLE "DBA"."voucher_details"
    ADD NOT NULL FOREIGN KEY "vou_id" ("vou_id")
    REFERENCES "DBA"."voucher" ("vou_id")
    
go

ALTER TABLE "DBA"."voucher_details"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

call sa_unload_display_table_status( 17738, 114, 128, 'DBA', 'voucher_type' )
go

call sa_unload_display_table_status( 17738, 115, 128, 'DBA', 'prid_temp' )
go

call sa_unload_display_table_status( 17738, 116, 128, 'DBA', 'billMemo' )
go

ALTER TABLE "DBA"."billMemo"
    ADD FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."billMemo"
    ADD FOREIGN KEY "pos_id" ("pos_id")
    REFERENCES "DBA"."pointofsale" ("pos_id")
    
go

ALTER TABLE "DBA"."billMemo"
    ADD FOREIGN KEY "sale_tax_sale_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

ALTER TABLE "DBA"."billMemo"
    ADD NOT NULL FOREIGN KEY "bill_memo_id" ("bill_memo_id")
    REFERENCES "DBA"."bill_memo" ("bill_memo_id")
    
go

call sa_unload_display_table_status( 17738, 117, 128, 'DBA', 'billMemoProduct' )
go

ALTER TABLE "DBA"."billMemoProduct"
    ADD NOT NULL FOREIGN KEY "bill_memo_id" ("bill_memo_id")
    REFERENCES "DBA"."billMemo" ("bill_memo_id")
    
go

ALTER TABLE "DBA"."billMemoProduct"
    ADD NOT NULL FOREIGN KEY "inv_main_id" ("inv_main_id")
    REFERENCES "DBA"."inv_main" ("inv_main_id")
    
go

call sa_unload_display_table_status( 17738, 118, 128, 'DBA', 'deleted' )
go

call sa_unload_display_table_status( 17738, 119, 128, 'DBA', 'Replication' )
go

call sa_unload_display_table_status( 17738, 120, 128, 'DBA', 'product_temp' )
go

call sa_unload_display_table_status( 17738, 121, 128, 'DBA', 'error_table' )
go

CREATE UNIQUE INDEX "err" ON "DBA"."error_table"
    ( "err_no" )
go

call sa_unload_display_table_status( 17738, 122, 128, 'DBA', 'BsTemp' )
go

call sa_unload_display_table_status( 17738, 123, 128, 'DBA', 'acc_main_temp' )
go

call sa_unload_display_table_status( 17738, 124, 128, 'DBA', 'KVSetting' )
go

call sa_unload_display_table_status( 17738, 125, 128, 'DBA', 'ThroughM' )
go

call sa_unload_display_table_status( 17738, 126, 128, 'DBA', 'PartyProduct' )
go

ALTER TABLE "DBA"."PartyProduct"
    ADD NOT NULL FOREIGN KEY "acc_id" ("acc_id")
    REFERENCES "DBA"."acc_main" ("acc_id")
    
go

CREATE UNIQUE INDEX "ID" ON "DBA"."PartyProduct"
    ( "ID" )
go

call sa_unload_display_table_status( 17738, 127, 128, 'DBA', 'KVOrderHistory' )
go

CREATE UNIQUE INDEX "ID" ON "DBA"."KVOrderHistory"
    ( "ID" )
go

call sa_unload_display_table_status( 17738, 128, 128, 'DBA', 'KVStockTallyHistory' )
go

CREATE UNIQUE INDEX "ID" ON "DBA"."KVStockTallyHistory"
    ( "ID" )
go

commit work
go


-------------------------------------------------
--   Create immediate materialized views
-------------------------------------------------

commit
go



-------------------------------------------------
--   Create functions
-------------------------------------------------

commit
go


create function dba.func_getcrossop( in @invmainid unsigned integer ) 
returns integer
begin
  declare @ret integer;
  declare @item char(10);
  declare @brand char(20);
  declare @model char(20);
  declare @gwcode char(15);
  declare @prid unsigned integer;
  declare @gwid numeric(3);
  declare @invid unsigned integer;
  declare @code unsigned integer;
  //select item,brand,model into @item,@brand,@model from
  //  inv_main key join product where inv_main_id = @invmainid;
  select code into @code from inv_main key join product where inv_main_id = @invmainid;
  select gw_code into @gwcode from inv_main
      key join godown where inv_main_id = @invmainid;
  //select pr_id into @prid from product_temp where item = 
  //  @item and brand = @brand and model = @model;
  select pr_id into @prid from product_temp where code = @code;
  select gw_id into @gwid from godown_temp where gw_code = @gwcode;
  if @prid is null or @gwid is null then return(0)
  end if;
  select op+db-cr into @ret from inv_main_temp
    where pr_id = @prid and gw_id = @gwid;
  if @ret is null then set @ret = 0
  end if;
  return @ret
end
go


create function dba.func_exportbalances( in @inv char(1),in @acc char(1) ) 
returns integer
begin
  declare @ret integer;
  if @acc = 'Y' then
    unload from table acc_main into file 'c:\\program files\\capital\\acc\\sql\\acc_main.sql';
    if @@error <> 0 then return(@@error)
    end if end if;
  if @inv = 'Y' then
    unload from table inv_main into file 'c:\\program files\\capital\\acc\\sql\\inv_main.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table counter into file 'c:\\program files\\capital\\acc\\sql\\counter.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table product into file 'c:\\program files\\capital\\acc\\sql\\product.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table godown into file 'c:\\program files\\capital\\acc\\sql\\godown.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table price_list into file 'c:\\program files\\capital\\acc\\sql\\price_list.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table pos_master into file 'c:\\program files\\capital\\acc\\sql\\pos_master.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table pos_color into file 'c:\\program files\\capital\\acc\\sql\\pos_color.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table pos_scheme into file 'c:\\program files\\capital\\acc\\sql\\pos_scheme.sql';
    if @@error <> 0 then return(@@error)
    end if;
    unload from table pointofsale into file 'c:\\program files\\capital\\acc\\sql\\pointofsale.sql';
    if @@error <> 0 then return(@@error)
    end if;
    set @ret = @@error
  end if;
  return(@ret)
end
go


create function dba.func_setcode( in @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
at 'acc;;DBA;func_setcode'
go

create function dba.func_getcrossprid( in @pr_id unsigned integer ) 
returns unsigned integer
begin
  declare @item char(10);
  declare @brand char(20);
  declare @model char(20);
  declare @lret unsigned integer;
  declare @code unsigned integer;
  //select item,brand,model into @item,@brand,@model from
  //  product_temp where pr_id = @pr_id;
  select code into @code from product_temp where pr_id = @pr_id;
  //select pr_id into @lret from product where item = @item and
  //  brand = @brand and model = @model;
  select pr_id into @lret from product where code = @code;
  return(@lret)
end
go

create function dba.func_getcrossparentid( in @acccode char(15) ) 
returns unsigned integer
begin
  //inputs the acc_code from acc_main and returns the corresponding acc_parent
  //from acc_temp
  declare @accid unsigned integer;
  declare @parentcode char(15);
  //get parent id from acc_temp
  select acc_parent into @accid from acc_temp
    where acc_code = @acccode;
  if @accid = 0 then return(0)
  end if; //get parent code from acc_temp
  select acc_code into @parentcode from acc_temp where acc_id = @accid;
  //get parent id from acc_main
  select acc_id into @accid from acc_main where acc_code = @parentcode;
  return(@accid)
end
go


create function dba.func_resetalltag()
returns integer
begin
  update bill_memo set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update invoice set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update cash_payment set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update cheque_payment set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update cash_receipt set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update cheque_receipt set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update debit_credit_note set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update expence set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update details set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update journal set tag = null,adj_amt = 0 where(adj_amt <> 0 or tag = 0);
  update acc_setup set tag = 0;
  truncate table DBA.tag
end
go

create function dba.func_getsuffix( in @acc_id unsigned integer ) 
returns varchar(6)
begin
  declare @parent_id unsigned integer;
  declare @rowcount integer;
  declare @suffix varchar(6);
  set @suffix = '';
  select trim(suffix) into @suffix from bill_series
    where acc_id = @acc_id;
  set @rowcount = @@rowcount;
  if @suffix is null or @suffix = '' then set @suffix = ''
  else set @suffix = '/'+@suffix
  end if;
  //if series found then ok else use defaults
  if @rowcount = 0 then //not found
    //if date or month series then
    select acc_parent into @parent_id from acc_main
      where acc_id = @acc_id;
    if @parent_id is null or @parent_id = 0 then
      //no parent 
      set @suffix = ''
    else
      set @suffix = func_getsuffix(@parent_id)
    end if end if;
  return @suffix
end
go

create function dba.func_resetcode()
returns unsigned integer
at 'acc;;DBA;func_resetcode'
go

create function dba.func_getprice( in @prid unsigned integer ) 
returns T_money
begin
  declare @price T_money;
  select ifnull(last_price,op_price,last_price)
    into @price from product where pr_id = @prid;
  return @price
end
go

create function dba.func_addcode( in @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
at 'acc;;DBA;func_addcode'
go

create function dba.func_getcrossopprice( in @invmainid unsigned integer ) 
returns T_money
begin
  declare @ret T_money;
  select product.op_price into @ret from product key join inv_main
    where inv_main_id = @invmainid;
  return @ret
end
go

create function dba.func_setmaxcode()
returns unsigned integer
at 'acc;;DBA;func_setmaxcode'
go

create function dba.func_addcashbook( in @maccidcash unsigned integer,in @mdate date,in @mdebit T_money,in @mcredit T_money,in @mdebit_cheque T_money default 0,in @mcredit_cheque T_money default 0 ) 
returns unsigned integer
begin
  declare @lret unsigned integer;
  // if class is bank then return
  if @maccidcash is null then return
  end if;
  if func_getchequeincash(@maccidcash) = 'N' then
    set @mdebit_cheque = 0.0;
    set @mcredit_cheque = 0.0
  end if;
  select cs_id into @lret from cashbook_summery where cs_date = @mdate and acc_id_cash = @maccidcash;
  if @@rowcount = 0 then
    insert into cashbook_summery( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
      values( @maccidcash,@mdate,@mdebit,@mcredit,@mdebit_cheque,@mcredit_cheque ) ;
    set @lret = @@identity;
    if @lret = 0 then
      raiserror 17056;
      return
    end if
  else update cashbook_summery set cs_debit = cs_debit+@mdebit,
      cs_credit = cs_credit+@mcredit,
      cs_debit_cheque = cs_debit_cheque+@mdebit_cheque,
      cs_credit_cheque = cs_credit_cheque+@mcredit_cheque
      where cs_id = @lret;
    if @@error <> 0 then
      raiserror 17057
    end if end if;
  return(@lret)
end
go

create function dba.func_getrefnoonmonth()
returns char(15)
begin
  declare @ref_no char(30);
  declare @mdate date;
  declare @mmonth tinyint;
  declare @mmonthstr char(6);
  declare @lastno unsigned integer;
  set @mdate = today();
  set @mmonth = month(today());
  set @mmonthstr = string(year(today()))+string(month(today()));
  select lastno+1 into @lastno from month_series where mmonth = @mmonth;
  if @@rowcount = 0 then
    insert into month_series( mmonth ) values( @mmonth ) 
  end if;
  if @lastno is null then set @lastno = 1
  end if;
  set @ref_no = @mmonthstr+'/'+trim(string(@lastno));
  update month_series set lastno = @lastno where mmonth = @mmonth;
  return @ref_no
end
go

create function dba.func_getrefnoondate()
returns char(15)
begin
  declare @ref_no char(30);
  declare @mdate date;
  declare @mdatestr varchar(8);
  declare @lastno unsigned integer;
  set @mdate = today();
  set @mdatestr = string(year(today()))+string(month(today()))+string(day(today()));
  select lastno+1 into @lastno from date_series where mdate = @mdate;
  if @@rowcount = 0 then
    insert into date_series( mdate ) values( @mdate ) 
  end if;
  if @lastno is null then set @lastno = 1
  end if;
  set @ref_no = @mdatestr+'/'+trim(string(@lastno));
  update date_series set lastno = @lastno where mdate = @mdate;
  return @ref_no
end
go

create function dba.func_getlastrefno( in @acc_id unsigned integer,in @sale_tax_sale_id unsigned integer,in @type char(1) ) 
returns char(15)
begin
  declare @ref_no char(30);
  declare @bs_series char(6);
  declare @bs_last unsigned integer;
  declare @suffix char(6);
  declare @class char(10);
  set @ref_no = func_getrefno(@sale_tax_sale_id);
  if @ref_no is not null and @ref_no <> '' then return(@ref_no)
  end if;
  select func_getclass(@acc_id) into @class from dummy;
  //func_getautonumber(@type) gets the last numer with suffix from tran_type table and also increments it
  if @type = 'S' then
    if @class in( 'CASH','BANK' ) then
      set @ref_no = func_getautonumber(102) //from dummy;
    else
      set @ref_no = func_getautonumber(2) // from dummy;
    end if
  else set @ref_no = func_getautonumber(103)
  end if;
  return @ref_no
end
go

create function dba.func_getopenchequeamt( in @accid unsigned integer ) 
returns T_money
begin
  declare @amt T_money;
  select sum(oc_amt) into @amt from opening_cheque_details
    where acc_id = @accid;
  if @amt is null then set @amt = 0.0
  end if;
  return(@amt)
end
go

create function dba.func_getrefno( in @acc_id unsigned integer ) 
returns char(15)
begin
  //gives ref_no without suffix
  declare @bs_series varchar(6);
  declare @bs_last unsigned integer;
  declare @ref_no char(30);
  declare @parent_id unsigned integer;
  declare @rowcount integer;
  declare @suffix char(5);
  select trim(bs_series),bs_last+1,trim(suffix) into @bs_series,
    @bs_last,@suffix from bill_series where acc_id = @acc_id;
  set @rowcount = @@rowcount;
  if(@bs_last is null or @bs_last = 0) and @bs_series is null then
    select acc_parent into @parent_id from acc_main
      where acc_id = @acc_id;
    if @parent_id is null or @parent_id = 0 then
      //no parent 
      set @ref_no = null
    else
      set @ref_no = func_getrefno(@parent_id)
    end if;
    return(@ref_no)
  end if;
  if @bs_series is null or @bs_series = '' then set @bs_series = ''
  else set @bs_series = @bs_series+'/'
  end if;
  if @bs_last is null or @bs_last = 0 then set @bs_last = 1
  end if;
  if @suffix is null or @suffix = '' then set @suffix = ''
  else set @suffix = '/'+@suffix
  end if; //if series found then ok else use defaults
  if @rowcount <> 0 then //found
    //if date or month series then
    if @bs_series = 'DATE/' then
      set @ref_no = func_getrefnoondate();
      return(@ref_no)
    elseif @bs_series = 'MONTH/' then
      set @ref_no = func_getrefnoonmonth();
      return(@ref_no)
    end if;
    set @ref_no = @bs_series+trim(string(@bs_last))+@suffix;
    update bill_series set bs_last = @bs_last where acc_id = @acc_id
  else //not found get parent and repeat
    select acc_parent into @parent_id from acc_main
      where acc_id = @acc_id;
    if @parent_id is null or @parent_id = 0 then
      //no parent 
      set @ref_no = null
    else
      set @ref_no = func_getrefno(@parent_id)
    end if end if;
  return @ref_no
end
go

create function dba.func_initcode()
returns unsigned integer
begin
  declare @ret unsigned integer;
  //to delete all codes from acc.product table
  select func_resetcode() into @ret from dummy;
  //tempcode table is having insert trigger which 
  // calls func_addcode() which adds codes in acc.product table
  delete from tempcode;
  insert into tempcode( code,item,brand,model ) 
    select code,item,brand,model from product;
  select func_setmaxcode() into @ret from dummy;
  return(@ret)
end
go

create function dba.func_isvaliddate( in @mdate date ) 
returns char(1)
begin
  declare @sdate date;
  declare @edate date;
  declare @lret char(1);
  select startdate,enddate into @sdate,@edate
    from acc_setup;
  if @sdate is null or @edate is null then
    raiserror 17095 'Error in start date, end date of financial year';
    return 'N'
  end if;
  if @mdate between @sdate and @edate then set @lret = 'Y'
  else set @lret = 'N'
  end if;
  return @lret
end
go

create function dba.func_getcrosscounterid( in @counter_id unsigned integer ) 
returns unsigned integer
begin
  declare @lret unsigned integer;
  declare @counter_code char(10);
  select counter_code into @counter_code from counter_temp where counter_id = @counter_id;
  select counter_id into @lret from counter where counter_code = @counter_code;
  return(@lret)
end
go

create function dba.func_getaccid( in @acccode char(15) ) 
returns unsigned integer
begin
  declare @accid unsigned integer;
  select acc_id into @accid from acc_main
    where acc_code = @acccode;
  return(@accid)
end
go

create function dba.func_getclass( in @accid unsigned integer ) 
returns char(10)
begin
  declare @class char(10);
  if @accid is not null then
    select acc_class into @class from acc_main where acc_id = @accid
  else
    set @class = null
  end if;
  set @class = upper(trim(@class));
  return(@class)
end
go

create function dba.func_getlock()
returns unsigned integer
begin
  declare @padlock char(1);
  declare @ret unsigned integer;
  declare @count integer;
  set @ret = 0;
  select padlock into @padlock from acc_setup;
  if @padlock is null or @padlock = 'N' then //security = no
    set @ret = 0
  else // check lock 
    select count(id) into @count from lock_table;
    if @count = 0 then //lock enable
      set @ret = 1
    else
      set @ret = 0
    end if end if;
  return(@ret)
end
go

create function -- This command file reloads a database that was unloaded using "dbunload".
dba.f_deletecontra( in @contraid unsigned integer,in @acciddb unsigned integer,in @accidcr unsigned integer,in @mdate date,in @contraamt T_money,in @chequeno char(20) default '' ) 
returns integer
begin
  declare @lret integer;
  declare @amt T_money;
  declare @classdb char(10);declare @classcr char(10);
  declare @date date;
  set @amt = 0.0;
  select func_getclass(@acciddb) into @classdb;
  select func_getclass(@accidcr) into @classcr;
  if trim(@chequeno) = '' or @chequeno is null or trim(@chequeno) = 'CASH' then
    set @chequeno = 'CASH'
  else
    set @amt = @contraamt
  end if;
  if @classdb = 'BANK' or @classcr = 'BANK' then
    if f_checkcleardate(@contraid,9) = 0 then
      raiserror 17006;
      return
    end if end if;
  delete from bank_recon
    where tran_type = 9 and doc_id = @contraid;
  // Adjust cashbook_summery
  if @acciddb = @accidcr then // same cash account, so delete the transfer from cheque to cash
    select func_addcashbook(@acciddb,@mdate,-@contraamt,-@contraamt,0,-@contraamt) into @lret;
    return @lret
  end if;
  if @classdb = 'CASH' then
    select func_addcashbook(@acciddb,@mdate,-@contraamt,0,-@amt,0)
      into @lret end if;
  if @classcr = 'CASH' then
    select func_addcashbook(@accidcr,@mdate,0,-@contraamt,0,-@amt)
      into @lret end if;
  return(@lret)
end
go

create function dba.f_deletecash_bank_journal( in @cbid unsigned integer,in @acciddb unsigned integer,in @accidcr unsigned integer,in @mdate date,in @cbamt T_money,in @cheqno char(20) default '' ) 
returns integer
begin
  declare @lret integer;
  declare @classdb char(10);declare @classcr char(10);
  declare @date date;
  declare @amt T_money;
  set @amt = 0;
  select func_getclass(@acciddb) into @classdb;
  select func_getclass(@accidcr) into @classcr;
  if trim(@cheqno) = '' or @cheqno is null then set @cheqno = 'CASH'
  end if;
  if @classdb = 'BANK' then
    if f_checkcleardate(@cbid,11) = 0 then
      raiserror 17006;
      return
    end if end if;
  if @classcr = 'BANK' then
    if f_checkcleardate(@cbid,11) = 0 then
      raiserror 17006;
      return
    end if end if;
  delete from bank_recon
    where tran_type = 11 and doc_id = @cbid;
  // Adjust cashbook_summery
  if @cheqno <> 'CASH' then set @amt = @cbamt
  else set @amt = 0
  end if;
  if @classdb = 'CASH' then
    select func_addcashbook(@acciddb,@mdate,-@cbamt,0,-@amt,0)
      into @lret end if;
  if @classcr = 'CASH' then
    select func_addcashbook(@accidcr,@mdate,0,-@cbamt,0,-@amt)
      into @lret end if;
  return(@lret)
end
go

create function dba.f_inserteffect( in @accid unsigned integer,in @jouno unsigned integer,in @dbcr char(1),in @jouamt T_money,in @jouid unsigned integer,in @refno char(30),in @remarks varchar(200),in @type tinyint ) 
returns integer
begin
  declare @lret integer;
  declare @class char(10);
  declare @mdate date;
  select func_getclass(@accid) into @class;
  if @dbcr = 'D' then
    if @class = 'CASH' then
      select distinct jou_date into @mdate from journal_no
        where jou_no = @jouno;
      select func_addcashbook(@accid,@mdate,@jouamt,0)
        into @lret
    elseif @class = 'BANk' then
      select distinct jou_date into @mdate from journal_no
        where jou_no = @jouno;
      select f_insertintobankbook(@accid,@mdate,
        @jouamt,0,@refno,@remarks,null,'PE',
        @jouid,7,'',null,1)
        into @lret
    end if // credit
  else if @class = 'CASH' then
      select distinct jou_date into @mdate from journal_no key join journal
        where journal.jou_no = @jouno;
      select func_addcashbook(@accid,@mdate,0,@jouamt)
        into @lret
    elseif @class = 'BANk' then
      select distinct jou_date into @mdate from journal_no key join journal
        where journal.jou_no = @jouno;
      select f_insertintobankbook(@accid,@mdate,
        null,@jouamt,@refno,@remarks,null,'PE',
        @jouid,@type,'',null,1)
        into @lret
    end if end if;
  return(@lret)
end
go

create function dba.f_getcredit( in amt T_money ) 
returns T_money
begin
  if amt >= 0 then
    set amt = null
  end if;
  return(amt)
end
go

create function dba.func_getprofitloss()
returns T_money
begin
  declare @profitloss T_money;
  declare @assets T_money;
  declare @liabilities T_money;
  select sum(acc_opbal+acc_db-acc_cr)
    into @assets from acc_main_temp where acc_type = 'A' and acc_root in( 'Y','L' ) ;
  select sum(acc_opbal+acc_db-acc_cr)
    into @liabilities from acc_main_temp where acc_type = 'L' and acc_root in( 'Y','L' ) ;
  set @profitloss = @assets+@liabilities;
  return(@profitloss)
end
go

create function dba.func_setopinv( in @invmainid unsigned integer ) 
returns integer
begin
  declare @gwcode char(15);
  declare @prid unsigned integer;
  declare @gwid numeric(3);
  declare @item char(10);
  declare @brand char(20);
  declare @model char(20);
  declare @trf integer;
  declare @trf_db integer;
  declare @trf_cr integer;
  select gw_code into @gwcode from inv_main
      key join godown where inv_main_id = @invmainid;
  select item,brand,model into @item,@brand,@model
    from inv_main key join product where inv_main_id = @invmainid;
  select pr_id into @prid from product_temp where item = @item and brand = @brand and model = @model;
  select gw_id into @gwid from godown_temp where gw_code = @gwcode;
  if @prid is null or @gwid is null then return(0)
  end if;
  select trf_db-trf_cr into @trf from inv_main_temp
    where pr_id = @prid and gw_id = @gwid;
  if @trf is null or @trf = 0 then
    set @trf_db = 0;
    set @trf_cr = 0
  elseif @trf < 0 then
    set @trf_cr = -@trf;
    set @trf_db = 0
  else
    set @trf_cr = 0;
    set @trf_db = @trf
  end if;
  update inv_main set op = (select(op+db-cr) from inv_main_temp where pr_id = @prid and gw_id = @gwid),
    op_price = (select product.op_price from product key join inv_main where inv_main_id = @invmainid),
    trf_db = @trf_db,trf_cr = @trf_cr
    where inv_main_id = @invmainid
end
go

create function dba.f_insertcontra( in @cheqno char(20),in @contraid unsigned integer,in @acciddb unsigned integer,in @accidcr unsigned integer,in @mdate date,in @contraamt T_money,in @refno char(30),in @remarks varchar(200) ) 
returns integer
begin
  declare @cash integer;
  declare @lret integer;
  declare @cleardate date;
  declare @creditclass char(10);
  declare @debitclass char(10);
  declare @clear tinyint;
  declare @creditcheque T_money;
  declare @debitcheque T_money;
  select func_getclass(@acciddb) into @debitclass;
  set @clear = 1;
  select func_getclass(@accidcr) into @creditclass;
  set @creditcheque = 0.0;
  set @debitcheque = 0.0;
  if trim(@cheqno) = 'CASH' or trim(@cheqno) = ''
    or @cheqno is null then
    set @cheqno = 'CASH';
    set @cleardate = @mdate;
    set @clear = 0
  else
    set @cleardate = null;
    set @clear = 1;
    set @creditcheque = @contraamt;
    set @debitcheque = @contraamt
  end if;
  if @creditclass = 'CASH' and @debitclass = 'BANK' then
    select f_insertintobankbook(@acciddb,@mdate,@contraamt,0,@refno,@remarks,
      @cleardate,'PE',@contraid,9,@cheqno,@accidcr,@clear) into @lret;
    select func_addcashbook(@accidcr,@mdate,0,@contraamt,0,@creditcheque)
      into @lret
  elseif @creditclass = 'BANK' and @debitclass = 'CASH' then
    select f_insertintobankbook(@accidcr,@mdate,0,@contraamt,@refno,@remarks,
      @cleardate,'PE',@contraid,9,@cheqno,@acciddb,@clear) into @lret;
    select func_addcashbook(@acciddb,@mdate,@contraamt,0,@debitcheque,0)
      into @lret
  elseif @creditclass = 'BANK' and @debitclass = 'BANK' then
    // bank to bank transfer
    select f_insertintobankbook(@accidcr,@mdate,0,@contraamt,@refno,@remarks,
      null,'PE',@contraid,9,@cheqno,@acciddb,@clear) into @lret;
    select f_insertintobankbook(@acciddb,@mdate,@contraamt,0,@refno,@remarks,
      null,'PE',@contraid,9,@cheqno,@accidcr,@clear)
      into @lret
  else //cash to cash transfer, Adjust cashbooksummery
    if @acciddb = @accidcr then // contra in the same cash account,
      //Cheque is transferred to cash
      select func_addcashbook(@acciddb,@Mdate,@contraamt,@contraamt,0,@creditcheque)
        into @lret
    else select func_addcashbook(@acciddb,@Mdate,@contraamt,0,@debitcheque,0) into @lret;
      select func_addcashbook(@accidcr,@Mdate,0,@contraamt,0,@creditcheque)
        into @lret
    end if end if;
  return(@lret)
end
go

create function dba.func_getprid( in @invmainid unsigned integer ) 
returns unsigned integer
begin
  declare @prid unsigned integer;
  select distinct pr_id
    into @prid from inv_main key join invoice_product
    where invoice_product.inv_main_id = @invmainid;
  return(@prid)
end
go

create function dba.f_insertintobankbook( in @accidbank unsigned integer,in @mdate date,in @debitamt T_money,in @creditamt T_money,in @refno char(30),in @remarks varchar(200),in @cleardate date,in @period char(2),in @docid unsigned integer,in @trantype tinyint,in @cheqno char(20),in @accid unsigned integer,in @clear tinyint ) 
returns integer
begin
  declare @lret integer;
  insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
    ref_no,remarks,clear_date,period,doc_id,tran_type,cheq_no,
    acc_id,cleared ) values( @accidbank,@mdate,@creditamt,
    @debitamt,@refno,@remarks,@cleardate,@period,@docid,
    @trantype,@cheqno,@accid,@clear ) ;
  if @@rowcount = 0 or @@error <> 0 then
    raiserror 17053 'Error Entering data in bank reconcillation table';
    return
  end if;
  return(@lret)
end
go

create function dba.func_addproduct( in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
begin
  declare @pr_id unsigned integer;
  declare @code unsigned integer;
  select code into @code from product where item = @item and brand = @brand and model = @model;
  if @code is null or @code = 0 then
    insert into product( item,brand,model ) values( @item,@brand,@model ) ;
    set @pr_id = @@identity;
    select code into @code from product where pr_id = @pr_id
  end if;
  return(@code)
end
go

create function dba.func_getparentid( in @accid unsigned integer ) 
returns unsigned integer
begin
  declare @ret unsigned integer;
  if @accid is not null then
    select acc_parent into @ret from acc_main where acc_id = @accid
  else
    set @ret = null
  end if;
  return(@ret)
end
go

create function dba.func_converttosubledger( in @acc_code1 char(15),in @acc_code2 char(15) ) 
returns integer
begin
  //makes the @acc_code1 as the subledger of @acc_code2
  declare @acc_id1 unsigned integer;
  declare @acc_id2 unsigned integer;
  select acc_id into @acc_id1 from acc_main where acc_code = @acc_code1;
  select acc_id into @acc_id2 from acc_main where acc_code = @acc_code2;
  update acc_main set acc_parent = @acc_id2,acc_root = 'S' where acc_id = @acc_id1;
  return(0)
end
go

create function dba.func_getpurchaseprice( in @accid unsigned integer default null,in @item char(10),in @brand char(20),in @model char(20) ) 
returns numeric(12,2)
begin
  declare @prid unsigned integer;
  declare @last_id unsigned integer;
  declare @price decimal(12,2);
  declare @basic T_money;
  select basic_price into @basic from product where item = @item and brand
     = @brand and model = @model;
  if @basic is null then set @basic = 0
  end if;
  if @accid is not null then
    select max(invoice_product_id) into @last_id from invoice key join invoice_product
        key join inv_main key join product
      where item = @item and brand = @brand and model = @model and acc_id = @accid;
    if @last_id is null then return 0.0
    end if;
    select price into @price from invoice key join invoice_product
        key join inv_main key join product
      where item = @item and brand = @brand and model = @model and acc_id = @accid
      and invoice_product_id = @last_id;
    if @price is null or @price = 0 then
      set @price = @basic
    end if
  else set @price = @basic
  end if;
  return(@price)
end
go

create function dba.func_getroot( in @accid unsigned integer ) 
returns char(1)
begin
  declare @root char(1);
  select acc_root into @root from acc_main
    where acc_id = @accid;
  return(@root)
end
go

create function dba.f_getdebit( in amt T_money ) 
returns T_money
begin
  if amt < 0 then
    set amt = null
  end if;
  return(amt)
end
go

create function dba.f_deletefrombankbook( in @docid unsigned integer,in @type tinyint ) 
returns integer
begin
  declare @lret integer;
  delete from bank_recon where tran_type = @type and doc_id = @docid;
  return(@lret)
end
go

create function dba.func_getopdate()
returns date
begin
  declare @date date;
  select startdate into @date from acc_setup;
  return @date
end
go

create function dba.func_getaccparent( in @accid unsigned integer ) 
returns unsigned integer
begin
  // inputs the acc_parent of acc_temp and outputs the acc_temp of acc_main
  declare @accparent unsigned integer;
  declare @acccode char(15);
  if @accid = 0 then
    set @accparent = 0;
    return(@accparent)
  end if;
  select acc_code into @acccode from acc_temp
    where acc_id = @accid;
  if @acccode is null then
    raiserror 17061
  end if;
  select acc_id into @accparent from acc_main
    where acc_code = @acccode;
  if @accparent is null then raiserror 17062
  end if;
  return(@accparent)
end
go

create function dba.f_insertcash_bank_journal( in @cheqno char(20),in @cbid unsigned integer,in @acciddb unsigned integer,in @accidcr unsigned integer,in @mdate date,in @cbamt T_money,in @refno char(30),in @remarks varchar(70) ) 
returns integer
begin
  declare @cash integer;
  declare @lret integer;
  declare @cleardate date;
  declare @creditclass char(10);
  declare @debitclass char(10);
  declare @amt T_money;
  set @amt = 0.0;
  select func_getclass(@acciddb) into @debitclass;
  select func_getclass(@accidcr) into @creditclass;
  if trim(@cheqno) = '' or @cheqno is null then set @cheqno = 'CASH'
  else
    set @amt = @cbamt
  end if;
  if(@debitclass = 'CASH' or @debitclass = 'BANK')
    and(@creditclass = 'CASH' or @creditclass = 'BANK') then
    raiserror 17010;
    return(@lret)
  end if;
  if @debitclass = 'BANK' then
    select f_insertintobankbook(@acciddb,@mdate,@cbamt,0,@refno,@remarks,
      @cleardate,'PE',@cbid,11,@cheqno,@accidcr,1)
      into @lret
  elseif @debitclass = 'CASH' then
    //cashbook_summery adjust, credit
    select func_addcashbook(@acciddb,@mdate,@cbamt,0,@amt,0)
      into @lret end if;
  if @creditclass = 'BANK' then
    select f_insertintobankbook(@accidcr,@mdate,0,@cbamt,@refno,@remarks,
      @cleardate,'PE',@cbid,11,@cheqno,@acciddb,1)
      into @lret
  elseif @creditclass = 'CASH' then
    //cashbook_summery adjust , Debit
    select func_addcashbook(@accidcr,@mdate,0,@cbamt,0,@amt)
      into @lret end if;
  return(@lret)
end
go

create function dba.func_getsalesms( in @mdate date ) 
returns char(160)
begin
  declare @adj_amt T_money;
  declare @err_notfound exception for sqlstate value '02000';
  declare @posname varchar(20);
  declare @sale numeric(12,2);
  declare @sms char(160);
  declare @totalsale numeric(12,2);
  declare @totalsaleret numeric(12,2);
  //Declare the cursor pos
  declare pos dynamic scroll cursor for select pos_name,sum(qty*price) as sale
      from pointofsale key join(bill_memo key join bill_memo_product key join inv_main key join product)
        key join pos_master where "date" = @mdate group by pos_name order by pos_name asc;
  // Open the cursor
  if @mdate is null then set @mdate = today()
  end if; //set @sms=space(160);
  set @sms = '';
  select sum(total_amt) into @totalsale from bill_memo where "date" = @mdate
    and type = 'S';
  if @totalsale is null then set @totalsale = 0
  end if;
  select sum(total_amt) into @totalsaleret from bill_memo where "date" = @mdate
    and type = 'R';
  if @totalsaleret is null then set @totalsaleret = 0
  end if;
  set @totalsale = @totalsale-@totalsaleret;
  open pos;
  //Loop over the rows of the query
  posloop: loop
    fetch next pos into @posname,@sale;
    if sqlstate = @err_notfound then leave posloop
    end if;
    if @sale is null then set @sale = 0
    end if;
    if @posname is null then set @posname = ''
    end if;
    set @sms = @sms+','+rtrim(@posname)+':'+trim(str(@sale));
    set @sms = rtrim(@sms)
  end loop posloop;
  // Close the cursor
  close pos;
  set @sms = 'Sale:'+trim(str(@totalsale))+@sms;
  //call xp_cmdshell('java smsLib.comPorts com2 9830276967 ' + '"' +@sms + '"' );
  return(@sms)
end
go

create function dba.func_recreatecode()
returns integer
begin
  //if field code exists in product table then refill all codes
  //otherewise create the code field and fill it
  if exists(select column_name from systable key join syscolumn
      where column_name = 'code') then
    alter table DBA.product alter
      code null;
    update product set code = null;
    update product as a set code = func_getcode(a.item,a.brand,a.model)
        order by item asc,brand asc,model asc;
    alter table DBA.product alter
      code not null
  else alter table DBA.product add
      code unsigned integer null;
    update product as a set code = func_getcode(a.item,a.brand,a.model) order by a.item asc,a.brand asc,a.model asc;
    alter table DBA.product alter
      code not null;
    create unique index code on DBA.product(code asc)
  end if
end
go

create function dba.func_getopstock( in @gw_id numeric(3),in @item char(10),in @brand char(20),in @model char(20) ) 
returns integer
begin
  declare @stock integer;
  select op into @stock from inv_main key join product
    where gw_id = @gw_id and item = @item and brand = @brand and model = @model;
  if @stock is null then set @stock = 0
  end if;
  return @stock
end
go

create function dba.func_addinvmain( in @gw_id numeric(3),in @pr_id unsigned integer ) 
returns integer
begin
  declare @inv_main_id unsigned integer;
  select inv_main_id into @inv_main_id from inv_main
    where gw_id = @gw_id and pr_id = @pr_id;
  if @inv_main_id is null then
    insert into inv_main( gw_id,pr_id,op,db,cr,trf_db,trf_cr ) 
      values( @gw_id,@pr_id,0,0,0,0,0 ) ;
    if @@error <> 0 then
      raiserror 17058;
      return 0
    end if end if;
  return 0
end
go

create function dba.func_getdiscount( in @pr_id unsigned integer,in @sdisc char(30) ) 
returns T_money
begin
  declare @disc T_money;
  if @sdisc is not null and trim(@sdisc) <> '' then
    execute immediate 'select '+@sdisc+' into @disc from price_list where pr_id = @pr_id'
  end if;
  if @disc is null then set @disc = 0
  end if;
  return(@disc)
end
go

create function dba.func_getaccname( in @accid unsigned integer ) 
returns char(40)
begin
  declare @accname char(40);
  select acc_name into @accname from acc_main
    where acc_id = @accid;
  return(@accname)
end
go

create function dba.func_getgwcode( in @gwid numeric(3) ) 
returns char(15)
begin
  declare @gwcode char(15);
  select gw_code into @gwcode from godown
    where gw_id = @gwid;
  return(@gwcode)
end
go

create function dba.func_delete_effect_billmemovoucher( in @docid unsigned integer,in @accid unsigned integer,in @date date,in @amt T_money,in @dbcr char(2),in @chequeno char(20) ) 
returns integer
begin
  declare @class char(10);
  declare @dbcheque T_money;
  declare @crcheque T_money;
  declare @lret integer;
  set @chequeno = upper(trim(@chequeno));
  select func_getclass(@accid) into @class;
  if @class = 'CASH' then
    if @dbcr = 'DB' then //debit delete
      if @chequeno = 'CASH' then //only cash delete
        set @dbcheque = 0;
        set @crcheque = 0
      else // cheque is also there
        set @dbcheque = @amt;
        set @crcheque = 0
      end if;
      select func_addcashbook(@accid,@date,-@amt,0,-@dbcheque,-@crcheque)
        into @lret //credit delete
    else if @chequeno = 'CASH' then
        set @dbcheque = 0;
        set @crcheque = 0
      else
        set @dbcheque = 0;
        set @crcheque = @amt
      end if;
      select func_addcashbook(@accid,@date,0,-@amt,-@dbcheque,-@crcheque)
        into @lret
    end if
  elseif @class = 'BANK' then
    delete from bank_recon where tran_type = 15 and doc_id = @docid;
    if @@error <> 0 then
      raiserror 17060;
      return
    end if end if;
  return(0)
end
go

create function dba.func_getinvmainid( in @pr_id unsigned integer,in @gw_id numeric(3) ) 
returns unsigned integer
begin
  declare @invmainid unsigned integer;
  select inv_main_id into @invmainid from inv_main
    where pr_id = @pr_id and gw_id = @gw_id;
  if @@rowcount = 0 then // not found
    set @invmainid = 0
  end if;
  return(@invmainid)
end
go

create function dba.func_getsaletype( in @accidcr unsigned integer ) 
returns char(1)
begin
  declare @ret char(1);
  if @accidcr is not null then
    if func_getclass(@accidcr) in( 'SALE','SALES' ) then set @ret = 'S'
    else set @ret = 'R'
    end if
  else raiserror 17066;
    return
  end if;
  return(@ret)
end
go

create function dba.func_getopbalance( in @acc_id unsigned integer ) 
returns T_money
begin
  declare @amt T_money;
  select acc_opbal into @amt from acc_maint
    where acc_id = @acc_id;
  return @amt
end
go

create function dba.func_addaccmain( in @acc_code char(15),in @acc_name char(40),in @acc_type char(1),in @acc_class char(10),in @acc_parent unsigned integer,in @acc_root char(1),in @acc_id unsigned integer ) 
returns unsigned integer
begin
  //returns the acc_id of new row inserted
  declare @lret unsigned integer;
  declare @rowcount unsigned integer;
  if @acc_id = 0 then
    set @acc_id = null
  end if;
  //Check if the code exists,if code exists don't insert
  //only return the acc_id. and set acc_primary to 'Y'
  select acc_id into @lret from acc_main where acc_code = @acc_code;
  if @@rowcount <> 0 then
    //found
    if @lret is null then
      raiserror 17054,'';
      return(0)
    end if;
    //otherwise
    update acc_main set acc_primary = 'Y' where acc_id = @lret;
    return(@lret)
  end if;
  //inserts in acc_main the primary account codes
  insert into acc_main( acc_id,acc_code,acc_name,acc_type,
    acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) 
    values( @acc_id,@acc_code,@acc_name,@acc_type,@acc_class,@acc_parent,@acc_root,'Y',0,0,0 ) ;
  select @@identity,@@rowcount into @lret,@rowcount;
  if @rowcount = 0 or @rowcount is null then
    raiserror 17055;
    return(0)
  end if;
  return(@lret)
end
go

create function dba.func_insert_effect_billmemovoucher( in @docid unsigned integer,in @billmemoid unsigned integer,in @accid unsigned integer,in @amt T_money,in @dbcr char(2),in @chequeno char(20),in @bank varchar(40),in @branch varchar(40) ) 
returns integer
begin
  declare @class char(10);
  declare @dbcheque T_money;
  declare @crcheque T_money;
  declare @lret integer;
  declare @refno char(30);
  declare @date date;
  declare @saleaccid unsigned integer;
  select "date",ref_no,sale_tax_sale_id into @date,@refno,@saleaccid from bill_memo
    where bill_memo_id = @billmemoid;
  if @@error <> 0 then
    raiserror 17067;
    return
  end if;
  select func_getclass(@accid) into @class;
  if @class is null then
    raiserror 17068;
    return
  end if;
  //update cashbook_summery or bank_recon
  //cs_debit of cashbook_summery is total debit, cs_debit_cheque is only cheque
  if @class = 'CASH' then
    if @dbcr = 'DB' then //debit so  cash debit
      if @chequeno = 'CASH' then
        set @dbcheque = 0;
        set @crcheque = 0
      else
        set @dbcheque = @amt;
        set @crcheque = 0
      end if;
      select func_addcashbook(@accid,@date,@amt,0,@dbcheque,@crcheque)
        into @lret //credit so cash credit
    else if @chequeno = 'CASH' then
        set @crcheque = 0;
        set @dbcheque = 0
      else
        set @crcheque = @amt;
        set @dbcheque = 0
      end if;
      select func_addcashbook(@accid,@date,0,@amt,@dbcheque,@crcheque)
        into @lret
    end if //bank
  elseif @class = 'BANK' then
    if @dbcr = 'DB' then //bank debit so bank_recon credit
      select f_insertintobankbook(@accid,@date,@amt,0,
        @refno,'Sale Voucher',null,'PE',@docid,15,@chequeno,
        @saleaccid,1)
        into @lret //bank credit so bank_recon debit
    else select f_insertintobankbook(@accid,@date,0,@amt,
        @refno,'Sale Voucher',null,'PE',@docid,15,@chequeno,
        @saleaccid,1)
        into @lret
    end if
  end if
end
go

create function dba.func_getseqno()
returns varchar(20)
begin
  declare @last_seq_no unsigned integer;
  declare @prefix varchar(3);
  declare @seq_no varchar(20);
  select last_seq_no into @last_seq_no from acc_setup;
  if @last_seq_no is null then
    set @last_seq_no = 1
  else
    set @last_seq_no = @last_seq_no+1
  end if;
  select seq_no_prefix into @prefix from acc_setup;
  if @prefix is null then set @prefix = 'A'
  end if;
  set @seq_no = trim(@prefix)+trim(string(@last_seq_no));
  update acc_setup set last_seq_no = @last_seq_no;
  return(@seq_no)
end
go

create function dba.func_gettotal( in @type char(1) ) 
returns T_money
begin
  declare @total T_money;
  select sum(acc_opbal+acc_db-acc_cr)
    into @total from acc_main_temp where acc_type = @type and acc_root in( 'Y','L' ) ;
  return(@total)
end
go

create function dba.f_deleteeffect( in @accid unsigned integer,in @jouno unsigned integer,in @dbcr char(1),in @jouamt T_money,in @jouid unsigned integer,in @type tinyint ) 
returns integer
begin
  declare @lret integer;
  declare @mdate date;
  declare @class char(10);
  select func_getclass(@accid) into @class;
  if @class = 'CASH' then
    select distinct jou_date into @mdate from journal_no key join journal
      where journal.jou_no = @jouno;
    if @dbcr = 'D' then
      select func_addcashbook(@accid,@mdate,-@jouamt,0)
        into @lret
    else select func_addcashbook(@accid,@mdate,0,-@jouamt)
        into @lret
    end if
  elseif @class = 'BANK' then
    if f_checkcleardate(@accid,@jouid,@type) = 0 then
      raiserror 17006;
      return
    end if;
    select f_deletefrombankbook(@jouid,@type)
      into @lret end if;
  return(@lret)
end
go

create function dba.func_checklockdate( in @accidbank unsigned integer,in @date date ) 
returns tinyint
begin
  declare @lret tinyint;
  declare @lockdate date;
  select bb_lockdate into @lockdate from bank_balances
    where acc_id_bank = @accidbank;
  if @lockdate is null then
    set @lret = 0
  elseif @date is null then
    set @lret = 0
  else
    if @lockdate < @date then // allowed
      set @lret = 0
    else // not allowed
      set @lret = 1
    end if end if;
  return(@lret)
end
go

create function dba.func_setsummery( in @accid unsigned integer default 0 ) 
returns integer
begin
  declare @lret integer;
  declare @classdebit char(10);
  declare @classcredit char(10);
  if Func_getclass(@accid) <> 'CASH' then return(@lret)
  end if;
  if @accid = 0 then
    delete from cashbook_summery
  else
    delete from cashbook_summery where acc_id_cash = @accid
  end if;
  if @accid is null or @accid = 0 then //for all cash accounts
    //bill memo
    select func_addcashbook(acc_id,"date",total_amt,0) into #temp from bill_memo
      where func_getclass(acc_id) = 'CASH' and type = 'S';
    insert into #temp select func_addcashbook(acc_id,"date",0,total_amt) from bill_memo
        where func_getclass(acc_id) = 'CASH' and type = 'R';
    //bill_memo_cheque_details
    insert into #temp select func_addcashbook(acc_id,"date",0,0,cheq_amt,0) from bill_memo
          key join bill_memo_cheque_details where func_getclass(acc_id) = 'CASH'
        and type = 'S';
    insert into #temp select func_addcashbook(acc_id,"date",0,0,0,cheq_amt) from bill_memo
          key join bill_memo_cheque_details where func_getclass(acc_id) = 'CASH'
        and type = 'R';
    //bill_memo_journal
    //for sales and sales_return
    insert into #temp select func_addcashbook(bill_memo_journal.acc_id,"date",
        if bv_dbcr = 'DB' then bv_amt else 0 endif,
        if bv_dbcr = 'CR' then bv_amt else 0 endif,
        if trim(bv_chequeno) = 'CASH' then 0
        else if bv_dbcr = 'DB' then bv_amt else 0 endif
        endif,if trim(bv_chequeno) = 'CASH' then 0
        else if bv_dbcr = 'CR' then bv_amt else 0 endif
        endif) from bill_memo
          key join bill_memo_journal where func_getclass(bill_memo_journal.acc_id) = 'CASH';
    //invoice
    insert into #temp select func_addcashbook(acc_id,inv_date,0,inv_amt) from invoice
        where func_getclass(acc_id) = 'CASH' and type = 'P';
    insert into #temp select func_addcashbook(acc_id,inv_date,inv_amt,0) from invoice
        where func_getclass(acc_id) = 'CASH' and type = 'R';
    //cash payment through cash_payment_tran
    insert into #temp select func_addcashbook(cp_acc_id_cash,cp_date,0,cp_amt)
        from cash_payment_tran;
    //cheque_payment
    insert into #temp select func_addcashbook(acc_id_bank,cheq_date,0,cheq_amt,0,cheq_amt)
        from cheque_payment where func_getclass(acc_id_bank) = 'CASH';
    //cash_receipt
    insert into #temp select func_addcashbook(acc_id_cash,rec_date,amt,0) from cash_receipt;
    //cheque_receipt
    insert into #temp select func_addcashbook(acc_id_cash_bank,rec_date,cheq_amt,0,cheq_amt,0)
        from cheque_receipt where func_getclass(acc_id_cash_bank) = 'CASH';
    //contra
    insert into #temp select func_addcashbook(acc_id_db,contra_date,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif,0)
        from contra_entries where func_getclass(acc_id_db) = 'CASH'
        and acc_id_db <> acc_id_cr;
    insert into #temp select func_addcashbook(acc_id_cr,contra_date,0,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif)
        from contra_entries where func_getclass(acc_id_cr) = 'CASH'
        and acc_id_db <> acc_id_cr;
    insert into #temp select func_addcashbook(acc_id_cr,contra_date,contra_amt,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif)
        from contra_entries where func_getclass(acc_id_cr) = 'CASH'
        and acc_id_db = acc_id_cr;
    //cash_bank_journal
    insert into #temp select func_addcashbook(acc_id_db,cb_date,cb_amt,0,
        if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif,0)
        from cash_bank_journal where func_getclass(acc_id_db) = 'CASH';
    insert into #temp select func_addcashbook(acc_id_cr,cb_date,0,cb_amt,0,
        if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif)
        from cash_bank_journal where func_getclass(acc_id_cr) = 'CASH';
    delete from cashbook_summery
      where cs_debit = 0 and cs_credit = 0 and cs_debit_cheque = 0
      and cs_credit_cheque = 0
  else //only for selected cash accounts
    //bill memo
    select func_addcashbook(acc_id,"date",total_amt,0) into #temp from bill_memo
      where acc_id = @accid and type = 'S';
    insert into #temp select func_addcashbook(acc_id,"date",0,total_amt) from bill_memo
        where acc_id = @accid and type = 'R';
    //bill_memo_cheque_details
    insert into #temp select func_addcashbook(acc_id,"date",0,0,cheq_amt,0) from bill_memo
          key join bill_memo_cheque_details where acc_id = @accid
        and type = 'S';
    insert into #temp select func_addcashbook(acc_id,"date",0,0,0,cheq_amt) from bill_memo
          key join bill_memo_cheque_details where acc_id = @accid
        and type = 'R';
    //bill_memo_journal
    //for sales and sales_return
    insert into #temp select func_addcashbook(bill_memo_journal.acc_id,"date",
        if bv_dbcr = 'DB' then bv_amt else 0 endif,
        if bv_dbcr = 'CR' then bv_amt else 0 endif,
        if trim(bv_chequeno) = 'CASH' then 0
        else if bv_dbcr = 'DB' then bv_amt else 0 endif
        endif,if trim(bv_chequeno) = 'CASH' then 0
        else if bv_dbcr = 'CR' then bv_amt else 0 endif
        endif) into #temp from bill_memo
          key join bill_memo_journal where bill_memo_journal.acc_id = @accid;
    //invoice
    insert into #temp select func_addcashbook(acc_id,inv_date,0,inv_amt) from invoice
        where acc_id = @accid and type = 'P';
    insert into #temp select func_addcashbook(acc_id,inv_date,inv_amt,0) from invoice
        where acc_id = @accid and type = 'R';
    //cash payment through cash_payment_tran
    insert into #temp select func_addcashbook(cp_acc_id_cash,cp_date,0,cp_amt)
        from cash_payment_tran where cp_acc_id_cash = @accid;
    //cheque_payment
    insert into #temp select func_addcashbook(acc_id_bank,cheq_date,0,cheq_amt,0,cheq_amt)
        from cheque_payment where acc_id_bank = @accid;
    //cash_receipt
    insert into #temp select func_addcashbook(acc_id_cash,rec_date,amt,0)
        from cash_receipt where acc_id_cash = @accid;
    //cheque_receipt
    insert into #temp select func_addcashbook(acc_id_cash_bank,rec_date,cheq_amt,0,cheq_amt,0)
        from cheque_receipt
        where acc_id_cash_bank = @accid;
    //contra
    insert into #temp select func_addcashbook(acc_id_db,contra_date,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif,0)
        from contra_entries where acc_id_db = @accid
        and acc_id_db <> acc_id_cr;
    insert into #temp select func_addcashbook(acc_id_cr,contra_date,0,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif)
        from contra_entries where acc_id_cr = @accid
        and acc_id_db <> acc_id_cr;
    insert into #temp select func_addcashbook(acc_id_cr,contra_date,contra_amt,contra_amt,0,
        if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif)
        from contra_entries where acc_id_cr = @accid
        and acc_id_db = acc_id_cr;
    //cash_bank_journal
    insert into #temp select func_addcashbook(acc_id_db,cb_date,cb_amt,0,
        if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif,0)
        from cash_bank_journal where acc_id_db = @accid;
    insert into #temp select func_addcashbook(acc_id_cr,cb_date,0,cb_amt,0,
        if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif)
        from cash_bank_journal where acc_id_cr = @accid;
    delete from cashbook_summery
      where cs_debit = 0 and cs_credit = 0 and cs_debit_cheque = 0
      and cs_credit_cheque = 0
  end if; //commit work;
  return(@lret)
end
go

create function dba.func_getsaleprice( in @item char(10),in @brand char(20),in @model char(20) ) 
returns numeric(12,2)
begin
  declare @lsp T_money;
  declare @spa T_money;
  declare @spb T_money;
  declare @spc T_money;
  declare @spd T_money;
  select lsp,spa,spb,spc,spd into @lsp,@spa,@spb,@spc,@spd
    from product key join price_list
    where item = @item and brand = @brand and model = @model;
  if @lsp is not null and @lsp <> 0 then return(@lsp)
  end if;
  if @spa is not null and @spa <> 0 then return(@spa)
  end if;
  if @spb is not null and @spb <> 0 then return(@spb)
  end if;
  if @spc is not null and @spc <> 0 then return(@spc)
  end if;
  if @spd is not null and @spd <> 0 then return(@spd)
  end if
end
go

create function dba.func_getreceipt( in @bill_memo_id unsigned integer ) 
returns T_money
begin
  declare @receipt T_money;
  select sum(rec_amt)
    into @receipt from receipt_bill_memo where bill_memo_id = @bill_memo_id;
  if @receipt is null then
    set @receipt = 0.0
  end if
end
go

create function dba.func_getautonumber( in @type smallint ) 
returns varchar(30)
begin
  declare @ref_no varchar(30);
  if @type = 1 then //purchase, actually used in pur ret
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 1;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 1
  elseif @type = 2 then //Bill
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 2;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 2
  elseif @type = 3 then //cash payment
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 3;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 3
  elseif @type = 4 then //cheq payment
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 4;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 4
  elseif @type = 5 then //cash receipt
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 5;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 5
  elseif @type = 6 then //cheq receipt
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 6;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 6
  elseif @type = 7 then //journal
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 7;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 7
  elseif @type = 9 then //contra entries
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 9;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 9
  elseif @type = 15 then //contra entries
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 15;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 15
  elseif @type = 102 then //Cash Sales
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 102;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 102
  elseif @type = 103 then //Sales Return
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 103;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 103
  elseif @type = 108 then //Debit Note
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 108;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 108
  elseif @type = 109 then //Credit Note
    select ifnull(prefix,'',trim(prefix)+'/')+ifnull(lastno,trim(string(1)),trim(string(lastno+1)))
      +ifnull(suffix,'','/'+trim(suffix)) into @ref_no from tran_type where id = 109;
    update tran_type set lastno = ifnull(lastno,1,lastno+1) where id = 109
  end if;
  return(@ref_no)
end
go

create function dba.func_getcalculatedlandingprice( in @pr_id unsigned integer,in @disc1 T_money,in @disc2 T_money,in @disc3 T_money,in @sch1 T_money,in @sch2 T_money,in @sch3 T_money,in @cash_disc T_money ) 
returns T_money
begin
  declare @lret T_money;
  select lpp-@disc1-@disc2-@disc3-@sch1-@sch2
    -@sch3-@cash_disc into @lret from price_list where pr_id = @pr_id;
  if @lret is null or @lret < 0 then set @lret = 0.0
  end if;
  return(@lret)
end
go

create function dba.func_getprid1( in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
begin
  declare @prid unsigned integer;
  select pr_id into @prid from product
    where item = @item and brand = @brand and model = @model;
  if @prid is null then
    set @prid = 0
  end if;
  return(@prid)
end
go

create function dba.func_getaddress( in @accid unsigned integer ) 
returns char(40)
begin
  declare @address char(95);
  select trim(addr1)+' '+trim(addr2)+if pin is null then '' else ' Pin: ' endif
    +pin into @address from details where acc_id = @accid;
  return(@address)
end
go

create function dba.func_importbalances( in @inv char(1),in @acc char(1) ) 
returns integer
begin
  if @inv = 'Y' then
    truncate table DBA.inv_main;
    truncate table DBA.product;
    truncate table DBA.godown;
    load into table DBA.godown using file 'c:\\program files\\capital\\acc\\sql\\godown.sql';
    if @@error <> 0 then raiserror 99999 'Error importing Godown';
      rollback work;
      return(1)
    end if;
    load into table DBA.product using file 'c:\\program files\\capital\\acc\\sql\\product.sql';
    if @@error <> 0 then raiserror 99999 'Error importing product table';
      rollback work;
      return(1)
    end if;
    load into table DBA.inv_main using file 'c:\\program files\\capital\\acc\\sql\\inv_main.sql';
    if @@error <> 0 then raiserror 99999 'Error importing Inv_main Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.price_list using file 'c:\\program files\\capital\\acc\\sql\\price_list.sql';
    if @@error <> 0 then raiserror 99999 'Error importing price list Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.counter using file 'c:\\program files\\capital\\acc\\sql\\counter.sql';
    if @@error <> 0 then raiserror 99999 'Error importing Counter Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.pos_master using file 'c:\\program files\\capital\\acc\\sql\\pos_master.sql';
    if @@error <> 0 then raiserror 99999 'Error importing pos_master Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.pos_color using file 'c:\\program files\\capital\\acc\\sql\\pos_color.sql';
    if @@error <> 0 then raiserror 99999 'Error importing pos_color Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.pos_scheme using file 'c:\\program files\\capital\\acc\\sql\\pos_scheme.sql';
    if @@error <> 0 then raiserror 99999 'Error importing pos_scheme Table';
      rollback work;
      return(1)
    end if;
    load into table DBA.pointofsale using file 'c:\\program files\\capital\\acc\\sql\\pointofsale.sql';
    if @@error <> 0 then raiserror 99999 'Error importing pointofsale Table';
      rollback work;
      return(1)
    end if end if;
  if @acc = 'Y' then
    truncate table DBA.acc_main;
    load into table DBA.acc_main using file 'c:\\program files\\capital\\acc\\sql\\acc_main.sql';
    if @@error <> 0 then raiserror 99999 'Error importing accounts master';
      rollback work;
      return(1)
    end if end if; //initialize
  call sp_init();
  update inv_main set op = op+db-cr;
  update inv_main set db = 0,cr = 0;
  update acc_main set acc_opbal = acc_opbal+acc_db-acc_cr where acc_root = 'Y' and acc_type in( 'L','A' ) ;
  update acc_main set acc_opbal = 0 where acc_root = 'Y' and acc_type in( 'E','I' ) ;
  update acc_main set acc_db = 0,acc_cr = 0 where acc_root = 'Y';
  //load error table
  load into table DBA.error_table using file 'c:\\program files\\capital\\acc\\sql\\error_table.data';
  if @@error <> 0 then raiserror 99999 'Error importing error Table';
    rollback work;
    return(1)
  end if;
  commit work;
  return(0)
end
go

create function dba.func_changeitem( in @item1 char(10),in @item2 char(10) ) 
returns integer
begin
  declare @ret integer;
  declare @pr unsigned integer;
  declare @item char(10);
  declare @brand char(20);
  select @pr as pr_id1,@item as item,@brand as brand,@brand as model,
    @pr as pr_id2 into #temp1 from dummy where 1 = 2;
  insert into #temp1( pr_id1,item,brand,model,pr_id2 ) 
    select pr_id,item,brand,model,
      func_getprid1(@item2,brand,model) from product
      where item = @item1;
  if @@error <> 0 then
    raiserror 17110;
    return
  end if;
  select func_convertproduct(pr_id1,pr_id2,@item2) into #temp from #temp1;
  if @@error <> 0 then
    raiserror 17110;
    return
  end if;
  set @ret = @@error;
  return(@ret)
end
go

create function dba.sp_backup( in @dir char(90) ) 
returns integer
begin
  set @dir = trim(@dir);
  set @dir = 'c:\\backup';
  execute immediate 'backup database directory '+@dir+'  transaction log truncate';
  // backup database directory 'c:\backup' transaction log truncate;
  return(@@error)
end
go

create function dba.func_convertproduct( in @pr_id1 unsigned integer,in @pr_id2 unsigned integer,in @item char(10) ) 
returns integer
begin
  declare @error integer;
  if @pr_id2 = 0 then
    update product set item = @item
      where pr_id = @pr_id1;
    if @@error <> 0 then
      raiserror 17110;
      return
    end if
  else call func_changeproduct1(@pr_id1,@pr_id2);
    if @@error <> 0 then
      raiserror 17110
        retun
    end if end if;
  return @@error
end
go

create function dba.func_getpricetype( in @acc_id unsigned integer ) 
returns char(3)
begin
  declare @parent_id unsigned integer;
  declare @rowcount integer;
  declare @pricetype char(3);
  select pricetype into @pricetype from bill_series where acc_id = @acc_id;
  //if series found then ok else use default cashmemo no
  if @@rowcount = 0 then
    select acc_parent into @parent_id from acc_main where acc_id = @acc_id;
    if @parent_id is null or @parent_id = 0 then
      set @pricetype = 'LSP' //listed sale price
    else
      set @pricetype = func_getpricetype(@parent_id)
    end if end if;
  return @pricetype
end
go

create function dba.func_getfinalpurchaseprice( in @pr_id unsigned integer ) 
returns T_money
begin
  declare @ret T_money;
  //first find in price list table
  select lpp-func_getdiscount(price_list.pr_id,bill_disc1)
    -func_getdiscount(price_list.pr_id,bill_disc2)
    -func_getdiscount(price_list.pr_id,bill_disc3)
    -func_getdiscount(price_list.pr_id,scheme1)
    -func_getdiscount(price_list.pr_id,scheme2)
    -func_getdiscount(price_list.pr_id,scheme3)
    -ifnull(Cd,0,cd)*LPP
    into @ret from price_list where pr_id = @pr_id;
  if @ret is null then // not found now select from product
    select ifnull(last_price,op_price,last_price) into @ret from product
      where pr_id = @pr_id
  end if;
  if @ret is null then
    set @ret = 0
  end if;
  return(@ret)
end
go

create function dba.f_deletefrombankbookforced( in @docid unsigned integer,in @type tinyint ) 
returns integer
begin
  declare @lret integer;
  declare @br_id unsigned integer;
  select br_id into @br_id from bank_recon where tran_type = @type
    and doc_id = @docid;
  if @br_id is null then return(@lret)
  end if; //clear_date is not null entry cannot be deleted
  update bank_recon set clear_date = null where clear_date is not null
    and br_id = @br_id;
  delete from bank_recon where br_id = @br_id;
  return(@lret)
end
go

create function dba.f_checkzero( in @olddb T_money,in @oldcr T_money,in @newdb T_money,in @newcr T_money ) 
returns integer
begin
  // returns 0 if ok, 1 if error
  declare @lret integer;
  set @lret = 0;
  if @olddb > 0 then
    if @newdb > 0 then set @lret = 0 /*error*/
    else set @lret = 1
    end if /* error */
  else if @newdb = 0 then set @lret = 0
    else set @lret = 1
    end if end if;
  if @oldcr > 0 then
    if @newcr > 0 then set @lret = 0 /*error*/
    else set @lret = 1
    end if /* error */
  else if @newcr = 0 then set @lret = 0
    else set @lret = 1
    end if end if;
  return(@lret)
end
go

create function dba.func_error( in @errno integer ) 
returns integer
begin
  declare @errmessage varchar(130);
  select err_message into @errmessage from error_table
    where err_no = @errno;
  if @@rowcount = 0 then
    raiserror 99999 'This operation has performed error'
  else
    raiserror 99999 @errmessage
  end if;
  return(0)
end
go

create function dba.func_tag( in @type tinyint,in @docid unsigned integer,in @oldamt T_money,in @newamt T_money,in @tag unsigned integer ) 
returns integer
begin
  //sets the tag and adj_amt of the transactions. Debtors and creditors ac are special since they use op balance
  declare @amt T_money;
  set @amt = @newamt-@oldamt;
  if @type = 0 then //opening balance
    if not exists(select details_id from details where acc_id = @docid) then
      insert into details( acc_id ) values( @docid ) 
    end if;
    update acc_main key join details
      set adj_amt = if(abs(acc_opbal)-adj_amt) >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where details.acc_id = @docid
  elseif @type = 1 then //invoice
    update invoice set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where inv_id = @docid
  elseif @type = 2 then //sales
    update bill_memo set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where bill_memo_id = @docid
  elseif @type = 3 then //cash payment
    update cash_payment set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where cp_id = @docid
  elseif @type = 4 then //cheque payment
    update cheque_payment set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where cheq_id = @docid
  elseif @type = 5 then //cash receipt
    update cash_receipt set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where cr_id = @docid
  elseif @type = 6 then //cheq receipt
    update cheque_receipt set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where cheq_id = @docid
  elseif @type = 7 then //journal
    update journal set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where jou_id = @docid
  elseif @type = 8 then //debit credit note
    update debit_credit_note set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where dc_id = @docid
  elseif @type = 10 then //expence creditor
    update expence set adj_amt = if due_amt >= (@amt) then
        @amt+adj_amt else func_error(17111) endif,
      tag = @tag
      where exp_id = @docid
  elseif @type = 15 then //sales_journal
    update bill_memo_journal set tag = @tag where bv_id = @docid
  end if;
  return 0
end
go

create function dba.func_getcode( in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
//at 'acc;;DBA;func_getcode'
begin
  declare @code unsigned integer;
  declare @pr_id unsigned integer;
  select code into @code from product where item = @item and brand = @brand
    and model = @model;
  if @code is null or @code = 0 then
    //product is not there in product table, so add a new product after getting the new code
    insert into product( item,brand,model ) values( @item,@brand,@model ) ;
    set @pr_id = @@identity;
    //insert trigger takes careof new code
    select code into @code from product where pr_id = @pr_id
  end if;
  return(@code)
end
go

create function dba.func_getcodeonly( in @item char(10),in @brand char(20),in @model char(20) ) 
returns unsigned integer
begin
  declare @code unsigned integer;
  select code into @code from product where item = @item and brand = @brand
    and model = @model;
  if @code is null then set @code = 0
  end if;
  return(@code)
end
go

create function dba.func_getdebtorcreditor( in @type char(1),in @classdb char(10),in @classcr char(10) ) 
returns integer
begin
  declare @lret integer;
  set @lret = 0;
  if @type = 'D' then
    if @classdb in( 'DEBTOR','CREDITOR' ) then set @lret = 1
    else set @lret = 0
    end if
  else if @classcr in( 'DEBTOR','CREDITOR' ) then set @lret = 1
    else set @lret = 0
    end if end if;
  return(@lret)
end
go

create function dba.func_gettrantype( in @id tinyint ) 
returns char(12)
begin
  declare @descr char(12);
  select descr into @descr from tran_type where id = @id;
  return @descr
end
go

create function dba.func_label( in @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @qty integer,in @lsp decimal(12,2),in @bar_code varchar(20) ) 
returns integer
begin
  declare @i integer;
  if @qty is null then return 0
  end if;
  if @qty = 0 then return 0
  end if;
  if @qty = 1 then
    insert into label_temp( code,item,brand,model,lsp,bar_code ) 
      values( @code,@item,@brand,@model,@lsp,@bar_code ) ;
    return 0
  end if;
  set @i = 1;
  while @i <= @qty loop
    insert into label_temp( code,item,brand,model,lsp,bar_code ) 
      values( @code,@item,@brand,@model,@lsp,@bar_code ) ;
    set @i = @i+1
  end loop;
  return 0
end
go

create function dba.f_checkcleardate( in @docid unsigned integer,in @type tinyint ) 
returns integer
begin
  -- returns 0 if cheque is  cleared 1 if not cleared
  declare @lret integer;declare @clear integer;
  declare @allowclear char(1);
  set @lret = 1;
  select allow_clearbankrecon into @allowclear from acc_setup;
  if @allowclear is null then
    set @allowclear = 'N'
  end if;
  if @allowclear = 'Y' then return(1)
  end if;
  select min(cleared) into @lret from bank_recon
    where tran_type = @type and doc_id = @docid;
  if @lret is null then set @lret = 1
  end if;
  return(@lret)
end
go

create function dba.func_getadjamt( in @accid unsigned integer ) 
returns T_money
begin
  declare @adj_amt T_money;
  select adj_amt into @adj_amt from details where acc_id = @accid;
  if @adj_amt is null then
    set @adj_amt = 0.0
  end if;
  return(@adj_amt)
end
go

create function dba.func_setlastpurchasedate()
returns integer
begin
  select a.inv_main_id as inv_main_id,
    b.inv_date as inv_date into #temp from invoice_product as a key join invoice as b
    order by inv_main_id asc;
  select inv_main_id,max(inv_date) as inv_date into #temp1
    from #temp group by inv_main_id;
  truncate table #temp;
  update product key join inv_main set last_date = (select inv_date from #temp1
      where inv_main_id = inv_main.inv_main_id) where inv_main_id = any(select inv_main_id
      from #temp1);
  return 0
end
go

create function dba.func_getcrossaccid( in @accid unsigned integer ) 
returns unsigned integer
begin
  //from acc_temp
  declare @crossid unsigned integer;
  select acc_id into @crossid from acc_main where acc_code = any(select acc_code from acc_temp where acc_id = @accid);
  return(@crossid)
end
go

create function dba.func_cashbooksummery()
returns integer
begin
  declare @lret integer;
  truncate table DBA.cashbook_summery;
  truncate table DBA.cashbook_summery_temp;
  //bill memo
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select acc_id,"date",total_amt,0 from bill_memo
      where func_getclass(acc_id) = 'CASH' and type = 'S';
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select acc_id,"date",0,total_amt from bill_memo
      where func_getclass(acc_id) = 'CASH' and type = 'R';
  //bill_memo_cheque_details
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id,"date",0,0,cheq_amt,0 from bill_memo
        key join bill_memo_cheque_details where func_getclass(acc_id) = 'CASH'
      and type = 'S';
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id,"date",0,0,0,cheq_amt from bill_memo
        key join bill_memo_cheque_details where func_getclass(acc_id) = 'CASH'
      and type = 'R';
  //bill_memo_journal
  //for sales and sales_return
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select bill_memo_journal.acc_id,"date",
      if bv_dbcr = 'DB' then bv_amt else 0 endif,
      if bv_dbcr = 'CR' then bv_amt else 0 endif,
      if trim(bv_chequeno) = 'CASH' then 0
      else if bv_dbcr = 'DB' then bv_amt else 0 endif
      endif,if trim(bv_chequeno) = 'CASH' then 0
      else if bv_dbcr = 'CR' then bv_amt else 0 endif
      endif from bill_memo
        key join bill_memo_journal where func_getclass(bill_memo_journal.acc_id) = 'CASH';
  //invoice
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select acc_id,inv_date,0,inv_amt from invoice
      where func_getclass(acc_id) = 'CASH' and type = 'P';
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select acc_id,inv_date,inv_amt,0 from invoice
      where func_getclass(acc_id) = 'CASH' and type = 'R';
  //cash payment through cash_payment
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select cp_acc_id_cash,cp_date,0,cp_amt from cash_payment;
  //cheque_payment
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_bank,cheq_date,0,cheq_amt,0,cheq_amt
      from cheque_payment where func_getclass(acc_id_bank) = 'CASH';
  //cash_receipt
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit ) 
    select acc_id_cash,rec_date,amt,0 from cash_receipt;
  //cheque_receipt
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_cash_bank,rec_date,cheq_amt,0,cheq_amt,0
      from cheque_receipt where func_getclass(acc_id_cash_bank) = 'CASH';
  //contra
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_db,contra_date,contra_amt,0,
      if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif,0
      from contra_entries where func_getclass(acc_id_db) = 'CASH'
      and acc_id_db <> acc_id_cr;
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_cr,contra_date,0,contra_amt,0,
      if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif
      from contra_entries where func_getclass(acc_id_cr) = 'CASH'
      and acc_id_db <> acc_id_cr;
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_cr,contra_date,contra_amt,contra_amt,0,
      if trim(cheq_no) = 'CASH' or trim(cheq_no) is null then 0 else contra_amt endif
      from contra_entries where func_getclass(acc_id_cr) = 'CASH'
      and acc_id_db = acc_id_cr;
  //cash_bank_journal old program compatibity
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_db,cb_date,cb_amt,0,
      if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif,0
      from cash_bank_journal where func_getclass(acc_id_db) = 'CASH';
  insert into cashbook_summery_temp( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
    select acc_id_cr,cb_date,0,cb_amt,0,
      if trim(cb_cheqno) = 'CASH' then 0 else cb_amt endif
      from cash_bank_journal where func_getclass(acc_id_cr) = 'CASH';
  delete from cashbook_summery
    where cs_debit = 0 and cs_credit = 0 and cs_debit_cheque = 0
    and cs_credit_cheque = 0;
  return(@lret)
end
go

create function dba.func_getacccode( in @accid unsigned integer ) 
returns char(15)
begin
  declare @acccode char(15);
  select acc_code into @acccode from acc_main
    where acc_id = @accid;
  return(@acccode)
end
go

create function dba.func_getcrossopbalance( in @acccode char(15) ) 
returns T_money
begin
  declare @opbalance T_money;
  declare @acc_type char(1);
  select acc_opbal+acc_db-acc_cr,acc_type into @opbalance,@acc_type from acc_temp
    where acc_code = @acccode;
  if @opbalance is null or @acc_type in( 'I','E' ) then
    set @opbalance = 0
  end if;
  return(@opbalance)
end
go

create function dba.func_resetaccidtag( in @accid unsigned integer ) 
returns integer
begin
  delete from tag where tran_type = 2 and doc_id = any(select bill_memo_id from bill_memo where acc_id = @accid);
  delete from tag where tran_type = 1 and doc_id = any(select inv_id from invoice where acc_id = @accid);
  delete from tag where tran_type = 3 and doc_id = any(select cp_id from cash_payment where cp_acc_id = @accid);
  delete from tag where tran_type = 4 and doc_id = any(select cheq_id from cheque_payment where acc_id = @accid);
  delete from tag where tran_type = 5 and doc_id = any(select cr_id from cash_receipt where acc_id = @accid);
  delete from tag where tran_type = 6 and doc_id = any(select cheq_id from cheque_receipt where acc_id = @accid);
  delete from tag where tran_type = 8 and doc_id = any(select dc_id from debit_credit_note where(acc_id_cr = @accid or acc_id_db = @accid));
  delete from tag where tran_type = 10 and doc_id = any(select exp_id from expence where acc_id = @accid);
  delete from tag where tran_type = 0 and doc_id = @accid;
  delete from tag where tran_type = 7 and doc_id = any(select jou_id from journal where jou_acc_id = @accid)
end
go

create function dba.func_resetthistag( in @tag unsigned integer ) 
returns integer
begin
  if @tag is null or @tag = 0 then return
  end if;
  delete from tag where tag = @tag
end
go

create function dba.func_getnewcode()
returns unsigned integer
not deterministic
begin
  declare @code unsigned integer;
  select maxcode+1 into @code from acc_setup;
  if @code is null then set @code = 1
  end if;
  update acc_setup set maxcode = @code;
  return(@code)
end
go

create function dba.func_updateprice( in @prid1 unsigned integer,in @prid2 unsigned integer ) 
returns unsigned integer
begin
  declare @price1 T_money;
  declare @lastdate1 date;
  declare @lastdate2 date;
  declare @price2 T_money;
  set @price1 = func_getprice(@prid1);
  if @price1 = 0 or @price1 is null then return
  end if;
  select last_date into @lastdate1 from product
    where pr_id = @prid1;
  select last_date into @lastdate2 from product
    where pr_id = @prid2;
  if @lastdate1 is null then return
  end if;
  if @lastdate2 >= @lastdate1 then return
  end if;
  update product set last_price = @price1,last_date = @lastdate1
    where pr_id = @prid2;
  return(0)
end
go

create function dba.func_getdescription( in @transaction char(1),in @type char(1),in @class char(10) ) 
returns char(20)
begin
  // returns the description field for a transaction (sale,purchase,adjustment)
  declare @desc char(20);
  case @transaction when 'P' then
    if @type = 'P' then
      if @class = 'BANK' then set @desc = 'Bank Purchase'
      end if;
      if @class = 'CASH' then set @desc = 'Cash Purchase'
      end if;
      if @class in( 'DEBTOR','CREDITOR' ) then set @desc = 'Credit Purchase'
      end if
    else if @class = 'BANK' then set @desc = 'Bank Purchase Ret'
      end if;
      if @class = 'CASH' then set @desc = 'Cash Purchase Ret'
      end if;
      if @class in( 'DEBTOR','CREDITOR' ) then set @desc = 'Credit Purchase Ret'
      end if end if when 'S' then
    //sale
    if @type = 'S' then
      if @class = 'BANK' then set @desc = 'Bank Sale'
      end if;
      if @class = 'CASH' then set @desc = 'Cash Sale'
      end if;
      if @class in( 'DEBTOR','CREDITOR' ) then set @desc = 'Credit Sale'
      end if
    else if @class = 'BANK' then set @desc = 'Bank Sale Ret'
      end if;
      if @class = 'CASH' then set @desc = 'Cash Sale Ret'
      end if;
      if @class in( 'DEBTOR','CREDITOR' ) then set @desc = 'Credit Sale Ret'
      end if
    end if
  end case;
  return(@desc)
end
go

create function dba.func_getcrossgwid( in @gwid numeric(3) ) 
returns numeric(3)
begin
  declare @ret numeric(3);
  declare @gwcode char(15);
  select gw_code into @gwcode from godown_temp
    where gw_id = @gwid;
  select gw_id into @ret from godown where gw_code
     = @gwcode;
  return @ret
end
go

create function dba.func_getchequeincash( in @accid_cash unsigned integer ) 
returns char(10)
begin
  //returns chequeincash value from chequeincash_table. If null
  //then returns the default value of chequeincash from acc_setup
  declare @ret char(1);
  select chequeincash into @ret from chequeincash_table
    where acc_id = @accid_cash;
  if @ret is null then
    select default_chequeincash into @ret from acc_setup
  end if;
  return(@ret)
end
go

create function dba.func_getstock( in @pr_id unsigned integer ) 
returns T_money
begin
  declare @stock integer;
  select op+db-cr into @stock from inv_main
    where pr_id = @pr_id;
  if @stock is null then set @stock = 0
  end if;
  return(@stock)
end
go

create function dba.func_checkauditlockdate( in @accid1 unsigned integer,in @accid2 unsigned integer,in @tran_date date ) 
returns tinyint
begin
  --0 = ok
  --1 = locked
  declare @Ret tinyint;
  if(func_IsAuditLocked(@accId1,@Tran_Date) = 0) then
    if(func_IsAuditLocked(@accId2,@Tran_Date) = 0) then
      set @Ret = 0
    else
      set @Ret = 1
    end if
  else set @Ret = 1
  end if;
  if(@Ret = 1) then
    raiserror 17059;
    return(@ret)
  end if;
  return(@Ret)
end
go

create function dba.func_IsAuditLocked( in @AccID unsigned integer,in @TranDate date ) 
returns tinyint
begin
  declare @ret tinyint;
  declare @LockDate date;
  declare @TempAccID unsigned integer;
  set @Ret = 0;
  if(@accId is null) then return(@Ret)
  end if;
  set @TempAccID = @AccID;
  while(@TempAccID <> 0) loop
    select lock_date into @LockDate from audit_lock where acc_id = @TempAccID;
    if @LockDate is not null then
      set @Ret = 1;
      set @TempAccID = 0
    else
      select func_getParentID(@TempAccID)
        into @TempAccID
    end if
  end loop;
  if @Ret <> 0 then
    if @LockDate < @TranDate then
      set @Ret = 0
    else
      set @Ret = 1
    end if end if;
  return(@Ret)
end
go

-------------------------------------------------
--   Create views
-------------------------------------------------

commit
go


SET TEMPORARY OPTION force_view_creation='ON'
go

SET TEMPORARY OPTION force_view_creation='OFF'
go

call dbo.sa_recompile_views(1)
go


-------------------------------------------------
--   Create user messages
-------------------------------------------------


-------------------------------------------------
--   Create procedures
-------------------------------------------------

commit
go


create procedure dba.WebChanged as
begin
  update WebSynchronize set Revision = Revision+1
    where TableName = 'WebTemplate'
end
go

create procedure dba.sp_delete_quick_bill_memo_pb( @bill_memo_id unsigned integer ) 
begin
  delete from bill_memo where bill_memo_id = @bill_memo_id
end
go

create procedure dba.sp_delete_cheque_receipt_pb( in @id unsigned integer ) 
begin
  delete from cheque_receipt where cheq_id = @id
end
go

create procedure dba.sp_createautobill( @inv_id unsigned integer,@acc_id unsigned integer,@bill_date date,@sale_tax_sale_id unsigned integer ) 
begin
  //creates an autobill corresponding to @acc_id. bill details correspond to invoice details as per @inv_id
  declare @descr varchar(200);
  declare @amount T_money;
  declare @bill_memo_id unsigned integer;
  if not exists(select inv_id from invoice where inv_id = @inv_id) then
    raiserror 99999 'This invoice does not exist';
    select 0 from dummy;
    return
  end if;
  select descr,inv_amt into @descr,@amount from invoice where inv_id = @inv_id;
  insert into bill_memo( acc_id,descr,"date",sale_tax_sale_id,total_amt,type,inv ) 
    values( @acc_id,@descr,@bill_date,@sale_tax_sale_id,@amount,'S','Y' ) ;
  set @bill_memo_id = @@identity;
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price ) 
    select @bill_memo_id,inv_main_id,qty,actual_price from invoice_product where inv_id = @inv_id;
  //no error
  select @bill_memo_id from dummy
end
go

create procedure dba.sp_registercapitalaccount( in @acc_id unsigned integer default null ) 
begin
  --adds the default groups and subgroups in acc_main file
  if(select capitalaccount from acc_setup) is null then
    if @acc_id is null then
      select max(acc_id) into @acc_id from acc_main where acc_class = 'CAPITAL' and acc_root in( 'Y','S' ) ;
      if @acc_id is null then
        raiserror 17076 'Capital Account not registered';
        return
      end if end if;
    update acc_setup set capitalaccount = @acc_id
  end if
end
go

create procedure dba.sp_details_update( @acc_id integer,@lst varchar(20),@cst varchar(20),@Tan varchar(20),@pan varchar(20) ) 
begin
  update details set lst = @lst,cst = @cst,tan = @tan,pan = @pan where acc_id = @acc_id
end
go

create procedure dba.sp_blank()
begin
  set option fire_triggers = 'off';
  truncate table DBA.godown;
  truncate table DBA.acc_main;
  truncate table DBA.unit_of_measurement;
  truncate table DBA.counter;
  truncate table DBA.acc_setup;
  truncate table DBA.tran_type;
  commit work
end
go

create procedure dba.sp_init()
begin
  declare @gw integer;
  declare @count unsigned integer;
  select gw_id into @gw from godown; --initialize godown
  if @@rowcount = 0 then
    insert into godown( gw_id,gw_code,gw_descr ) 
      values( 1,'Main','Main' ) 
  end if;
  --initialize primary accounts
  call sp_adddefaultaccountcodes();
  --initialize unit of measurement
  select count(m_id) into @count from unit_of_measurement;
  if @count = 0 then
    insert into unit_of_measurement( m_id,dec_place,m_name ) 
      values( 1,0,'Pc' ) 
  end if;
  //init counter
  if not exists(select counter_id from counter) then insert into counter( counter_id,counter_code,
      counter_name ) values( 1,'MAIN','MAIN' ) 
  end if;
  --acc_setup table
  select id into @gw from acc_setup;
  if @@rowcount = 0 then
    insert into acc_setup( id,default_godown,supervisor,advanced,"user",guest,security,roundoff,timing ) 
      values( 1,1,'k\\X[P\\WISWT','iLLISEYFB','eVHUV','fYWHWH','cQO','0','N' ) 
  end if;
  if not exists(select color_id from pos_color) then
    insert into pos_color( color_name,color_id,red,green,blue ) values( 'White',1,255,255,255 ) ;
    insert into pos_color( color_name,color_id,red,green,blue ) values( 'Red',2,255,0,0 ) ;
    insert into pos_color( color_name,color_id,red,green,blue ) values( 'Green',3,0,255,0 ) ;
    insert into pos_color( color_name,color_id,red,green,blue ) values( 'Blue',4,0,0,255 ) 
  end if;
  --tran_type table
  if not exists(select id from tran_type) then
    insert into tran_type( id,descr ) 
      values( 1,'Purchase' ) ;
    insert into tran_type( id,descr ) 
      values( 2,'Sale' ) ;
    insert into tran_type( id,descr ) 
      values( 3,'Cash Payment' ) ;
    insert into tran_type( id,descr ) 
      values( 4,'Cheq Payment' ) ;
    insert into tran_type( id,descr ) 
      values( 5,'Cash Receipt' ) ;
    insert into tran_type( id,descr ) 
      values( 6,'Cheq Receipt' ) ;
    insert into tran_type( id,descr ) 
      values( 7,'Journal' ) ;
    insert into tran_type( id,descr ) 
      values( 8,'Db / Cr Note' ) ;
    insert into tran_type( id,descr ) 
      values( 9,'Contra' ) ;
    insert into tran_type( id,descr ) 
      values( 10,'Exp Credit' ) ;
    insert into tran_type( id,descr ) 
      values( 11,'Cash Bank Jo' ) ;
    insert into tran_type( id,descr ) 
      values( 12,'Last Yr Cheq' ) ;
    insert into tran_type( id,descr ) 
      values( 13,'Op Balance' ) ;
    insert into tran_type( id,descr ) 
      values( 14,'Sales Cheq' ) ;
    insert into tran_type( id,descr ) 
      values( 15,'Sales Vchr' ) ;
    insert into tran_type( id,descr ) 
      values( 16,'ff sale' ) 
  end if;
  commit work
end
go

create procedure dba.sp_resetopbalance( in @parm char(1),in @price char(1) default 'N' ) 
begin
  if @parm = 'I' then
    update inv_main set op = 0;
    if @@error <> 0 then
      rollback work;
      select 1 from dummy
    end if end if;
  if @price = 'Y' then
    update price_list set lsp = null,bill_disc1 = null,
      bill_disc3 = null,scheme2 = null,spd = null,spb = null,glp = null,
      cd = null,bill_disc2 = null,scheme1 = null,scheme2 = null,spc = null,
      spc = null,lpp = null;
    if @@error <> 0 then
      rollback work;
      select 3 from dummy
    end if end if;
  update acc_main set acc_opbal = 0 where acc_root = 'Y';
  if @@error <> 0 then
    rollback work;
    select 2 from dummy
  end if;
  commit work;
  select 0 from dummy
end
go

create procedure dba.sp_inventory_branditemboth
as
begin
  select brand,item,qty=op+db-cr,price=(if last_price is not null then last_price
    else product.op_price
    endif) into #temp from product key join inv_main where qty <> 0
  select brand,item,value=sum(qty*price) from #temp
    group by brand,item order by brand asc,item asc
end
go

create procedure dba.sp_inventory_item
as
begin
  select item,qty=op+db-cr,price=(if last_price is not null then last_price
    else product.op_price
    endif) into #temp from product key join inv_main where qty <> 0
  select item,value=sum(qty*price) from #temp
    group by item order by item asc
end
go

create procedure DBA.sp_compactproduct()
begin
  declare @lret integer;
  set @lret = 0;
  delete from inv_main where op = 0 and db = 0 and cr = 0
    and trf_cr = 0 and trf_db = 0;
  delete from price_list where not pr_id = any(select product.pr_id from product key join inv_main);
  delete from product where not pr_id = any(select pr_id from price_list)
    and not pr_id = any(select pr_id from inv_main)
    and not pr_id = any(select pr_id from godown_tran_product);
  if @@error <> 0 then
    raiserror 17072 'Error';
    set @lret = -1
  end if;
  select @lret from dummy
end
go

create procedure dba.f_setbillmemoinvoiceproduct( in @invmainid1 unsigned integer,in @invmainid2 unsigned integer ) 
on exception resume
begin
  declare @op integer;
  update bill_memo_product
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17107;
    return(1)
  end if;
  update invoice_product
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17108;
    return(1)
  end if;
  //update tally_details
  update tally_details
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17133;
    return(1)
  end if;
  //update tally_physical_stock
  update tally_physical_stock
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17134;
    return(1)
  end if;
  //update stock_journal_product
  update stock_journal_product
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17135;
    return(1)
  end if;
  //update seq_no table
  update seq_no
    set inv_main_id = @invmainid2
    where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17136;
    return(1)
  end if;
  select op into @op from inv_main where inv_main_id = @invmainid1;
  update inv_main set op = 0 where inv_main_id = @invmainid1;
  if @@error <> 0 then
    raiserror 17109;
    return(1)
  end if;
  update inv_main set op = op+@op where inv_main_id = @invmainid2;
  if @@error <> 0 then
    raiserror 17109;
    return(1)
  end if;
  return(0)
end
go

create procedure dba.sp_delete_price_list_pb( in @pr_id unsigned integer ) 
begin
  delete from price_list where pr_id = @pr_id;
  delete from inv_main where op = 0 and db = 0 and cr = 0
    and trf_cr = 0 and trf_db = 0 and pr_id = @pr_id;
  delete from product where pr_id = @pr_id
    and not exists(select pr_id from inv_main where pr_id = @pr_id);
  if @@error <> 0 then
    raiserror 17072
  end if
end
go

create procedure dba.func_getcheqno( @cheqid unsigned integer ) 
as
begin
  declare @cheqno char(20)
  select @cheqno = cheq_no from cheque_receipt
    where cheq_id = @cheqid
  return @cheqno
end
go

create procedure dba.sp_accledger_date( in @accid unsigned integer,in @type char(8),in @date date,in @acc_id_other unsigned integer ) 
begin
  truncate table DBA.temp_ledger;
  //tempid is the primary key of the table
  //purchase,purch ret
  if @type in( 'Csh Pur','Bnk Pur','Csh Prt','Bnk Prt','Crdt Pur','Crdt Prt' ) then
    set @type = 'Purchase'
  elseif @type in( 'Crdt Sal','Crdt Srt','Csh Sale','Csh Srt','Bnk Sale','Bnk Srt' ) then
    set @type = 'Sale'
  elseif @type in( 'Sal Vchr','Srt Vchr' ) then
    set @type = 'Vchr'
  end if;
  case @type when 'Purchase' then
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select inv_date,null,ref_no,descr,inv_amt,null,func_getaccname(invoice.acc_id),case func_getclass(invoice.acc_id) when 'CASH' then 'Csh Pur' when 'BANK' then 'Bnk Pur' else 'Crdt Pur' end,@accid,inv_id,@acc_id_other
        from invoice where(invoice.sale_tax_purchase_id = @accid
        and type = 'P' and inv_date = @date and acc_id = @acc_id_other) order by inv_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select inv_date,null,ref_no,descr,null,inv_amt,func_getaccname(invoice.sale_tax_purchase_id),case func_getclass(acc_id) when 'CASH' then 'Csh Pur' when 'BANK' then 'Bnk Pur' else 'Crdt Pur' end,@accid,inv_id,@acc_id_other
        from invoice where(acc_id = @accid
        and type = 'P' and inv_date = @date and sale_tax_purchase_id = @acc_id_other) order by inv_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select inv_date,null,ref_no,descr,null,inv_amt,func_getaccname(invoice.acc_id),case func_getclass(invoice.acc_id) when 'CASH' then 'Csh Prt' when 'BANK' then 'Bnk Prt' else 'Crdt Prt' end,@accid,inv_id,@acc_id_other
        from invoice where(invoice.sale_tax_purchase_id = @accid
        and type = 'R' and inv_date = @date and acc_id = @acc_id_other) order by inv_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select inv_date,null,ref_no,descr,inv_amt,null,func_getaccname(invoice.sale_tax_purchase_id),case func_getclass(acc_id) when 'CASH' then 'Csh Prt' when 'BANK' then 'Bnk Prt' else 'Crdt Prt' end,@accid,inv_id,@acc_id_other
        from invoice where(acc_id = @accid
        and type = 'R' and inv_date = @date and sale_tax_purchase_id = @acc_id_other) order by inv_id asc when 'Sale' then
    //sale , sale ret
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,ref_no,descr,null,total_amt,func_getaccname(acc_id),
        case func_getclass(acc_id) when 'CASH' then 'Csh Sale' when 'BANK' then 'Bnk Sale' else 'Crdt Sal' end,
        sale_tax_sale_id,bill_memo_id,acc_id from bill_memo
        where(acc_id is not null and sale_tax_sale_id = @accid and type = 'S'
        and "date" = @date and acc_id = @acc_id_other)
        order by bill_memo_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,ref_no,descr,total_amt,null,func_getaccname(sale_tax_sale_id),
        case func_getclass(acc_id) when 'CASH' then 'Csh Sale' when 'BANK' then 'Bnk Sale' else 'Crdt Sal' end,
        acc_id,bill_memo_id,sale_tax_sale_id from bill_memo
        where(acc_id is not null and acc_id = @accid and type = 'S'
        and "date" = @date and sale_tax_sale_id = @acc_id_other)
        order by bill_memo_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,ref_no,descr,null,total_amt,
        func_getaccname(acc_id),
        case func_getclass(acc_id) when 'CASH' then 'Csh Srt' when 'BANK' then 'Bnk Srt' else 'Crdt Srt' end,
        sale_tax_sale_id,bill_memo_id,acc_id from bill_memo
        where(acc_id is not null and sale_tax_sale_id = @accid and type = 'R'
        and "date" = @date and acc_id = @acc_id_other) order by bill_memo_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,ref_no,descr,total_amt,null,
        func_getaccname(sale_tax_sale_id),
        case func_getclass(acc_id) when 'CASH' then 'Csh Srt' when 'BANK' then 'Bnk Srt' else 'Crdt Srt' end,
        acc_id,bill_memo_id,sale_tax_sale_id from bill_memo
        where(acc_id is not null and acc_id = @accid and type = 'R'
        and "date" = @date and sale_tax_sale_id = @acc_id_other)
        order by bill_memo_id asc when 'Vchr' then
    --bill_memo_journal
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'CR' then bv_amt else null endif,if bv_dbcr = 'DB' then bv_amt else null endif,
        func_getaccname(bill_memo_journal.acc_id),'Sal Vchr',
        sale_tax_sale_id,bill_memo.bill_memo_id,bill_memo_journal.acc_id
        from bill_memo key join bill_memo_journal
        where(sale_tax_sale_id = @accid and bill_memo = 'J' and type = 'S'
        and "date" = @date and bill_memo_journal.acc_id = @acc_id_other)
        order by bill_memo.bill_memo_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'DB' then bv_amt else null endif,if bv_dbcr = 'cr' then bv_amt else null endif,
        func_getaccname(sale_tax_sale_id),'Sal Vchr',
        bill_memo_journal.acc_id,bill_memo.bill_memo_id,sale_tax_sale_id
        from bill_memo key join bill_memo_journal
        where(bill_memo_journal.acc_id = @accid and bill_memo = 'J' and type = 'S'
        and "date" = @date and sale_tax_sale_id = @acc_id_other) order by bv_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'CR' then bv_amt else null endif,if bv_dbcr = 'DB' then bv_amt else null endif,
        func_getaccname(bill_memo_journal.acc_id),'Srt Vchr',
        sale_tax_sale_id,bill_memo.bill_memo_id,bill_memo_journal.acc_id
        from bill_memo key join bill_memo_journal
        where(sale_tax_sale_id = @accid and bill_memo = 'J' and type = 'R'
        and "date" = @date and bill_memo_journal.acc_id = @acc_id_other) order by bill_memo.bill_memo_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'DB' then bv_amt else null endif,if bv_dbcr = 'cr' then bv_amt else null endif,
        func_getaccname(sale_tax_sale_id),'Srt Vchr',
        bill_memo_journal.acc_id,bill_memo.bill_memo_id,sale_tax_sale_id
        from bill_memo key join bill_memo_journal
        where(bill_memo_journal.acc_id = @accid and bill_memo = 'J' and type = 'R'
        and "date" = @date and sale_tax_sale_id = @acc_id_other) order by bv_id asc when 'Csh Pymt' then
    //cash payment
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cp_date,null,ref_no,remarks,cp_amt,null,acc_name,'Csh Pymt',@accid,cp_id,acc_main.acc_id
        from cash_payment join acc_main on acc_main.acc_id = cash_payment.cp_acc_id_cash
        where cash_payment.cp_acc_id = @accid and cp_date = @date and acc_main.acc_id = @acc_id_other order by cp_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cp_date,null,ref_no,remarks,null,cp_amt,acc_name,'Csh Pymt',@accid,cp_id,acc_main.acc_id
        from cash_payment join acc_main on acc_main.acc_id = cash_payment.cp_acc_id
        where cash_payment.cp_acc_id_cash = @accid and cp_date = @date and acc_main.acc_id = @acc_id_other order by cp_id asc when 'Chq Pymt' then
    //cheq payment    
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cheq_date,cheq_no,ref_no,remarks,cheq_amt,null,acc_name,'Chq Pymt',@accid,cheq_id,acc_main.acc_id
        from cheque_payment join acc_main on acc_main.acc_id = cheque_payment.acc_id_bank
        where cheque_payment.acc_id = @accid and cheq_date = @date and acc_main.acc_id = @acc_id_other order by cheq_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cheq_date,cheq_no,ref_no,remarks,null,cheq_amt,acc_name,'Chq Pymt',@accid,cheq_id,acc_main.acc_id
        from cheque_payment join acc_main on acc_main.acc_id = cheque_payment.acc_id
        where cheque_payment.acc_id_bank = @accid and cheq_date = @date and acc_main.acc_id = @acc_id_other order by cheq_id asc when 'Csh Rcpt' then
    //cash rcpt
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select rec_date,null,ref_no,remarks,null,amt,acc_name,'Csh Rcpt',@accid,cr_id,acc_main.acc_id
        from cash_receipt join acc_main on acc_main.acc_id = cash_receipt.acc_id_cash
        where cash_receipt.acc_id = @accid and rec_date = @date and acc_main.acc_id = @acc_id_other order by cr_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select rec_date,null,ref_no,remarks,amt,null,acc_name,'Csh Rcpt',@accid,cr_id,acc_main.acc_id
        from cash_receipt join acc_main on acc_main.acc_id = cash_receipt.acc_id
        where cash_receipt.acc_id_cash = @accid and rec_date = @date and acc_main.acc_id = @acc_id_other order by cr_id asc when 'Chq Rcpt' then
    //chq receipt
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select rec_date,cheq_no,ref_no,remarks,null,cheq_amt,acc_name,'Chq Rcpt',@accid,cheq_id,acc_main.acc_id
        from cheque_receipt join acc_main on acc_main.acc_id = cheque_receipt.acc_id_cash_bank
        where cheque_receipt.acc_id = @accid and rec_date = @date and acc_main.acc_id = @acc_id_other order by cheq_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select rec_date,cheq_no,ref_no,remarks,cheq_amt,null,acc_name,'Chq Rcpt',@accid,cheq_id,acc_main.acc_id
        from cheque_receipt join acc_main on acc_main.acc_id = cheque_receipt.acc_id
        where cheque_receipt.acc_id_cash_bank = @accid and rec_date = @date and acc_main.acc_id = @acc_id_other order by cheq_id asc when 'Journal' then
    //journal
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,type,acc_id_org,tempid,acc_id_other ) 
      select jou_date,null,jou_ref_no,jou_remarks,jou_amt,null,'Journal',@accid,journal_no.jou_no from journal_no
          key join journal where(jou_db_cr = 'D' and jou_acc_id = @accid and jou_date = @date) order by journal_no.jou_no asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,type,acc_id_org,tempid,acc_id_other ) 
      select jou_date,null,jou_ref_no,jou_remarks,null,jou_amt,'Journal',@accid,journal_no.jou_no from journal_no
          key join journal where(jou_db_cr = 'C' and jou_acc_id = @accid and jou_date = @date) order by journal_no.jou_no asc when 'D/C Note' then
    //d/c note
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select dc_date,null,ref_no,remarks,dc_amt,null,acc_name,'D/C Note',@accid,dc_id,acc_main.acc_id
        from debit_credit_note join acc_main on acc_main.acc_id = debit_credit_note.acc_id_cr
        where acc_id_db = @accid and dc_date = @date and acc_main.acc_id = @acc_id_other order by dc_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select dc_date,null,ref_no,remarks,null,dc_amt,acc_name,'D/C Note',@accid,dc_id,acc_main.acc_id
        from debit_credit_note join acc_main on acc_main.acc_id = debit_credit_note.acc_id_db
        where acc_id_cr = @accid and dc_date = @date and acc_main.acc_id = @acc_id_other order by dc_id asc when 'Contra' then
    //contra
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select contra_date,cheq_no,contra_entries.ref_no,remarks,contra_amt,
        null,acc_name,'Contra',@accid,contra_id,acc_main.acc_id
        from contra_entries join acc_main on acc_main.acc_id = contra_entries.acc_id_cr
        where acc_id_db = @accid and contra_date = @date and acc_main.acc_id = @acc_id_other order by contra_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select contra_date,cheq_no,contra_entries.ref_no,
        remarks,null,contra_amt,acc_name,'Contra',@accid,contra_id,acc_main.acc_id
        from contra_entries join acc_main on acc_main.acc_id = contra_entries.acc_id_db
        where acc_id_cr = @accid and contra_date = @date and acc_main.acc_id = @acc_id_other order by contra_id asc when 'CJournal' then
    //cash bank journal
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cb_date,cb_cheqno,cb_refno,cb_remarks,cb_amt,null,acc_name,'CJournal',@accid,cb_id,acc_main.acc_id
        from cash_bank_journal join acc_main on acc_main.acc_id = cash_bank_journal.acc_id_cr
        where acc_id_db = @accid and cb_date = @date and acc_main.acc_id = @acc_id_other order by cb_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select cb_date,cb_cheqno,cb_refno,cb_remarks,null,cb_amt,acc_name,'CJournal',@accid,cb_id,acc_main.acc_id
        from cash_bank_journal join acc_main on acc_main.acc_id = cash_bank_journal.acc_id_db
        where acc_id_cr = @accid and cb_date = @date and acc_main.acc_id = @acc_id_other order by cb_id asc when 'Expence' then
    //expence creditor
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select exp_date,null,ref_no,descr,exp_amt,null,acc_name,'Expence',@accid,exp_id,acc_main.acc_id
        from expence join acc_main on acc_main.acc_id = expence.acc_id
        where acc_id_exp = @accid and exp_date = @date and acc_main.acc_id = @acc_id_other order by exp_id asc;
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select exp_date,null,ref_no,descr,null,exp_amt,acc_name,'Expence',@accid,exp_id,acc_main.acc_id
        from expence join acc_main on acc_main.acc_id = expence.acc_id_exp
        where expence.acc_id = @accid and exp_date = @date and acc_main.acc_id = @acc_id_other order by exp_id asc
  end case;
  select "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,acc_id_other,tempid
    from temp_ledger
end
go

create procedure dba.sp_acccashbook( @accid unsigned integer,@type char(1),@sdate date,@edate date ) as
begin
  declare @saleaccid unsigned integer,
  @lock integer
  select @lock = func_getlock() from dummy
  if @lock = 1
    begin
      select 'date'=today(),cheq_no=null,ref_no=null,remarks=null,debit=0,credit=0,
        null,tempid=0,type='S',acc_id_org=0,acc_id_other=0,id=0 from dummy
      return
    end
  if @sdate is null set @sdate = "date"('1900-01-01')
  if @edate is null or @edate = "date"('1900-01-01') set @edate = "date"('2050-12-30')
  truncate table DBA.temp_ledger
  truncate table DBA.temp_ledger1
  -- invoice
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select inv_date,null,ref_no,descr,inv_amt,null,acc_name,inv_id,'Csh prt',
      invoice.sale_tax_purchase_id
      from invoice join acc_main on invoice.sale_tax_purchase_id = acc_main.acc_id
      where(invoice.acc_id = @accid and type = 'R' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select inv_date,null,ref_no,descr,null,inv_amt,acc_name,inv_id,'Csh pur',
      invoice.sale_tax_purchase_id
      from invoice join acc_main on invoice.sale_tax_purchase_id = acc_main.acc_id
      where(invoice.acc_id = @accid and type = 'P' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc
  --bill_memo_journal
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,bv_amt,null,acc_name,bill_memo.bill_memo_id,if type = 'S' then 'Sal Vchr' else 'Srt Vchr' endif,
      bill_memo.sale_tax_sale_id
      from bill_memo key join bill_memo_journal join acc_main on bill_memo.sale_tax_sale_id = acc_main.acc_id
      where(bill_memo_journal.acc_id = @accid and bill_memo = 'J' and bv_dbcr = 'DB' and "date" >= @sdate and "date" <= @edate) order by bv_id asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,null,bv_amt,acc_name,bill_memo.bill_memo_id,if type = 'S' then 'Sal Vchr' else 'Srt Vchr' endif,
      bill_memo.sale_tax_sale_id
      from bill_memo key join bill_memo_journal join acc_main on bill_memo.sale_tax_sale_id = acc_main.acc_id
      where(bill_memo_journal.acc_id = @accid and bill_memo = 'J' and bv_dbcr = 'CR' and "date" >= @sdate and "date" <= @edate) order by bv_id asc
  --bill memo
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select "date",null,ref_no,descr,total_amt,null,acc_name,bill_memo_id,'Csh Sale',
      bill_memo.sale_tax_sale_id
      from bill_memo join acc_main on bill_memo.sale_tax_sale_id = acc_main.acc_id
      where(bill_memo.acc_id = @accid and type = 'S' and bill_memo = 'M' and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select "date",null,ref_no,descr,null,total_amt,acc_name,bill_memo_id,'Csh Srt',
      bill_memo.sale_tax_sale_id from bill_memo
        join acc_main on bill_memo.sale_tax_sale_id = acc_main.acc_id
      where(bill_memo.acc_id = @accid and type = 'R' and bill_memo = 'M' and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc
  --cash payment
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select cp_date,null,ref_no,remarks,null,cp_amt,acc_name,cp_id,'Csh Pymt',cp_acc_id from cash_payment
        join acc_main on cash_payment.cp_acc_id = acc_main.acc_id
      where cash_payment.cp_acc_id_cash = @accid and cp_date >= @sdate and cp_date <= @edate order by cp_id asc
  --cheque payment
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select cheq_date,cheq_no,ref_no,remarks,null,cheq_amt,acc_name,cheq_id,'Chq Pymt',cheque_payment.acc_id from cheque_payment
        join acc_main on cheque_payment.acc_id = acc_main.acc_id
      where cheque_payment.acc_id_bank = @accid and cheq_date >= @sdate and cheq_date <= @edate order by cheq_id asc
  --cash receipt
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select rec_date,null,ref_no,remarks,amt,null,acc_name,cr_id,'Csh Rcpt',cash_receipt.acc_id from cash_receipt
        join acc_main on cash_receipt.acc_id = acc_main.acc_id
      where cash_receipt.acc_id_cash = @accid and rec_date >= @sdate and rec_date <= @edate order by cr_id asc
  --cheque receipt
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select rec_date,cheq_no,ref_no,remarks,cheq_amt,null,acc_name,cheq_id,'Chq Rcpt',cheque_receipt.acc_id
      from cheque_receipt join acc_main on cheque_receipt.acc_id = acc_main.acc_id
      where cheque_receipt.acc_id_cash_bank = @accid and rec_date >= @sdate and rec_date <= @edate order by cheq_id asc
  --jv
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,tempid,type,acc_id_other ) 
    select jou_date,null,ref_no,remarks,jou_amt,null,journal_no.jou_no,'Journal',0 from journal_no
        join journal where(jou_db_cr = 'D' and jou_acc_id = @accid) order by journal_no.jou_no asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,tempid,type,acc_id_other ) 
    select jou_date,null,ref_no,remarks,null,jou_amt,journal_no.jou_no,'Journal',0 from journal_no
        join journal where(jou_db_cr = 'C' and jou_acc_id = @accid and jou_date >= @sdate and jou_date <= @edate) order by journal_no.jou_no asc
  --contra
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select contra_date,cheq_no,contra_entries.ref_no,remarks,contra_amt,
      null,acc_name,contra_id,'Contra',acc_id_cr from contra_entries
        join acc_main on contra_entries.acc_id_cr = acc_main.acc_id
      where acc_id_db = @accid and contra_date >= @sdate and contra_date <= @edate order by contra_id asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select contra_date,cheq_no,contra_entries.ref_no,
      remarks,null,contra_amt,acc_name,contra_id,'Contra',acc_id_db from contra_entries
        join acc_main on contra_entries.acc_id_db = acc_main.acc_id
      where acc_id_cr = @accid and contra_date >= @sdate and contra_date <= @edate order by contra_id asc
  --cash_bank_journal
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select cb_date,cb_cheqno,cb_refno,cb_remarks,cb_amt,null,acc_name,cb_id,'CJournal',acc_id_cr
      from cash_bank_journal join acc_main on cash_bank_journal.acc_id_cr = acc_main.acc_id
      where acc_id_db = @accid and cb_date >= @sdate and cb_date <= @edate order by cb_id asc
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
    select cb_date,cb_cheqno,cb_refno,cb_remarks,null,cb_amt,acc_name,cb_id,'CJournal',acc_id_db
      from cash_bank_journal join acc_main on cash_bank_journal.acc_id_db = acc_main.acc_id
      where acc_id_cr = @accid and cb_date >= @sdate and cb_date <= @edate order by cb_id asc
  if @type = 'A' --all, no summery
    select "date",cheq_no,ref_no,remarks,debit,credit,
      if debit is null then 'Db '+accname else 'Cr '+accname endif,tempid,type,acc_id_org=@accid,acc_id_other,id
      from temp_ledger order by "Date" asc,id asc
  else if @type = 'B'
      begin
        -- summery debit side, tempid is 0 for debit side
        insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
          select "date",null,null,null,sum(debit),null,accname,0,type,acc_id_other
            from temp_ledger where debit is not null group by "date",accname,type,acc_id_other order by "date" asc
        insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
          select "date",cheq_no,ref_no,remarks,null,credit,accname,tempid,type,acc_id_other
            from temp_ledger where credit is not null order by "date" asc
        select "date",cheq_no,ref_no,remarks,debit,credit,
          if debit is null then 'Db '+accname else 'Cr '+accname endif,tempid,type,acc_id_org=@accid,acc_id_other,id
          from temp_ledger1 order by "Date" asc,id asc
      end
    else
      begin
        -- both summery,tempid is 0
        insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
          select "date",null,null,null,sum(debit),null,accname,0,type,acc_id_other
            from temp_ledger where debit is not null group by "date",accname,type,acc_id_other order by "date" asc
        insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,tempid,type,acc_id_other ) 
          select "date",null,null,null,null,sum(credit),accname,0,type,acc_id_other
            from temp_ledger
            where credit is not null group by "date",accname,type,acc_id_other order by "date" asc
        select "date",cheq_no,ref_no,remarks,debit,credit,
          if debit is null then 'Db '+accname else 'Cr '+accname endif,tempid,type,acc_id_org=@accid,acc_id_other,id
          from temp_ledger1 order by "Date" asc,id asc
      end
end
go

create procedure dba.sp_update_cash_receipt_pb( @cr_id unsigned integer,@rec_date date,@amt T_money,@ref_no char(30),@remarks varchar(200),@deposit_to char(15),@received_from char(15),@through varchar(90)= null ) 
as
begin
  declare @acc_id unsigned integer
  declare @acc_id_cash unsigned integer
  select @acc_id = func_getaccid(@received_from)
  if @acc_id is null
    begin
      raiserror 17083
      return
    end
  select @acc_id_cash = func_getaccid(@deposit_to)
  if @acc_id_cash is null
    begin
      raiserror 17084
      return
    end
  update cash_receipt
    set rec_date = @rec_date,
    ref_no = @ref_no,
    amt = @amt,
    remarks = @remarks,
    through = @through,
    acc_id = @acc_id,
    acc_id_cash = @acc_id_cash
    where cr_id = @cr_id
end
go

create procedure dba.sp_update_details_pb( in @acc_id unsigned integer,@details_id unsigned integer,in @addr1 varchar(40),in @addr2 varchar(40),in @pin char(15),in @phone varchar(30),in @fax varchar(30),in @email varchar(40),in @cst varchar(20),in @lst varchar(20),in @remarks varchar(200),in @inc_tax varchar(30),in @category char(1),in @person_name varchar(60),in @acc_code char(15),in @acc_name varchar(40),in @tan numeric(11) ) 
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
      and(@tan is null or @tan = 0) then
      return
    end if;
    insert into details( addr1,addr2,pin,phone,fax,email,
      cst,lst,remarks,inc_tax,category,acc_id,person_name,tan ) values( @addr1,@addr2,@pin,@phone,@fax,@email,
      @cst,@lst,@remarks,@inc_tax,@category,@acc_id,@person_name,@tan ) 
  else -- already present so update
    if(@addr1 is null or trim(@addr1) = '') and(@addr2 is null or trim(@addr2) = '')
      and(@pin is null or trim(@pin) = '') and(@phone is null or trim(@phone) = '')
      and(@fax is null or trim(@fax) = '') and(@email is null or trim(@email) = '')
      and(@cst is null or trim(@cst) = '') and(@lst is null or trim(@lst) = '')
      and(@remarks is null or trim(@remarks) = '')
      and(@inc_tax is null or trim(@inc_tax) = '')
      and(@person_name is null or trim(@person_name) = '')
      and(@tan is null or @tan = 0) then
      delete from details where details_id = @details_id;
      return
    end if;
    update details set addr1 = @addr1,
      addr2 = @addr2,pin = @pin,phone = @phone,
      fax = @fax,email = @email,cst = @cst,lst = @lst,
      remarks = @remarks,inc_tax = @inc_tax,category = @category,person_name = @person_name,tan = @tan
      where details_id = @details_id
  end if
end
go

create procedure dba.sp_insert_details_pb( in @acc_parent unsigned integer,in @acc_code char(15),in @acc_name varchar(40),in @addr1 varchar(40),in @addr2 varchar(40),in @pin char(15),in @phone varchar(30),in @fax varchar(30),in @email varchar(40),in @cst varchar(20),in @lst varchar(20),in @remarks varchar(200),in @inc_tax varchar(30),in @category char(1),in @person_name varchar(60) ) 
begin
  //first acc_main
  declare @acc_id unsigned integer;
  insert into acc_main( acc_code,
    acc_name,acc_type,acc_class,acc_parent,acc_root,acc_opbal,acc_db,acc_cr,acc_primary,acc_sibling ) 
    values( @acc_code,@acc_name,'L','CREDITOR',@acc_parent,'Y',0,0,0,'N',0 ) ;
  set @acc_id = @@identity;
  insert into details( addr1,addr2,pin,phone,fax,email,
    cst,lst,remarks,inc_tax,category,acc_id,person_name ) 
    values( @addr1,@addr2,@pin,@phone,@fax,@email,
    @cst,@lst,@remarks,@inc_tax,@category,@acc_id,@person_name ) 
end
go

create procedure dba.sp_insert_quick_memo_pb( inout @bill_memo_id unsigned integer,in @ref_no char(15),in @date date,in @form char(1),in @total_amt T_money,in @sale_tax_sale_id unsigned integer,in @acc_id unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @gw_id numeric(3),in @sale_warranty integer ) 
begin
  declare @inv_main_id unsigned integer;
  declare @rowcount integer;
  insert into bill_memo( acc_id,ref_no,"date",form,sale_tax_sale_id,discount,
    credit_limit,bill_memo,tax,other_charges,total_amt,type ) 
    values( @acc_id,@ref_no,@date,@form,@sale_tax_sale_id,0,
    0,'M',0,0,@total_amt,'S' ) ;
  select @@rowcount,@@identity into @rowcount,@bill_memo_id from dummy;
  if @@rowcount = 0 then raiserror 17100 'Error in Memo values';
    return
  end if;
  select inv_main_id into @inv_main_id from inv_main
      key join product
    where item = @item and brand = @brand and model = @model and gw_id = @gw_id;
  if @@rowcount = 0 then raiserror 17099;
    return
  end if;
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price,
    gross_profit,sale_warranty,discount,actual_price,actual_profit ) 
    values( @bill_memo_id,@inv_main_id,1,@total_amt,0,@sale_warranty,0,@total_amt,0 ) ;
  if @@rowcount = 0 or @@error <> 0 then
    raiserror 99999 'Could not insert data for details';
    return
  end if
end
go

create procedure dba.sp_Purchase_creditor( in sDate date,in eDate date ) 
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
  select acc_id,if type = 'P' then inv_amt else-inv_amt endif as amt,if type = 'P' then vat else-vat endif as vat,func_getaccname(acc_id) as descr into #temp1
    from invoice where inv_date between sDate and eDate;
  //select* from #temp
  select acc_id,Func_Getacccode(acc_id) as code,max(descr) as Description,
    sum(amt) as amount,
    (select sum(amt) as amountInvoice from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select sum(vat) as InputVat from #temp1 where #temp1.acc_id = #temp.acc_id),
    (select max(lst) from details where acc_id = #temp.acc_id) as Lst,
    (select max(tan) from details where acc_id = #temp.acc_id) as TAN,
    (select max(cst) from details where acc_id = #temp.acc_id) as cst,
    (select max(pan) from details where acc_id = #temp.acc_id) as pan
    from #temp group by acc_id order by code asc
end
go

create procedure dba.sp_insert_bank_recon_opbalance( @acc_id_bank unsigned integer,@tran_date date,@debit_amt T_money,@credit_amt T_money,@ref_no char(30),@clear_date date,@cheq_no char(20),@acc_code char(15) ) 
as
begin
  declare @acc_id unsigned integer
  select @acc_id = acc_id from acc_main where acc_code = @acc_code
  if @@rowcount = 0
    begin
      raiserror 17078
      return
    end
  --tran_type = 12 for last years cheque
  insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
    ref_no,clear_date,cheq_no,acc_id,period,tran_type ) 
    values( @acc_id_bank,@tran_date,@debit_amt,@credit_amt,
    @ref_no,@clear_date,@cheq_no,@acc_id,'LE',12 ) 
  if @@rowcount = 0 or @@error <> 0
    begin
      raiserror 17077
      return
    end
end
go

create procedure dba.sp_ledger_monthly( in @accid unsigned integer,in @type char(1),in @sdate date default null,in @edate date default null ) 
begin
  truncate table DBA.temp_ledger;
  truncate table DBA.temp_ledger1;
  insert into temp_accid( accid ) values( @accid ) ;
  -- inserts into table whose insert trigger inserts into table temp1_accid
  --temp1_accid table contains all acc_id's which are to be shown details of
  --runs the stored procedure for ledger account of each ledger
  select sp_accledger(accid,@type,@sdate,@edate) into #temp from temp1_accid;
  -- Now result contains in temp_ledger1 table. Retrieve it
  select max(monthname("date")),month("date") as mn,max(year("date")) as yr,
    sum(debit) as debit,sum(credit) as credit,
    acc_name,acc_id_org from temp_ledger1 join acc_main
      on acc_main.acc_id = temp_ledger1.acc_id_org
    group by mn,acc_id_org,acc_name order by acc_name asc,
    yr asc,mn asc
end
go

create procedure dba.f_setinvmainid( @gwid numeric(3),@invmainid1 unsigned integer,@prid2 unsigned integer ) 
as
begin
  --returns the inv_main_id corresponding to the @prid2.If it does not
  --exist then insert it.
  declare @invmainid2 unsigned integer,
  @opprice T_money
  --get for @prid1
  select @opprice = op_price from inv_main where inv_main_id
     = @invmainid1
  --get @invmainid2 for the same godown
  select @invmainid2 = inv_main_id from inv_main
    where pr_id = @prid2 and gw_id = @gwid
  if @@rowcount = 0
    begin
      insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,op_price ) 
        values( 0,0,0,@prid2,0,0,@gwid,@opprice ) 
      select @invmainid2 = @@identity
    end
  return(@invmainid2)
end
go

create procedure dba.sp_subaccounts( @accid unsigned integer ) as
begin
  select acc_id,acc_code,acc_name,acc_type,acc_class,
    acc_opbal,acc_db,acc_cr,acc_closbal=acc_opbal+acc_db-acc_cr
    from acc_main where acc_root in( 'Y','S' ) and not(acc_opbal = 0 and acc_db = 0
    and acc_cr = 0) and acc_parent = @accid
end
go

create procedure dba.sp_update_godown_transaction_product_pb( @tp_id unsigned integer,@tp_qty integer,@item char(10),@brand char(20),@model char(20),@tp_remarks varchar(70),@tran_id unsigned integer ) 
as
begin
  declare @pr_id unsigned integer
  select @pr_id = pr_id from product where item = @item and brand = @brand
    and model = @model
  if @pr_id is null begin
      raiserror 17099
      return
    end
  update godown_tran_product
    set pr_id = @pr_id,tp_qty = @tp_qty,tp_remarks = @tp_remarks,tran_id = @tran_id
    where tp_id = @tp_id
  if @@error <> 0 begin
      raiserror 17082
      return
    end
end
go

create procedure dba.sp_retrieve_transaction_pb as
begin
  --returns the count for all the transactions in the database
  select cnt=count(acc_tran_id),debit=sum(amt),
    credit=debit*0,tran_type into #temp from acc_tran
    where acc_id_db is not null group by tran_type
  insert into #temp( cnt,debit,credit,tran_type ) 
    select cnt=count(acc_tran_id),debit=credit*0.0,
      credit=sum(amt),tran_type
      from acc_tran where acc_id_cr is not null group by tran_type
  select cnt=sum(#temp.cnt),debit=sum(#temp.debit),
    credit=sum(credit),type=func_gettrantype(tran_type)
    from #temp group by tran_type
end
go

create procedure dba.sp_insert_stock_journal_product_pb( @sjp_id unsigned integer output,@inv_main_id unsigned integer output,@gw_code char(15),@item char(10),@brand char(20),@model char(20),@remarks varchar(200),@sj_id unsigned integer,@debit_qty smallint,@credit_qty smallint ) 
as
begin
  declare @rowcount unsigned integer
  select @inv_main_id = inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model
  if @inv_main_id is null or @inv_main_id = 0
    begin
      raiserror 17099
      return
    end
  insert into stock_journal_product( sj_id,inv_main_id,debit_qty,credit_qty,remarks ) 
    values( @sj_id,@inv_main_id,@debit_qty,@credit_qty,@remarks ) 
  select @sjp_id = @@identity,@rowcount = @@rowcount
  if @@error <> 0 or @rowcount = 0 begin
      select @sjp_id = null
      raiserror 17082
      return
    end
end
go

create procedure dba.sp_insert_invoice_product_pb( inout @invoice_product_id unsigned integer,inout @inv_main_id unsigned integer,in @inv_id unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @gw_code char(15),in @qty smallint,in @price T_money,in @discount T_money,in @actual_price T_money,in @spl_disc T_money,in @purchase_warranty tinyint ) 
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
    actual_price,spl_disc,purchase_warranty ) 
    values( @inv_id,@inv_main_id,@qty,@price,@discount,@actual_price,
    @spl_disc,@purchase_warranty ) ;
  select @@identity,@@rowcount,@@error into @identity,@rowcount,@error;
  if @rowcount = 0 or @rowcount is null or @error <> 0 then
    raiserror 17082 'error';
    return
  end if;
  set @invoice_product_id = @identity
end
go

create procedure dba.sp_insert_godown_transaction_product_pb( @tp_id unsigned integer output,@tp_qty integer,@item char(10),@brand char(20),@model char(20),@tp_remarks varchar(70),@tran_id unsigned integer ) as
begin
  declare @pr_id unsigned integer,
  @error integer
  select @pr_id = pr_id from product where item = @item and brand = @brand
    and model = @model
  if @pr_id is null
    begin
      raiserror 17099
      return
    end
  insert into godown_tran_product( pr_id,tp_qty,tp_remarks,tran_id ) 
    values( @pr_id,@tp_qty,@tp_remarks,@tran_id ) 
  select @tp_id = @@identity,@error = @@error from dummy
  if @error <> 0
    begin
      raiserror 17082
      return
    end
end
go

create procedure dba.sp_update_bank_recon_opbalance( @br_id unsigned integer,@tran_date date,@debit_amt T_money,@credit_amt T_money,@ref_no char(30),@clear_date date,@cheq_no char(20),@acc_code char(15),@period char(2) ) 
as
begin
  declare @acc_id unsigned integer
  select @acc_id = acc_id from acc_main where acc_code = @acc_code
  if @@rowcount = 0
    begin
      if @period <> 'OP' -- Last year's closing balance
        begin
          raiserror 17078
          return
        end
    end
  update bank_recon
    set tran_date = @tran_date,
    debit_amt = @debit_amt,
    credit_amt = @credit_amt,
    ref_no = @ref_no,
    clear_date = @clear_date,
    cheq_no = @cheq_no,
    acc_id = @acc_id
    where br_id = @br_id
end
go

create procedure dba.sp_insert_cheque_payment_pb( inout @cheq_id unsigned integer,in @cheq_no char(20),in @cheq_date date,in @cheq_amt T_money,inout @ref_no char(20),in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @clear_date date default null,in @through varchar(90) default null ) 
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
    acc_id_bank,ref_no,remarks,through ) values( @cheq_no,@cheq_date,@acc_id,
    @cheq_amt,@acc_id_bank,@ref_no,@remarks,@through ) ;
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

create procedure dba.sp_update_bill_memo_product_pb( @inv_main_id unsigned integer output,@bill_product_id unsigned integer,@gw_code char(15),@item char(10),@brand char(20),@model char(20),@spec varchar(90),@bill_memo_id unsigned integer,@qty smallint,@price T_money,@sale_warranty tinyint,@discount T_money,@actual_price T_money ) 
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
    spec = @spec where bill_product_id = @bill_product_id
end
go

create procedure dba.sp_update_customer_pb( @cust_id unsigned integer,@name varchar(40),@addr1 varchar(40),@addr2 varchar(40),@pin varchar(10),@phone varchar(30),@email varchar(30),@card_no varchar(30),@card_name varchar(10) ) 
as
begin
  update customer set name = @name,addr1 = @addr1,addr2 = @addr2,pin = @pin,
    phone = @phone,email = @email,card_no = @card_no,card_name = @card_name
    where cust_id = @cust_id
end
go

create procedure dba.sp_retrieve_bill_memo_pb( @accid unsigned integer,@last unsigned integer,@tempid unsigned integer,@type char(1),@pdate date ) 
as
begin
  declare @id unsigned integer
  declare @pdate date
  declare @edate date
  if @pdate = "date"('1900-01-01') select @edate = "date"('2050-01-01')
  else select @edate = @pdate
  if @tempid is not null and @tempid <> 0
    select "date",bill_memo_id,ref_no,descr,challan_no,discount,
      form,sale_tax_sale_id,type,bill_memo.acc_id,credit_limit,
      cust_id,bill_memo,Tax,other_charges,Total_amt,
      surcharge,acc_code=func_getacccode(sale_tax_sale_id)
      from bill_memo
      where(bill_memo.acc_id = @accid) and(type = @type) and bill_memo <> 'J'
      and(bill_memo_id = @tempid)
  else begin
      select @id = max(bill_memo_id) from bill_memo
      if @last = 0 select @id = 0
      else
        if @last > @id select @id = 0
        else select @id = @id-@last
      select "date",bill_memo_id,ref_no,descr,challan_no,discount,
        form,sale_tax_sale_id,type,bill_memo.acc_id,credit_limit,
        cust_id,bill_memo,Tax,other_charges,Total_amt,
        surcharge,acc_code=func_getacccode(sale_tax_sale_id)
        from bill_memo
        where(bill_memo.acc_id = @accid) and(type = @type) and bill_memo <> 'J'
        and(string(bill_memo_id) like if @tempid is null then '%' else string(@tempid) endif)
        and(bill_memo_id > @id) and("date" between @pdate and @edate)
    end
end
go

create procedure dba.func_getsumbillmemoproduct( @bill_memo_id unsigned integer ) 
as
begin
  declare @sum T_money
  select @sum = sum((price-discount)*qty) from bill_memo_product
    where bill_memo_id = @bill_memo_id
  if @sum is null
    select @sum = 0.0
  return @sum
end
go

create procedure dba.sp_insert_debit_credit_note_pb( out @dc_id unsigned integer,inout @dc_no integer,in @ref_no char(30),in @dc_date date,in @dc_amt T_money,in @acc_code_db char(15),in @acc_code_cr char(15),in @remarks varchar(300) ) 
begin
  declare @identity unsigned integer;
  declare @rowcount unsigned integer;
  declare @error integer;
  insert into debit_credit_note( dc_no,ref_no,remarks,dc_amt,
    acc_id_db,acc_id_cr,dc_date ) 
    values( @dc_no,@ref_no,@remarks,@dc_amt,
    func_getaccid(@acc_code_db),func_getaccid(@acc_code_cr),@dc_date ) ;
  select @@rowcount,@@error,@@identity into @rowcount,@error,@identity from dummy;
  if @rowcount = 0 or @error <> 0 then
    raiserror 17096;
    return
  end if;
  set @dc_id = @identity;
  select dc_no into @dc_no from debit_credit_note
    where dc_id = @dc_id
end
go

create procedure dba.sp_insert_bill_memo_product_pb( inout @bill_product_id unsigned integer,inout @inv_main_id unsigned integer,in @gw_code char(15),in @item char(10),in @brand char(20),in @model char(20),in @spec varchar(90),in @bill_memo_id unsigned integer,in @qty smallint,in @price T_money,in @sale_warranty tinyint,in @discount T_money,in @actual_price T_money ) 
begin
  declare @rowcount unsigned integer;
  select inv_main_id into @inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model;
  if @inv_main_id is null or @inv_main_id = 0 then
    raiserror 17113 'This product does not exist';
    return
  end if;
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price,gross_profit,
    sale_warranty,discount,actual_price,spec ) 
    values( @bill_memo_id,@inv_main_id,@qty,@price,0,@sale_warranty,@discount,
    @actual_price,@spec ) ;
  select @@identity,@@rowcount into @bill_product_id,@rowcount;
  if @@error <> 0 or @rowcount = 0 then
    set @bill_product_id = null;
    raiserror 17081 'Error';
    return
  end if
end
go

create procedure dba.sp_update_cheque_payment_pb( @cheq_id unsigned integer,@cheq_no char(20),@cheq_date date,@cheq_amt T_money,@ref_no char(20),@remarks varchar(200),@pay_from char(15),@pay_to char(15),@through varchar(90)= null ) 
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
    through = @through
    where cheq_id = @cheq_id
end
go

create procedure DBA.sp_insert_credit_card_pb( @tag unsigned integer,@cheq_no char(20),@rec_date date,@cheq_amt T_money,@bank varchar(40),@branch varchar(40),@acc_id_cash_bank unsigned integer,@acc_id unsigned integer,@commission T_money ) 
begin
  //insert in cheque_receipt
  declare @cheq_id unsigned integer;
  declare @cp_id unsigned integer;
  insert into cheque_receipt( cheq_no,rec_date,bank,branch,cheq_amt,acc_id,acc_id_cash_bank,remarks,adj_amt ) 
    values( @cheq_no,@rec_date,@bank,@branch,@cheq_amt,@acc_id,@acc_id_cash_bank,'Auto Receipt of Credit Card',0 ) ;
  set @cheq_id = @@identity;
  //insert into cash_payment. the commission entry
  insert into cash_payment( cp_date,cp_amt,cp_acc_id,cp_acc_id_cash,remarks,adj_amt ) 
    values( @rec_date,@commission,(select acc_id_card_comm from acc_setup),@acc_id,'Credit Card Commision auto generation',0 ) ;
  set @cp_id = @@identity;
  //insert into tag table
  //cheq_receipt
  insert into tag( tag,doc_id,tran_type,amt ) values( @tag,@cheq_id,6,0 ) ;
  //commission into cash_payment
  insert into tag( tag,doc_id,tran_type,amt ) values( @tag,@cp_id,3,0 ) 
end
go

create procedure dba.sp_trial_balance as
begin
  declare @lock integer
  select @lock = func_getlock() from dummy
  if @lock = 0
    select acc_id,acc_code,acc_name,acc_type,acc_class,
      acc_opbal,acc_db,acc_cr,acc_closbal=acc_opbal+acc_db-acc_cr
      from acc_main_temp where acc_root in( 'Y','L' ) and not(acc_opbal = 0 and acc_db = 0
      and acc_cr = 0)
  else
    select acc_id=0,acc_code='',acc_name='',acc_type='',acc_class='',
      acc_opbal=0,acc_db=0,acc_cr=0,acc_closbal=0
      from dummy
end
go

create procedure dba.sp_retrieve_price_list_pb( in @item char(10),in @brand char(20),in @model char(20),in @spec char(15) ) 
begin
  select item,brand,model,spec,
    ifnull(last_price,inv_main.op_price,last_price) as lst_pur_price,
    LPP,LSP,GLP,spa,spb,spc,spd,ifnull(lpp,0,lpp)*ifnull(cd,0,cd) as cash_disc,
    func_getdiscount(price_list.pr_id,bill_disc1) as disc1,
    func_getdiscount(price_list.pr_id,bill_disc2) as disc2,
    func_getdiscount(price_list.pr_id,bill_disc3) as disc3,
    func_getdiscount(price_list.pr_id,scheme1) as sch1,
    func_getdiscount(price_list.pr_id,scheme2) as sch2,
    price_list.pr_id,func_getcalculatedlandingprice(price_list.pr_id,disc1,
    disc2,disc3,sch1,sch2,sch3,cash_disc) as calculated_landed_price,
    (op+db-cr) as stock,
    func_getdiscount(price_list.pr_id,scheme3) as sch3
    from product left outer join price_list left outer join inv_main
    where item like @item and brand like @brand and model like @model
    and ifnull(spec,' ',spec) like @spec and show = 'Y'
end
go

create procedure dba.sp_product_invmain( @op integer,@db integer,@cr integer,@gw_id numeric(3),@op_price T_money,@item char(10),@brand char(20),@model char(20),@sl_no char(1),@op_price1 T_money,@last_price T_money,@last_date date,@acc_id_sale_tax integer ) as
begin
  declare @prid unsigned integer
  declare @invmainid unsigned integer
  if @last_price > 0 select @op_price = @last_price
  if @op_price = 0 select @op_price = @last_price
  select @prid = pr_id from product where item = @item and brand = @brand
    and model = @model
  if @prid is null
    begin -- not found so insert
      insert into product( item,brand,model,sl_no,op_price,last_price,
        last_date,acc_id_sale_tax ) values( @item,@brand,@model,@sl_no,
        @op_price1,0,
        @last_date,@acc_id_sale_tax ) 
      select @prid = @@identity
    end
  select @invmainid = inv_main_id from inv_main
    where pr_id = @prid and gw_id = @gw_id
  if @invmainid is null
    insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,op_price ) 
      values( @op+@db-@cr,0,0,@prid,0,0,@gw_id,@op_price ) 
  else
    update inv_main set op = @op+@db-@cr,op_price = @op_price
      where inv_main_id = @invmainid
end
go

create procedure dba.sp_update_insert_price_list_pb( in @pr_id unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @spec char(15),in @lpp T_money,in @lsp T_money,in @glp T_money,in @spa T_money,in @spb T_money,in @spc T_money,in @spd T_money,in @bill_disc1 char(30),in @bill_disc2 char(30),in @bill_disc3 char(30),in @scheme1 char(30),in @scheme2 char(30),in @scheme3 char(30),in @cd decimal(5,2),in @show char(1) ) 
on exception resume
begin
  declare @item1 char(10);
  declare @brand1 char(20);
  declare @model1 char(20);
  declare @spec1 varchar(90);
  declare @show1 char(1);
  declare @pr_id_price_list unsigned integer;
  // insert
  if @pr_id is null then //new entry
    select pr_id into @pr_id from product where item = @item and brand = @brand
      and model = @model;
    if @pr_id is null then // not found so insert 
      insert into product( item,brand,model,sl_no,spec ) 
        values( @item,@brand,@model,'N',@spec ) ;
      set @pr_id = @@identity
    end if;
    //if pr_id not in price_list table then insert
    if not exists(select pr_id from price_list where pr_id = @pr_id) then
      insert into price_list( pr_id,lsp,lpp,glp,spa,spb,spc,spd,cd,
        bill_disc1,bill_disc2,bill_disc3,scheme1,scheme2,scheme3 ) 
        values( @pr_id,@lsp,@lpp,@glp,@spa,@spb,@spc,@spd,@cd,@bill_disc1,@bill_disc2,@bill_disc3,
        @scheme1,@scheme2,@scheme3 ) ;
      return
    end if end if;
  //pr_id is not null. May be not present in price_list table
  if not exists(select pr_id from price_list where pr_id = @pr_id) then
    insert into price_list( pr_id,lsp,lpp,glp,spa,spb,spc,spd,cd,
      bill_disc1,bill_disc2,bill_disc3,scheme1,scheme2,scheme3 ) 
      values( @pr_id,@lsp,@lpp,@glp,@spa,@spb,@spc,@spd,@cd,@bill_disc1,@bill_disc2,@bill_disc3,
      @scheme1,@scheme2,@scheme3 ) 
  else //update
    update price_list set lpp = @lpp,lsp = @lsp,glp = @glp,
      spa = @spa,spb = @spb,spc = @spc,spd = @spd,cd = @cd,bill_disc1 = @bill_disc1,
      bill_disc2 = @bill_disc2,bill_disc3 = @bill_disc3,scheme1 = @scheme1,
      scheme2 = @scheme2,scheme3 = @scheme3 where pr_id = @pr_id
  end if;
  --if change in item, brand, model then correct it
  select item,brand,model,spec,show into @item1,@brand1,@model1,@spec1,@show1
    from product where pr_id = @pr_id;
  if @spec1 is null then set @spec1 = ''
  end if;
  if not(@item1 = @item and @brand1 = @brand
    and @model1 = @model and @spec1 = @spec and @show = @show1) then
    update product set item = @item,brand = @brand,model = @model,
      spec = @spec,show = @show where pr_id = @pr_id
  end if
end
go

create procedure dba.sp_update_invoice_product_pb( in @invoice_product_id unsigned integer,inout @inv_main_id unsigned integer,in @inv_id unsigned integer,in @item char(10),in @brand char(15),in @model char(15),in @gw_code char(15),in @qty smallint,in @price T_money,in @discount T_money,in @actual_price T_money,in @spl_disc T_money,in @purchase_warranty tinyint ) 
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
    purchase_warranty = @purchase_warranty
    where invoice_product_id = @invoice_product_id
end
go

create procedure dba.sp_insert_cash_receipt_pb( inout @cr_id unsigned integer,in @rec_date date,in @amt T_money,inout @ref_no char(30),in @remarks varchar(200),in @deposit_to char(15),in @received_from char(15),@through varchar(90) default null ) 
begin
  declare @acc_id unsigned integer;
  declare @acc_id_cash unsigned integer;
  declare @error integer;
  set @acc_id = func_getaccid(@received_from);
  if @acc_id is null then
    raiserror 17083;
    return
  end if;
  set @acc_id_cash = func_getaccid(@deposit_to);
  if @acc_id_cash is null then
    raiserror 17084;
    return
  end if;
  insert into cash_receipt( rec_date,ref_no,amt,
    remarks,acc_id,acc_id_cash,through ) values( @rec_date,
    @ref_no,@amt,@remarks,@acc_id,@acc_id_cash,@through ) ;
  select @@identity,@@error into @cr_id,@error;
  if @error <> 0 then
    raiserror 17085;
    return
  end if
end
go

create procedure dba.func_changeproduct( @pr_id2 unsigned integer ) 
as
begin
  declare @inv_main_id1 unsigned integer,
  @inv_main_id2 unsigned integer,
  @ret integer
  if exists(select pr_id from prid_temp where pr_id = @pr_id2)
    begin
      raiserror 17141 'Same Product interchange not possible'
      return
    end
  if not exists(select pr_id from inv_main where pr_id = any(select pr_id from prid_temp))
    begin
      delete from product where pr_id = any(select pr_id from prid_temp)
      select id=0 from dummy
      return
    end
  select gw_id,pr_id1=product.pr_id,inv_main_id1=inv_main_id,inv_main_id2=null,
    pr_id2=@pr_id2,op_price=(select op_price from product where pr_id = @pr_id2) into #temp1
    from product key join inv_main where product.pr_id = any(select pr_id from prid_temp)
  if @@rowcount = 0
    begin
      raiserror 17142 'Error in products selected for interchange'
      return
    end
  insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,op_price ) 
    select 0,0,0,pr_id2,0,0,gw_id,op_price from #temp1 where not exists(select inv_main_id from inv_main
        where pr_id = #temp1.pr_id2 and gw_id = #temp1.gw_id)
  update #temp1
    set inv_main_id2
     = (select inv_main_id from inv_main where pr_id = #temp1.pr_id2 and gw_id = #temp1.gw_id)
  delete from #temp1 where inv_main_id2 is null
  select f_setbillmemoinvoiceproduct(inv_main_id1,inv_main_id2) into #temp from #temp1
  delete from inv_main where pr_id = any(select pr_id from prid_temp)
  delete from product where pr_id = any(select pr_id from prid_temp)
  delete from prid_temp
  select id=0 from dummy
  commit transaction
end
go

create procedure dba.sp_insert_expence_pb( in @ref_no char(30),in @descr varchar(200),in @exp_date date,in @exp_amt T_money,in @acc_code char(15),in @acc_id unsigned integer ) 
begin
  declare @acc_id_exp unsigned integer;
  set @acc_id_exp = func_getaccid(@acc_code);
  if @acc_id_exp is null then
    raiserror 17097;
    return
  end if;
  insert into expence( ref_no,descr,exp_date,exp_amt,acc_id_exp,acc_id ) 
    values( @ref_no,@descr,@exp_date,@exp_amt,@acc_id_exp,@acc_id ) ;
  if @@rowcount = 0 or @@error <> 0 then
    raiserror 17098;
    return
  end if
end
go

create procedure dba.sp_inventory_brand
as
begin
  select brand,qty=op+db-cr,price=(if last_price is not null then last_price
    else product.op_price
    endif) into #temp from product key join inv_main where qty <> 0
  select brand,value=sum(qty*price) from #temp
    group by brand order by brand asc
end
go

create procedure dba.sp_ledger( @accid unsigned integer,@type char(1),@sdate date= "date"('1900-01-01'),@edate date= "date"('2050-12-30') ) as
begin
  truncate table DBA.temp_ledger
  truncate table DBA.temp_ledger1
  insert into temp_accid( accid ) values( @accid ) 
  -- inserts into table whose insert trigger inserts into table temp1_accid
  --temp1_accid table contains all acc_id's which are to be shown details of
  --runs the stored procedure for ledger account of each ledger
  select sp_accledger(accid,@type,@sdate,@edate) into #temp from temp1_accid
  -- Now result contains in temp_ledger1 table. Retrieve it
  select "date",cheq_no,ref_no,remarks,debit,credit,acc_id_org,
    acc_from=if debit is null and credit is null then accname else if debit is null then 'Dr '+accname else 'Cr '+accname endif endif,
    acc_name=func_getaccname(acc_id_org),tempid,acc_id_other,type,id from temp_ledger1
end
go

create procedure dba.sp_bank_reconcillation( @acc_id_bank unsigned integer,@op_balance T_money= null,@clos_balance T_money= null,@start_date date= null,@end_date date= null ) as
begin
  declare @issued_le T_money,
  @deposited_le T_money,
  @op_ledger_balance T_money,
  @clos_ledger_balance T_money,
  @total_debits T_money,
  @total_credits T_money,
  @issued_ne T_money,
  @deposited_ne T_money,
  @calculated_clos_balance T_money,@acc_name varchar(40)
  select @acc_name = func_getaccname(@acc_id_bank)
  --Get cheques issued last year but cleared this year
  select @issued_le = sum(debit_amt) from bank_recon
    where acc_id_bank = @acc_id_bank and period = 'LE'
  if @issued_le is null select @issued_le = 0
  --Get cheques deposited last year but cleared this year
  select @deposited_le = sum(Credit_amt) from bank_recon
    where acc_id_bank = @acc_id_bank and period = 'LE'
  if @deposited_le is null select @deposited_le = 0
  --Get opening balance as per bank statement
  if @op_balance is null
    begin
      select @op_balance = bb_opbalance from bank_balances
        where acc_id_bank = @acc_id_bank
      if @@rowcount <> 1
        raiserror 17069
    end
  --get opening ledger balance
  select @op_ledger_balance = @op_balance-@issued_le+@deposited_le
  --get total debits
  select @total_debits = sum(amt)
    from acc_tran where acc_id_db = @acc_id_bank
  if @total_debits is null select @total_debits = 0.0
  -- get total credits
  select @total_credits = sum(amt)
    from acc_tran where acc_id_cr = @acc_id_bank
  if @total_credits is null select @total_credits = 0.0
  --get cheques issued this year but cleared next year
  select @clos_ledger_balance = @op_ledger_balance+@total_debits-@total_credits
  if @start_date is null
    begin
      select @start_date = startdate from acc_setup
      if @@rowcount <> 1
        raiserror 17070
    end
  if @end_date is null
    begin
      select @end_date = enddate from acc_setup
      if @@rowcount <> 1
        raiserror 17071
    end
  --get cheques issued this year but cleared next year
  select @issued_ne = sum(debit_amt) from bank_recon
    where(acc_id_bank = @acc_id_bank) and(debit_amt > 0)
    and(clear_date is null or clear_date > @end_date)
  if @issued_ne is null select @issued_ne = 0.0
  -- Get cheques deposited this year but cleared next year
  select @deposited_ne = sum(credit_amt) from bank_recon
    where(acc_id_bank = @acc_id_bank) and(credit_amt > 0)
    and(clear_date is null or clear_date > @end_date)
  if @deposited_ne is null select @deposited_ne = 0.0
  -- get calculated closing balance as per bank statement
  select
    @calculated_clos_balance = @clos_ledger_balance+@issued_ne-@deposited_ne
  select @acc_name,@op_balance,@issued_le,@deposited_le,@op_ledger_balance,@total_debits,
    @total_credits,@clos_ledger_balance,@issued_ne,
    @deposited_ne,@calculated_clos_balance,@clos_balance from dummy
end
go

create procedure dba.sp_cashbooksummery( @accid unsigned integer ) as
begin
  --acc Main
  declare @date date,
  @lock integer,
  @db T_money,
  @cr T_money
  set @lock = func_getlock()
  if @lock = 1
    begin
      select mdate=today(),opening=0,debit=0,credit=0,closing=0 from dummy
      return
    end
  set @db = 0.0
  set @cr = 0.0
  set @date = null
  select mdate=@date,opening=acc_main.acc_opbal,debit=@db,credit=@cr,
    closing=acc_main.acc_opbal into #temp from acc_main
    where acc_id = @accid
  insert into #temp( mdate,opening,debit,credit,closing ) 
    select cs_date,0,cs_debit,cs_credit,0 from cashbook_summery
      where acc_id_cash = @accid
  select mdate,opening,debit,credit,closing from #temp
end
go

create procedure dba.sp_inventory_report( @item char(10) ) 
as
begin
  select 'date'=invoice.inv_date,
    product.item,
    product.brand,
    product.model,credit=0,
    debit=invoice_product.qty,
    Remarks=invoice.ref_no,
    Party=acc_main.acc_code,
    Amount=invoice_product.actual_price,
    op=inv_main.op,
    type=invoice.type,
    class=acc_main.acc_class,cash='',
    lprice=product.last_price,
    oprice=inv_main.op_price,
    id=invoice_product.invoice_product_id,
    value=0 into #temp
    from invoice_product key join inv_main key join product
      key join invoice join acc_main on Invoice.acc_id
       = Acc_main.acc_id where type = 'P'
  insert into #temp( "date",item,brand,model,credit,debit,remarks,party,
    amount,op,type,class,cash,lprice,oprice,id,value ) 
    select invoice.inv_date,product.item,product.brand,product.model,
      invoice_product.qty,0,invoice.ref_no,acc_main.acc_code,invoice_product.actual_price,
      inv_main.op,invoice.type,acc_main.acc_class,'',product.last_price,inv_main.op_price,
      invoice_product.invoice_product_id,0
      from invoice_product key join inv_main key join product
        key join invoice join acc_main on Invoice.acc_id
         = Acc_main.acc_id where type = 'R'
  insert into #temp( "date",item,brand,model,credit,debit,remarks,party,
    amount,op,type,class,cash,lprice,oprice,id,value ) 
    select bill_memo."Date",product.item,product.brand,product.model,
      bill_memo_product.qty,0,bill_memo.ref_no,acc_main.acc_code,
      bill_memo_product.price-bill_memo_product.discount,inv_main.op,
      bill_memo.type,class=acc_main.acc_class,bill_memo.bill_memo,
      product.last_price,0,bill_memo_product.bill_product_id,0
      from bill_memo_product key join inv_main key join product
        key join bill_memo join acc_main on bill_memo.acc_id
         = Acc_main.acc_id where type = 'S'
  insert into #temp( "date",item,brand,model,credit,debit,remarks,party,
    amount,op,type,class,cash,lprice,oprice,id,value ) 
    select bill_memo."Date",product.item,product.brand,product.model,
      0,bill_memo_product.qty,bill_memo.ref_no,acc_main.acc_code,
      bill_memo_product.price-bill_memo_product.discount,inv_main.op,
      bill_memo.type,class=acc_main.acc_class,bill_memo.bill_memo,
      product.last_price,0,bill_memo_product.bill_product_id,0
      from bill_memo_product key join inv_main key join product
        key join bill_memo join acc_main on bill_memo.acc_id
         = Acc_main.acc_id where type = 'R'
  insert into #temp( "date",item,brand,model,credit,debit,remarks,party,
    amount,op,type,class,cash,lprice,oprice,id,value ) 
    select today(),product.item,product.brand,product.model,0,
      0,'','',0,inv_main.op,'','','',product.last_price,inv_main.op_price,
      0,0
      from inv_main left outer join invoice_product
        on inv_main.inv_main_id
         = invoice_product.inv_main_id key join product
      where op <> 0 and db = 0 and cr = 0
  select "date",item,brand,model,debit,credit,op,remarks,party,amount,
    type,class,cash,lprice,oprice,id,value from #temp where item like @item
end
go

create procedure dba.f_changeacccode( in @accid1 unsigned integer,in @accid2 unsigned integer,in @type char(1) ) 
begin
  declare @lret integer;
  declare @class1 char(10);
  declare @class2 char(10);
  select func_getclass(@accid1),func_getclass(@accid2) into @class1,@class2;
  if @class1 <> @class2 then
    raiserror 17048;
    return
  end if;
  if @type = 'L' then --Ledger Accounts, so change all transaction tables
    --expence
    update expence set acc_id_exp = @accid2 where acc_id_exp = @accid1;
    update expence set acc_id = @accid2 where acc_id = @accid1;
    --invoice
    update invoice set sale_tax_purchase_id = @accid2 where sale_tax_purchase_id = @accid1;
    update invoice set acc_id = @accid2 where acc_id = @accid1;
    --debit_credit_notes
    update debit_credit_note set acc_id_db = @accid2 where acc_id_db = @accid1;
    update debit_credit_note set acc_id_cr = @accid2 where acc_id_cr = @accid1;
    --bill_memo
    update bill_memo set sale_tax_sale_id = @accid2 where sale_tax_sale_id = @accid1;
    update bill_memo set acc_id = @accid2 where acc_id = @accid1;
    --cheque_receipt
    update cheque_receipt set acc_id_cash_bank = @accid2 where acc_id_cash_bank = @accid1;
    update cheque_receipt set acc_id = @accid2 where acc_id = @accid1;
    --contra_entries
    update contra_entries set acc_id_db = @accid2 where acc_id_db = @accid1;
    update contra_entries set acc_id_cr = @accid2 where acc_id_cr = @accid1;
    --journal
    update journal set jou_acc_id = @accid2 where jou_acc_id = @accid1;
    --cash_payment
    update cash_payment set cp_acc_id_cash = @accid2 where cp_acc_id_cash = @accid1;
    update cash_payment set cp_acc_id = @accid2 where cp_acc_id = @accid1;
    //delete from cash_payment_tran where cp_amt = 0;
    --cash_receipt
    update cash_receipt set acc_id_cash = @accid2 where acc_id_cash = @accid1;
    update cash_receipt set acc_id = @accid2 where acc_id = @accid1;
    --cheque_payment
    update cheque_payment set acc_id_bank = @accid2 where acc_id_bank = @accid1;
    update cheque_payment set acc_id = @accid2 where acc_id = @accid1;
    --cash_bank_journal
    update cash_bank_journal set acc_id_db = @accid2 where acc_id_db = @accid1;
    update cash_bank_journal set acc_id_cr = @accid2 where acc_id_cr = @accid1;
    --opening_cheque_details
    update opening_cheque_details set acc_id = @accid2 where acc_id = @accid1;
    --bank_balances
    update bank_balances set acc_id_bank = @accid2 where acc_id_bank = @accid1;
    --now delete
    delete from acc_main where acc_id = @accid1;
    if @@error <> 0 then
      raiserror 17049;
      rollback work;
      return
    end if;
    commit work
  else
    if @type = 'S' then -- subgroup account interchange
      update acc_main set acc_parent = (select acc_parent
          from acc_main where acc_id = @accid1) where acc_id = @accid2;
      if @@error <> 0 then
        rollback work;
        raiserror 17050;
        return
      end if;
      delete from acc_main where acc_id = @accid1;
      if @@error <> 0 then
        rollback work;
        raiserror 17049;
        return
      end if
    else if @type = 'G' then
        --transfer the account code under a group or subgroup
        --here @accid2 is the group under which @accid1 code is to be placed
        update acc_main set acc_parent = @accid2 where acc_id = @accid1
      else
        if @type = 'H' then //Move a ledger account as subledger of a ledger account
          update acc_main set acc_parent = @accid2,acc_root = 'S' where acc_id = @accid1;
          update acc_main set acc_root = 'L' where acc_id = @accid2
        end if
      end if
    end if end if;
  select comp_name from acc_setup
end
go

create procedure dba.sp_bankrecon_cheques( @edate date,@accidbank unsigned integer ) 
as
begin
  --le deposits
  select clear_date,cheq_no,ref_no,Amount=credit_amt,remarks,type='A' into #temp
    from bank_recon where period = 'LE'
    and credit_amt > 0 and acc_id_bank = @accidbank
  --le issued
  insert into #temp( clear_date,cheq_no,ref_no,amount,remarks,
    type ) select clear_date,cheq_no,ref_no,debit_amt,remarks,'B'
      from bank_recon where period = 'LE' and debit_amt > 0 and acc_id_bank = @accidbank
  --ne deposited
  insert into #temp( clear_date,cheq_no,ref_no,amount,remarks,
    type ) select clear_date,cheq_no,ref_no,credit_amt,remarks,type='C'
      from bank_recon where((clear_date is null) or(clear_date > @edate))
      and acc_id_bank = @accidbank and credit_amt > 0
  --ne issued
  insert into #temp( clear_date,cheq_no,ref_no,amount,remarks,
    type ) select clear_date,cheq_no,ref_no,debit_amt,remarks,type='D'
      from bank_recon where((clear_date is null) or(clear_date > @edate))
      and acc_id_bank = @accidbank and debit_amt > 0
  select * from #temp
end
go

create procedure dba.sp_cashbook( @accidcash unsigned integer,@mdate date ) 
as
begin
  declare @opbalance T_money
  declare @debit T_money
  declare @credit T_money
  select @debit = ifnull(cs_debit,0,cs_debit),
    @credit = ifnull(cs_credit,0,cs_credit) from cashbook_summery
    where acc_id_cash = @accidcash and cs_date = @mdate
  select debit=sum(cs_debit),Opening_balance=debit,
    credit=sum(cs_credit),closing_balance=credit into #temp
    from cashbook_summery
    where acc_id_cash = @accidcash and cs_date <= @mdate
  --remove nulls if any
  update #temp set opening_balance = ifnull(opening_balance,0,opening_balance),
    debit = ifnull(debit,0,debit),credit = ifnull(credit,0,credit),
    closing_balance = ifnull(closing_balance,0,closing_balance)
  select @opbalance = ifnull(acc_opbal,0,acc_opbal) from acc_main
    where acc_id = @accidcash
  update #temp set closing_balance = @opbalance+#temp.debit-#temp.credit
  select @debit = ifnull(@debit,0,@debit)
  select @credit = ifnull(@credit,0,@credit)
  update #temp set opening_balance = #temp.closing_balance
    -@debit+@credit,debit = @debit,credit = @credit
  select Opening_balance,Debit,Credit,Closing_balance from #temp
end
go

create procedure dba.sp_insert_cash_bank_journal( in @cb_date date,in @cb_no unsigned integer,in @cb_refno char(30),in @cb_amt T_money,in @cb_remarks varchar(70),in @cb_cheqno char(20),in @debit_account char(15),in @credit_account char(15) ) 
begin
  declare @acc_id_db unsigned integer;
  declare @cb_no unsigned integer;
  declare @acc_id_cr unsigned integer;
  set @acc_id_db = func_getaccid(@debit_account);
  set @acc_id_cr = func_getaccid(@credit_account);
  select max(cb_no)+1 into @cb_no from cash_bank_journal;
  if @cb_no is null then
    set @cb_no = 1
  end if;
  insert into cash_bank_journal( cb_date,cb_no,cb_refno,cb_amt,cb_remarks,
    acc_id_db,acc_id_cr,cb_cheqno ) 
    values( @cb_date,@cb_no,@cb_refno,@cb_amt,@cb_remarks,
    @acc_id_db,@acc_id_cr,@cb_cheqno ) ;
  if @@rowcount = 0 or @@error <> 0 then
    raiserror 17082;
    return
  end if
end
go

create procedure dba.WebCopyTemplate( @Id integer,@parentId integer ) as
begin
  declare @newId integer
  insert into WebTemplate( ConnectionId,
    ParentId,DocType,Name,Location,Description,Size ) 
    select ConnectionId,@parentId,DocType,Name,Location,Description,Size
      from WebTemplate where Id = @Id
  select @newId = @@identity
  /* Copy the data */
  insert into WebData( Id,
    Sequence,Data ) 
    select @newId,Sequence,Data from WebData
      where Id = @Id
  declare children dynamic scroll cursor for select Id from WebTemplate where ParentId = @Id
  declare @child integer
  open children
  fetch next children
    into @child
  while(@@sqlstatus = 0) begin
      execute WebCopyTemplate @child,@newId
      fetch next children
        into @child
    end
  execute WebChanged
  /* Return the new id */
  select @Id = @newId
end
go

create procedure Dba.sp_retrieve_model_pb( in @pos_name char(30) ) 
begin
  declare @count integer;
  declare @pos_id unsigned integer;
  select pos_id into @pos_id from pointofsale where pos_name = @pos_name;
  select count() into @count from item where pos_id = @pos_id;
  if @count = 0 then
    select count() into @count from brand where pos_id = @pos_id;
    if @count = 0 then
      select distinct model from product
    else
      select distinct model from product where brand = any(select brand from brand where pos_id = @pos_id)
    end if
  else select count() into @count from brand where pos_id = @pos_id;
    if @count = 0 then
      select distinct model from product where item = any(select item from item where pos_id = @pos_id)
    else
      select distinct model from product where item = any(select item from item where pos_id = @pos_id)
        and brand = any(select brand from brand where pos_id = @pos_id)
    end if
  end if
end
go

create procedure dba.sp_update_cash_payment_pb( in @cp_id unsigned integer,in @cp_date date,in @cp_amt T_money,in @ref_no char(20),in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @through varchar(90) ) 
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
    remarks = @remarks
    where cp_id = @cp_id
end
go

create procedure dba.sp_importinventory()
begin
  declare @ret unsigned integer;
  delete from product where(code = 0 or code is null);
  delete from inv_main_temp where pr_id = (select pr_id from product_temp
      where(item = '' or brand = '' or model = ''));
  delete from product_temp where(item = '' or brand = '' or model = '');
  //to delete and initialize codes in the acc.product table as per current database
  //this function is to be removed in normal cases
  //select func_initcode(*) into @ret from dummy;
  //for counter
  insert into counter( counter_code,counter_name ) select counter_code,counter_name
      from counter_temp as a where not exists(select counter_code from counter
        where counter_code = a.counter_code);
  //correct the codes of product_temp table
  //update product_temp set code = func_getcode(item,brand,model);
  update acc_setup set maxcode = (select max(code) from product);
  insert into product( item,brand,model,acc_id_sale_tax,basic_price,
    last_date,last_price,op_price,sl_no,spec,show,counter_id ) 
    select item,brand,model,acc_id_sale_tax,basic_price,
      last_date,last_price,op_price,sl_no,spec,show,func_getcrosscounterid(counter_id)
      from product_temp as a where not exists(select code from product
        where item = a.item and brand = a.brand and model = a.model);
  update product as a set op_price = (select if last_price is null
      or last_price = 0 then op_price else last_price endif
      from product_temp where item = a.item and brand = a.brand and model = a.model),
    counter_id = if counter_id is null then isnull((select func_getcrosscounterid(counter_id)
        from product_temp where code = a.code),1)
    else counter_id
    endif;
  update product set last_date = "date"('1990-01-01') where last_date is null;
  //first insert from inv_main_temp those rows which are 
  //not present in inv_main
  //now update the op balance and op_price
  insert into godown( gw_code,gw_descr ) 
    select gw_code as gc,gw_descr from godown_temp
      where not exists(select gw_code from godown where gw_code = gc);
  insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,
    op_price ) select 0,0,0,func_getcrossprid(pr_id) as pr,0,0,
      func_getcrossgwid(gw_id) as gw,0 from inv_main_temp
      where not exists(select inv_main_id from inv_main where pr_id = pr
        and gw_id = gw);
  select func_setopinv(inv_main_id) from inv_main
end
go

create procedure dba.sp_setaccparent as
begin
  select acc_code,parent_id=func_getaccparent(acc_parent),
    acc_opbal=(acc_opbal+acc_db-acc_cr),acc_root into #temp
    from acc_temp
  update acc_main join #temp on acc_main.acc_code = #temp.acc_code
    set acc_main.acc_parent = #temp.parent_id
  update acc_main join #temp on acc_main.acc_code = #temp.acc_code
    set acc_main.acc_opbal = #temp.acc_opbal
end
go

create procedure dba.sp_insert_cash_payment_pb( inout @cp_id unsigned integer,in @cp_date date,in @cp_amt T_money,inout @ref_no char(20),in @remarks varchar(200),in @pay_to char(15),in @pay_from char(15),in @through varchar(90) default null ) 
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
    cp_acc_id_cash,ref_no,remarks,through ) values( @cp_date,@cp_acc_id,
    @cp_amt,@cp_acc_id_cash,@ref_no,@remarks,@through ) ;
  select @@identity,@@error into @cp_id,@error;
  if @error <> 0 then
    raiserror 17089;
    return
  end if
end
go

create procedure dba.sp_retrieve_online_receipt_details( @cash_cheque unsigned integer,@id unsigned integer ) 
as
begin
  --@cash_cheque = 0;cash,1 = cheque
  if @cash_cheque = 1
    select rb_id,receipt_bill_memo.bill_memo_id,ref_no,rec_amt,cheq_id,cr_id
      from bill_memo key join receipt_bill_memo
      where cheq_id = @id
  else
    select rb_id,receipt_bill_memo.bill_memo_id,ref_no,rec_amt,cheq_id,cr_id
      from bill_memo key join receipt_bill_memo
      where cr_id = @id
end
go

create procedure dba.sp_accledger( in @accid unsigned integer,in @type char(1) default 'A',in @sdate date default "date"('1900-01-01'),in @edate date default "date"('2050-12-30') ) 
begin
  // declare @sdate date;
  //declare @edate date;
  declare @module char(10);
  delete from temp_ledger;
  if @sdate is null then set @sdate = "date"('1900-01-01')
  end if;
  if @edate is null or @edate = "date"('1900-01-01') then set @edate = "date"('2050-12-30')
  end if; --acc Main
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select null,null,'','Opening Balance',f_getdebit(acc_opbal) as debit,
      -f_getcredit(acc_opbal) as credit,'Opening Balance','Op Bal',@accid,acc_id,0 from acc_main
      where(acc_main.acc_id = @accid and(acc_type = 'L' or acc_type = 'A'));
  --invoice
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select inv_date,null,ref_no,descr,inv_amt,null,acc_name,case func_getclass(invoice.acc_id) when 'CASH' then 'Cash Pur' when 'BANK' then 'Bank Pur' else 'Crdt Pur' end,
      @accid,inv_id,acc_main.acc_id
      from invoice join acc_main on acc_main.acc_id = invoice.acc_id where(invoice.sale_tax_purchase_id = @accid
      and type = 'P' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select inv_date,null,ref_no,descr,null,inv_amt,acc_name,case func_getclass(invoice.acc_id) when 'CASH' then 'Cash Pur' when 'BANK' then 'Bank Pur' else 'Crdt Pur' end,
      @accid,inv_id,acc_main.acc_id
      from invoice join acc_main on acc_main.acc_id = invoice.sale_tax_purchase_id where(invoice.acc_id = @accid
      and type = 'P' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select inv_date,null,ref_no,descr,null,inv_amt,acc_name,case func_getclass(invoice.acc_id) when 'CASH' then 'Cash Prt' when 'BANK' then 'Bank Prt' else 'Crdt Prt' end,
      @accid,inv_id,acc_main.acc_id
      from invoice join acc_main on acc_main.acc_id = invoice.acc_id where(invoice.sale_tax_purchase_id = @accid
      and type = 'R' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select inv_date,null,ref_no,descr,inv_amt,null,acc_name,case func_getclass(invoice.acc_id) when 'CASH' then 'Cash Prt' when 'BANK' then 'Bank Prt' else 'Crdt Prt' end,
      @accid,inv_id,acc_main.acc_id
      from invoice join acc_main on acc_main.acc_id = invoice.sale_tax_purchase_id where(invoice.acc_id = @accid
      and type = 'R' and inv_date >= @sdate and inv_date <= @edate) order by inv_id asc;
  --bill memo
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",null,ref_no,descr,total_amt,null,acc_name,case func_getclass(bill_memo.acc_id) when 'CASH' then 'Cash Sal' when 'BANK' then 'Bank Sal' else 'Crdt Sale' end,
      @accid,bill_memo_id,acc_main.acc_id
      from bill_memo join acc_main on acc_main.acc_id = bill_memo.sale_tax_sale_id
      where(bill_memo.acc_id = @accid and type = 'S' and bill_memo in( 'B','M' ) and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",null,ref_no,descr,null,total_amt,acc_name,case func_getclass(bill_memo.acc_id) when 'CASH' then 'Cash Sal' when 'BANK' then 'Bank Sal' else 'Crdt Sale' end,
      @accid,bill_memo_id,acc_main.acc_id
      from bill_memo join acc_main on acc_main.acc_id = bill_memo.acc_id
      where(sale_tax_sale_id = @accid and type = 'S' and bill_memo in( 'B','M' ) and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",null,ref_no,descr,total_amt,null,acc_name,case func_getclass(bill_memo.acc_id) when 'CASH' then 'Cash Srt' when 'BANK' then 'Bank Srt' else 'Crdt Srt' end,
      @accid,bill_memo.bill_memo_id,acc_main.acc_id
      from bill_memo join acc_main on acc_main.acc_id = bill_memo.acc_id
      where(sale_tax_sale_id = @accid and type = 'R' and bill_memo in( 'B','M' ) and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",null,ref_no,descr,null,total_amt,acc_name,case func_getclass(bill_memo.acc_id) when 'CASH' then 'Cash Srt' when 'BANK' then 'Bank Srt' else 'Crdt Srt' end,
      @accid,bill_memo_id,acc_main.acc_id
      from bill_memo join acc_main on acc_main.acc_id = bill_memo.sale_tax_sale_id
      where(bill_memo.acc_id = @accid and type = 'R' and bill_memo in( 'B','M' ) and "date" >= @sdate and "date" <= @edate) order by bill_memo_id asc;
  --bill_memo_journal
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'CR' then bv_amt else null endif,if bv_dbcr = 'DB' then bv_amt else null endif,
      func_getaccname(bill_memo_journal.acc_id),'Sales',
      sale_tax_sale_id,bill_memo.bill_memo_id,bill_memo_journal.acc_id
      from bill_memo key join bill_memo_journal
      where(sale_tax_sale_id = @accid and type = 'S' and "date" >= @sdate and "date" <= @edate) order by bill_memo.bill_memo_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'DB' then bv_amt else null endif,if bv_dbcr = 'cr' then bv_amt else null endif,
      func_getaccname(sale_tax_sale_id),'Sales',
      bill_memo_journal.acc_id,bill_memo.bill_memo_id,sale_tax_sale_id
      from bill_memo key join bill_memo_journal
      where(bill_memo_journal.acc_id = @accid and type = 'S' and "date" >= @sdate and "date" <= @edate) order by bv_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'CR' then bv_amt else null endif,if bv_dbcr = 'DB' then bv_amt else null endif,
      func_getaccname(bill_memo_journal.acc_id),'Sales Rt',
      sale_tax_sale_id,bill_memo.bill_memo_id,bill_memo_journal.acc_id
      from bill_memo key join bill_memo_journal
      where(sale_tax_sale_id = @accid and type = 'R' and "date" >= @sdate and "date" <= @edate) order by bill_memo.bill_memo_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select "date",bv_chequeno,ref_no,descr,if bv_dbcr = 'DB' then bv_amt else null endif,if bv_dbcr = 'cr' then bv_amt else null endif,
      func_getaccname(sale_tax_sale_id),'Sales Rt',
      bill_memo_journal.acc_id,bill_memo.bill_memo_id,sale_tax_sale_id
      from bill_memo key join bill_memo_journal
      where(bill_memo_journal.acc_id = @accid and type = 'R' and "date" >= @sdate and "date" <= @edate) order by bv_id asc;
  --cash payment
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cp_date,null,ref_no,remarks,cp_amt,null,acc_name,'Csh Pymt',@accid,cp_id,acc_main.acc_id
      from cash_payment join acc_main on acc_main.acc_id = cash_payment.cp_acc_id_cash
      where cash_payment.cp_acc_id = @accid and cp_date >= @sdate and cp_date <= @edate order by cp_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cp_date,null,ref_no,remarks,null,cp_amt,acc_name,'Csh Pymt',@accid,cp_id,acc_main.acc_id
      from cash_payment join acc_main on acc_main.acc_id = cash_payment.cp_acc_id
      where cash_payment.cp_acc_id_cash = @accid and cp_date >= @sdate and cp_date <= @edate order by cp_id asc;
  --cheque payment
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cheq_date,cheq_no,ref_no,remarks,cheq_amt,null,acc_name,'Chq Pymt',@accid,cheq_id,acc_main.acc_id
      from cheque_payment join acc_main on acc_main.acc_id = cheque_payment.acc_id_bank
      where cheque_payment.acc_id = @accid and cheq_date >= @sdate and cheq_date <= @edate order by cheq_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cheq_date,cheq_no,ref_no,remarks,null,cheq_amt,acc_name,'Chq Pymt',@accid,cheq_id,acc_main.acc_id
      from cheque_payment join acc_main on acc_main.acc_id = cheque_payment.acc_id
      where cheque_payment.acc_id_bank = @accid and cheq_date >= @sdate and cheq_date <= @edate order by cheq_id asc;
  --cash receipt
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select rec_date,null,ref_no,remarks,null,amt,acc_name,'Csh Rcpt',@accid,cr_id,acc_main.acc_id
      from cash_receipt join acc_main on acc_main.acc_id = cash_receipt.acc_id_cash
      where cash_receipt.acc_id = @accid and rec_date >= @sdate and rec_date <= @edate order by cr_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select rec_date,null,ref_no,remarks,amt,null,acc_name,'Csh Rcpt',@accid,cr_id,acc_main.acc_id
      from cash_receipt join acc_main on acc_main.acc_id = cash_receipt.acc_id
      where cash_receipt.acc_id_cash = @accid and rec_date >= @sdate and rec_date <= @edate order by cr_id asc;
  --cheque receipt
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select rec_date,cheq_no,ref_no,remarks,null,cheq_amt,acc_name,'Chq Rcpt',@accid,cheq_id,acc_main.acc_id
      from cheque_receipt join acc_main on acc_main.acc_id = cheque_receipt.acc_id_cash_bank
      where cheque_receipt.acc_id = @accid and rec_date >= @sdate and rec_date <= @edate order by cheq_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select rec_date,cheq_no,ref_no,remarks,cheq_amt,null,acc_name,'Chq Rcpt',@accid,cheq_id,acc_main.acc_id
      from cheque_receipt join acc_main on acc_main.acc_id = cheque_receipt.acc_id
      where cheque_receipt.acc_id_cash_bank = @accid and rec_date >= @sdate and rec_date <= @edate order by cheq_id asc;
  --jv
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select jou_date,null,ref_no,remarks,jou_amt,null,
      (select func_getaccname(min(jou_acc_id)) from journal where jou_acc_id <> @accid and jou_db_cr = 'C'
        and jou_no = a.jou_no),'Journal',
      @accid,a.jou_no,
      0
      from journal_no as a
        key join journal where(jou_db_cr = 'D' and jou_acc_id = @accid and jou_date >= @sdate and jou_date <= @edate) order by a.jou_no asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select jou_date,null,ref_no,remarks,null,jou_amt,
      (select func_getaccname(min(jou_acc_id)) from journal where jou_acc_id <> @accid and jou_db_cr = 'D'
        and jou_no = a.jou_no),'Journal',
      @accid,a.jou_no,
      0
      from journal_no as a
        key join journal where(jou_db_cr = 'C' and jou_acc_id = @accid and jou_date >= @sdate and jou_date <= @edate) order by a.jou_no asc;
  --debit note credit notes
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select dc_date,null,ref_no,remarks,dc_amt,null,acc_name,'D/C Note',@accid,dc_id,acc_main.acc_id
      from debit_credit_note join acc_main on acc_main.acc_id = debit_credit_note.acc_id_cr
      where acc_id_db = @accid and dc_date >= @sdate and dc_date <= @edate order by dc_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select dc_date,null,ref_no,remarks,null,dc_amt,acc_name,'D/C Note',@accid,dc_id,acc_main.acc_id
      from debit_credit_note join acc_main on acc_main.acc_id = debit_credit_note.acc_id_db
      where acc_id_cr = @accid and dc_date >= @sdate and dc_date <= @edate order by dc_id asc;
  --contra
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select contra_date,cheq_no,contra_entries.ref_no,remarks,contra_amt,
      null,acc_name,'Contra',@accid,contra_id,acc_main.acc_id
      from contra_entries join acc_main on acc_main.acc_id = contra_entries.acc_id_cr
      where acc_id_db = @accid and contra_date >= @sdate and contra_date <= @edate order by contra_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select contra_date,cheq_no,contra_entries.ref_no,
      remarks,null,contra_amt,acc_name,'Contra',@accid,contra_id,acc_main.acc_id
      from contra_entries join acc_main on acc_main.acc_id = contra_entries.acc_id_db
      where acc_id_cr = @accid and contra_date >= @sdate and contra_date <= @edate order by contra_id asc;
  --cash_bank_journal
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cb_date,cb_cheqno,cb_refno,cb_remarks,cb_amt,null,acc_name,'CJournal',@accid,cb_id,acc_main.acc_id
      from cash_bank_journal join acc_main on acc_main.acc_id = cash_bank_journal.acc_id_cr
      where acc_id_db = @accid and cb_date >= @sdate and cb_date <= @edate order by cb_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select cb_date,cb_cheqno,cb_refno,cb_remarks,null,cb_amt,acc_name,'CJournal',@accid,cb_id,acc_main.acc_id
      from cash_bank_journal join acc_main on acc_main.acc_id = cash_bank_journal.acc_id_db
      where acc_id_cr = @accid and cb_date >= @sdate and cb_date <= @edate order by cb_id asc;
  --Expence
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select exp_date,null,ref_no,descr,exp_amt,null,acc_name,'Expence',@accid,exp_id,acc_main.acc_id
      from expence join acc_main on acc_main.acc_id = expence.acc_id
      where acc_id_exp = @accid and exp_date >= @sdate and exp_date <= @edate order by exp_id asc;
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select exp_date,null,ref_no,descr,null,exp_amt,acc_name,'Expence',@accid,exp_id,acc_main.acc_id
      from expence join acc_main on acc_main.acc_id = expence.acc_id_exp
      where expence.acc_id = @accid and exp_date >= @sdate and exp_date <= @edate order by exp_id asc;
  //voucher
  insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
    select vdate,cheq_no,ref_no,dremarks,if db_cr = 'D' then amount else null endif,if db_cr = 'C' then amount
      else null
      endif,'(as per details)',case voucher.vtype_id when 203 then 'Cont Vch' when 202 then 'Pymt Vch'
      when 201 then 'Rcpt Vch' when 204 then 'Purc Vch' when 205 then 'Sale Vch' when 206 then 'Jrnl Vchr'
      when 207 then 'DbNt Vch' when 208 then 'CrNt Vch' end,
      @accid,voucher.vou_id,null
      from voucher key join voucher_details key join voucher_type key join acc_main
      where voucher_details.acc_id = @accid and vdate >= @sdate and vdate <= @edate order by voucher.vou_id asc;
  insert into temp_ledger( acc_id_org,accname,debit,credit,tempid,"date" ) 
    select @accid,if db_cr = 'D' then 'Dr' else 'Cr' endif+' '+trim(acc_code)+space(15-length(trim(acc_code)))+' '+str(amount,12,2),
      null,null,voucher.vou_id,vdate
      from voucher key join voucher_details
        key join acc_main where voucher.vou_id = any(select tempid from temp_ledger) and voucher_details.acc_id <> @accid;
  //
  //module
  select module into @module from module where module = 'fastfood';
  if @module is not null and @module = 'fastfood' then
    // for cash
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select bill_date,null,bill_no,'From Fastfood',amt,null,null,'FastFood',ff_sale_vchr.acc_id,vchr_id,null
        from ff_sale_vchr key join ff_bill key join acc_main
        where ff_sale_vchr.acc_id = @accid and bill_date >= @sdate and bill_date <= @edate and db_cr = 'D' order by ff_bill.bill_id asc;
    //for sale
    insert into temp_ledger( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select bill_date,null,bill_no,'From Fastfood',null,amt,null,'FastFood',ff_sale_vchr.acc_id,vchr_id,null
        from ff_sale_vchr key join ff_bill key join acc_main
        where ff_sale_vchr.acc_id = @accid and bill_date >= @sdate and bill_date <= @edate and db_cr = 'C' order by ff_bill.bill_id asc
  end if;
  if @type in( 'A','M' ) then // All details
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other
        from temp_ledger order by "date" asc,id asc
  elseif @type = 'D' then //Debit summery
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,null,null,sum(debit),null,accname,type,@accid,0,acc_id_other
        from temp_ledger where debit is not null group by "date",accname,type,acc_id_other order by "date" asc;
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",cheq_no,ref_no,remarks,null,credit,accname,type,@accid,tempid,acc_id_other
        from temp_ledger where credit is not null order by "date" asc
  elseif @type = 'C' then //Credit summery
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,null,null,null,sum(credit),accname,type,@accid,0,acc_id_other
        from temp_ledger where credit is not null group by "date",accname,type,acc_id_other order by "date" asc;
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",cheq_no,ref_no,remarks,debit,null,accname,type,@accid,tempid,acc_id_other
        from temp_ledger where debit is not null order by "date" asc
  elseif @type = 'S' then //All summery
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,null,null,null,sum(credit),accname,type,@accid,0,acc_id_other
        from temp_ledger where credit is not null group by "date",accname,type,acc_id_other order by "date" asc;
    insert into temp_ledger1( "date",cheq_no,ref_no,remarks,debit,credit,accname,type,acc_id_org,tempid,acc_id_other ) 
      select "date",null,null,null,sum(debit),null,accname,type,@accid,0,acc_id_other
        from temp_ledger where debit is not null group by "date",accname,type,acc_id_other order by "date" asc
  end if;
  return 0
end
go

create procedure dba.sp_retrieve_debit_credit_note_pb( @pdb char(10),@pcr char(10),@tempid unsigned integer ) 
as
begin
  if @tempid is not null and @tempid <> 0
    select ref_no,dc_no,dc_date,dc_amt,
      acc_code_db=func_getacccode(acc_id_db),
      acc_code_cr=func_getacccode(acc_id_cr),
      remarks,dc_id from debit_credit_note
      where dc_id = @tempid
  else
    select ref_no,dc_no,dc_date,dc_amt,
      acc_code_db=func_getacccode(acc_id_db),
      acc_code_cr=func_getacccode(acc_id_cr),
      remarks,dc_id from debit_credit_note
      where func_getclass(acc_id_db) like @pdb
      and func_getclass(acc_id_cr) like @pcr
end
go

create procedure dba.sp_insert_cheque_receipt_pb( inout @cheq_id unsigned integer,in @rec_date date,in @cheq_amt T_money,inout @ref_no char(30),in @remarks varchar(200),in @deposit_to char(15),in @received_from char(15),in @cheq_no char(20),in @bank varchar(40),in @branch varchar(40),@through varchar(90) default null ) 
begin
  declare @acc_id unsigned integer;
  declare @acc_id_cash_bank unsigned integer;
  declare @error unsigned integer;
  set @acc_id = func_getaccid(@received_from);
  if @acc_id is null then
    raiserror 17083;
    return
  end if;
  set @acc_id_cash_bank = func_getaccid(@deposit_to);
  if @acc_id_cash_bank is null then
    raiserror 17084;
    return
  end if;
  insert into cheque_receipt( rec_date,ref_no,cheq_amt,
    remarks,acc_id,acc_id_cash_bank,bank,branch,cheq_no,through ) values( @rec_date,
    @ref_no,@cheq_amt,@remarks,@acc_id,@acc_id_cash_bank,@bank,@branch,@cheq_no,@through ) ;
  select @@identity,@@error into @cheq_id,@error;
  if @error <> 0 then
    raiserror 17086;
    return
  end if
end
go

create procedure dba.sp_update_stock_journal_product_pb( @inv_main_id unsigned integer output,@sjp_id unsigned integer,@gw_code char(15),@item char(10),@brand char(20),@model char(20),@remarks varchar(70),@sj_id unsigned integer,@debit_qty smallint,@credit_qty smallint ) 
as
begin
  select @inv_main_id = inv_main_id from inv_main
      key join product key join godown where gw_code = @gw_code and item = @item and brand = @brand and model = @model
  if @inv_main_id is null or @inv_main_id = 0
    begin
      raiserror 17103
      return
    end
  update stock_journal_product set sj_id = @sj_id,
    inv_main_id = @inv_main_id,
    debit_qty = @debit_qty,
    credit_qty = @credit_qty,
    remarks = @remarks
    where sjp_id = @sjp_id
end
go

create procedure dba.sp_update_expence_pb( @exp_id unsigned integer,@ref_no char(30),@descr char(200),@exp_date date,@exp_amt T_money,@acc_code char(15),@acc_id unsigned integer ) as
begin
  declare @acc_id_exp unsigned integer
  select @acc_id_exp = func_getaccid(@acc_code)
  if @acc_id_exp is null
    begin
      raiserror 17106
      return
    end
  update expence set ref_no = @ref_no,
    descr = @descr,
    exp_date = @exp_date,
    exp_amt = @exp_amt,
    acc_id_exp = @acc_id_exp,
    acc_id = @acc_id
    where exp_id = @exp_id
end
go

create procedure dba.sp_update_cheque_receipt_pb( @cheq_id unsigned integer,@rec_date date,@cheq_amt T_money,@ref_no char(30),@remarks varchar(200),@deposit_to char(15),@received_from char(15),@cheq_no char(20),@bank varchar(40),@branch varchar(40),@through varchar(90)= null ) 
as
begin
  declare @acc_id unsigned integer
  declare @acc_id_cash_bank unsigned integer
  select @acc_id = func_getaccid(@received_from)
  if @acc_id is null
    begin
      raiserror 17083
      return
    end
  select @acc_id_cash_bank = func_getaccid(@deposit_to)
  if @acc_id_cash_bank is null
    begin
      raiserror 17084
      return
    end
  update cheque_receipt
    set rec_date = @rec_date,
    ref_no = @ref_no,
    cheq_amt = @cheq_amt,
    remarks = @remarks,
    acc_id = @acc_id,
    acc_id_cash_bank = @acc_id_cash_bank,
    bank = @bank,
    branch = @branch,
    through = @through,
    cheq_no = @cheq_no
    where cheq_id = @cheq_id
end
go

create procedure dba.sp_update_bill_memo_cust_pb( in @bill_memo_id unsigned integer,in @cust_id unsigned integer,in @ref_no char(30),in @date date,in @form char(1),in @total_amt T_money,in @sale_tax_sale_id unsigned integer,in @acc_id unsigned integer,in @descr varchar(200),in @challan_no char(10),in @discount T_money,in @credit_limit smallint,in @tax T_money,in @other_charges T_money,in @type char(1),in @surcharge T_money,in @bill_memo char(1),in @addr1 varchar(70),in @addr2 varchar(60),in @name varchar(55),in @phone varchar(30),in @pin varchar(10),in @pos_id unsigned integer,in @sales_tax T_money,in @serv_tax T_money,in @vat T_money,in @tot T_money,in @roundoff T_money,in @cst T_money,in @sale_text varchar(60),in @mobile varchar(40),in @dob date,in @dom date ) 
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
    bill_memo = @bill_memo,cust_id = @cust_id,pos_id = @pos_id,sales_tax = @sales_tax,serv_tax = @serv_tax,
    vat = @vat,roundoff = @roundoff,tot = @tot,cst = @cst,sale_text = @sale_text where bill_memo_id = @bill_memo_id;
  if @@error <> 0 then
    raiserror 17102;
    return
  end if
end
go

create procedure dba.sp_update_debit_credit_note_pb( @dc_id unsigned integer,@ref_no char(30),@dc_date date,@dc_amt T_money,@acc_code_db char(15),@acc_code_cr char(15),@remarks varchar(300) ) 
as
begin
  update debit_credit_note
    set dc_no = @dc_no,
    ref_no = @ref_no,
    remarks = @remarks,
    dc_amt = @dc_amt,
    acc_id_db = func_getaccid(@acc_code_db),
    acc_id_cr = func_getaccid(@acc_code_cr),
    dc_date = @dc_date
    where dc_id = @dc_id
end
go

create procedure dba.sp_update_chequeincash_pb( in @acc_id unsigned integer,in @chequeincash char(1) ) 
begin
  if exists(select acc_id from chequeincash_table
      where acc_id = @acc_id) then
    update chequeincash_table set chequeincash = @chequeincash
      where acc_id = @acc_id
  else
    insert into chequeincash_table( acc_id,chequeincash ) 
      values( @acc_id,@chequeincash ) 
  end if
end
go

create procedure dba.sp_insert_bill_memo_cust_pb( out @bill_memo_id unsigned integer,out @cust_id unsigned integer,in @ref_no char(30),in @date date,in @form char(1),in @total_amt T_money,in @sale_tax_sale_id unsigned integer,in @acc_id unsigned integer,in @descr varchar(200),in @challan_no char(10),in @discount T_money,in @credit_limit smallint,in @tax T_money,in @other_charges T_money,in @type char(1),in @surcharge T_money,in @bill_memo char(1),in @addr1 varchar(70),in @addr2 varchar(60),in @name varchar(55),in @phone varchar(30),in @pin varchar(10),in @pos_id integer,in @email varchar(30),in @sales_tax decimal(12,2),in @serv_tax decimal(12,2),in @vat decimal(12,2),in @tot decimal(12,2),in @roundoff decimal(12,2),in @cst decimal(12,2),in @sale_text varchar(60),in @mobile varchar(40),in @dob date,in @dom date ) 
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
    surcharge,bill_memo,cust_id,inv,pos_id,sales_tax,tot,serv_tax,vat,roundoff,cst,sale_text ) values( @ref_no,@date,@form,@total_amt,
    @sale_tax_sale_id,@acc_id,@descr,@challan_no,@discount,@credit_limit,@tax,
    @other_charges,@type,@surcharge,@bill_memo,@cust_id,'N',@pos_id,@sales_tax,@tot,@serv_tax,@vat,@roundoff,@cst,@sale_text ) ;
  select @@rowcount,@@identity,@@error into @rowcount,@bill_memo_id,@error
    from dummy;
  if @@rowcount = 0 or @@error <> 0 then raiserror 17080
  end if
end
go

create procedure dba.sp_retrieve_cash_bank_journal( @last unsigned integer,@tempid unsigned integer ) 
as
begin
  declare @cbid unsigned integer
  if @tempid is not null and @tempid <> 0
    select cash_bank_journal.cb_date,
      cash_bank_journal.cb_id,
      cash_bank_journal.cb_no,
      cash_bank_journal.cb_refno,
      cash_bank_journal.cb_amt,
      cash_bank_journal.cb_remarks,
      cash_bank_journal.acc_id_db,
      cash_bank_journal.acc_id_cr,
      cash_bank_journal.cb_cheqno,
      'Debit Account'=func_getacccode(acc_id_db),
      'Credit Account'=func_getacccode(acc_id_cr)
      from cash_bank_journal where cb_id = @tempid
  else
    begin
      select @cbid = max(cb_id) from cash_bank_journal
      if @last = 0 select @cbid = 0
      else
        if @last > @cbid select @cbid = 0
        else select @cbid = @cbid-@last
      select cash_bank_journal.cb_date,
        cash_bank_journal.cb_id,
        cash_bank_journal.cb_no,
        cash_bank_journal.cb_refno,
        cash_bank_journal.cb_amt,
        cash_bank_journal.cb_remarks,
        cash_bank_journal.acc_id_db,
        cash_bank_journal.acc_id_cr,
        cash_bank_journal.cb_cheqno,
        'Debit Account'=func_getacccode(acc_id_db),
        'Credit Account'=func_getacccode(acc_id_cr)
        from cash_bank_journal where cb_id > @cbid
    end
end
go

create procedure dba.sp_insert_cash_cheque_receipt_pb( inout @id unsigned integer,inout @cash_cheque unsigned integer,in @rec_date date,in @amount T_money,in @ref_no char(30),in @remarks varchar(200),in @acc_id unsigned integer,in @acc_id_cash_bank unsigned integer,in @cheq_no char(20),in @bank varchar(40),in @branch varchar(40),@adj_amt T_money,@tag unsigned integer,@pos_id unsigned integer,@through varchar(90) default null ) 
begin
  declare @prefix char(6);
  declare @suffix char(6);
  declare @lastno unsigned integer;
  declare @scheme_lastno unsigned integer;
  declare @scheme_prefix char(6);
  declare @scheme_suffix char(6);
  declare @scheme_billing char(1);
  --@cash_cheque = 0,cash,1 cheque
  declare @error integer;
  if @acc_id is null then
    raiserror 17083;
    return
  end if;
  if @acc_id_cash_bank is null then
    raiserror 17084;
    return
  end if;
  if @adj_amt is null then set @adj_amt = 0
  end if;
  if @ref_no is null or trim(@ref_no) = '' then
    if @pos_id is not null and @pos_id <> 0 then
      select scheme_billing,trim(pos_prefix),trim(pos_suffix),pos_lastno+1,scheme_lastno+1,
        scheme_prefix,scheme_suffix into @scheme_billing,@prefix,@suffix,@lastno,@scheme_lastno,
        @scheme_prefix,@scheme_suffix from pointofsale key join pos_scheme
        where pos_id = @pos_id;
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
        set @ref_no = @prefix+trim(string(@lastno))+@suffix;
        update pointofsale set pos_lastno = @lastno where pos_id = @pos_id
      else //use prefix,suffix,lastno from pos_scheme table
        if @scheme_prefix is null or @scheme_prefix = '' then set @scheme_prefix = ''
        else set @scheme_prefix = @scheme_prefix+'/'
        end if;
        if @scheme_suffix is null or @scheme_suffix = '' then set @scheme_suffix = ''
        else set @scheme_suffix = '/'+@scheme_suffix
        end if;
        if @scheme_lastno is null then set @scheme_lastno = 1
        end if;
        set @ref_no = @scheme_prefix+trim(string(@scheme_lastno))+@scheme_suffix;
        update pos_scheme set scheme_lastno = @scheme_lastno
          where scheme_id = (select scheme_id from pointofsale
            where pos_id = @pos_id)
      end if
    end if end if;
  set @cheq_no = trim(@cheq_no);
  if @cheq_no in( 'C','CA','CAS','CASH' ) or(@cheq_no is null or @cheq_no = '') then
    --cash so enter in cash receipt
    set @cash_cheque = 0;
    insert into cash_receipt( acc_id,acc_id_cash,amt,rec_date,ref_no,remarks,adj_amt,
      tag,pos_id,through ) 
      values( @acc_id,@acc_id_cash_bank,@amount,@rec_date,@ref_no,@remarks,@adj_amt,@tag,@pos_id,@through ) ;
    select @@error,@@identity into @error,@id from dummy;
    if @error <> 0 then
      raiserror 17085;
      return
    end if
  else --cheque entries so insert into cheque_receipt
    set @cash_cheque = 1;
    insert into cheque_receipt( rec_date,ref_no,cheq_amt,
      remarks,acc_id,acc_id_cash_bank,bank,branch,cheq_no,adj_amt,
      tag,pos_id,through ) values( @rec_date,
      @ref_no,@amount,@remarks,@acc_id,@acc_id_cash_bank,@bank,@branch,@cheq_no,
      @adj_amt,@tag,@pos_id,@through ) ;
    select @@error,@@identity into @error,@id from dummy;
    if @error <> 0 then
      raiserror 17086;
      return
    end if
  end if
end
go

create procedure dba.sp_update_price_list_report_pb( @pr_id unsigned integer,@item char(10),@brand char(15),@model char(15),@spec char(15),@lsp T_money,@lpp T_money,@glp T_money,@spa T_money,@spb T_money,@spc T_money,@spd T_money ) 
as
begin
  declare @item1 char(10)
  declare @brand1 char(15)
  declare @model1 char(15)
  declare @spec1 char(15)
  select @item1 = item,@brand1 = brand,@model1 = model,@spec1 = spec
    from product where pr_id = @pr_id
  if @spec is null select @spec = ' '
  if @spec1 is null select @spec1 = ' '
  if not(@item1 = @item and @brand1 = @brand
    and @model1 = @model and @spec1 = @spec)
    update product set item = @item,brand = @brand,model = @model,
      spec = @spec where pr_id = @pr_id
  update price_list set lpp = @lpp,lsp = @lsp,glp = @glp,spa = @spa,spb = @spb,spc = @spc,spd = @spd
    where pr_id = @pr_id
end
go

create procedure dba.sp_retrieve_acclist_pb as
begin
  truncate table DBA.acclist_temp
  insert into acclist_temp( acc_id,acc_code,acc_name,level,acc_parent,acc_type,acc_root ) 
    select acc_id,acc_code,acc_name,null,acc_parent,acc_type,acc_root from acc_main where acc_parent = 0
      order by acc_primary asc,acc_name asc
  update acclist_temp set level = 0 where acc_parent = 0
  update acclist_temp set acc_name = repeat('     ',level)+trim(acc_name)
  select id,acc_code,acc_name,TYPE=if acc_type = 'L' then 'Liability' else if acc_type = 'A' then 'Asset'
      else if acc_type = 'E' then 'Expence' else 'Income' endif
      endif endif,
    'group'=if acc_parent = 0 then 'Group' else if acc_root = 'Y' then 'Ledger' else if acc_root = 'L' then 'Led with Sub'
        else if acc_root = 'S' then 'Subledger' else 'Subgroup' endif
        endif endif endif
    from acclist_temp
end
go

create procedure Dba.sp_retrieve_debitaccount_pb( in @pos_name char(30) ) 
begin
  declare @debitclass char(1);
  declare @pos_id unsigned integer;
  declare @acc_code char(15);
  declare @count integer;
  if @pos_name is null then
    raiserror 99997 'Error in Point of Sale Terminal Name';
    return
  end if;
  select pos_id into @pos_id from pointofsale where pos_name = @pos_name;
  select pos_debitclass into @debitclass from pointofsale
    where pos_name = @pos_name;
  if @debitclass is null then
    raiserror 99999 'This Point of Sale terminal does not exist';
    return
  end if;
  select count() into @count from debitaccount where pos_id = @pos_id;
  if @count = 0 then
    -- nothing in debitaccount table, so select all possible entries
    select acc_id,acc_code,acc_class from acc_main where acc_root = 'Y'
      and acc_class in( 'DEBTOR','CREDITOR','CASH','BANK','BRANCH' ) order by acc_code asc;
    return
  end if;
  --if there are rows in debitaccount table
  if @debitclass = 'Y' then --treat as class
    select acc_id,acc_code,acc_class from acc_main where acc_root = 'Y'
      and acc_class = any(select db_acccode from debitaccount where pos_id = @pos_id)
  else -- direct account codes
    select acc_id,acc_main.acc_code,acc_class from debitaccount join acc_main
        on debitaccount.db_acccode = acc_main.acc_code where acc_root = 'Y'
      and pos_id = @pos_id
  end if;
  return
end
go

create procedure Dba.sp_retrieve_brand_pb( in @pos_name char(30) ) 
begin
  declare @count integer;
  declare @pos_id unsigned integer;
  if @pos_name is null then
    raiserror 17101;
    return
  end if;
  select pos_id into @pos_id from pointofsale where pos_name = @pos_name;
  select count() into @count from brand where pos_id = @pos_id;
  if @count = 0 then
    select count() into @count from item where pos_id = @pos_id;
    if @count = 0 then
      select distinct brand from product
    else
      select distinct brand from product
        where item = any(select item from item where pos_id = @pos_id)
    end if
  else select brand from brand where pos_id = @pos_id
  end if
end
go

create procedure dba.sp_adddefaultaccountcodes()
on exception resume
begin
  --adds the default groups and subgroups in acc_main file
  declare @lret unsigned integer;
  declare @lret1 unsigned integer;
  declare @base unsigned integer;
  select count() into @lret from acc_main;
  --setup of @base
  if @lret = 0 then --no records present in acc_main
    set @base = 1 -- base acc_id
  else
    set @base = null
  end if;
  //default row in acc_setup table
  if(select id from acc_setup) is null then
    insert into acc_setup( id,default_godown,supervisor,advanced,"user",guest,security,roundoff ) 
      values( 1,1,'k\\X[P\\WISWT','iLLISEYFB','eVHUV','fYWHWH','cQO',0 ) 
  end if;
  set
    //adds in acc_main as primary accounts
    @lret = func_addaccmain('Branch_divisions','Branch / Divisions','L','BRANCH',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Capitalaccount','Capital Account','L','CAPITAL',
    0,'N',@base);
  set @base = @base+1;
  set @lret1 = @lret;
  set
    @lret = func_addaccmain('Capitalsubgroup','Capital Account Subgroup','L','CAPITAL',
    @lret1,'N',@base);
  set @base = @base+1;
  //default capital account root
  /*
if not exists(select acc_code from acc_main where acc_code = 'Capital') then
insert into acc_main(acc_code,
acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr) values('Capital','Capital','A','CAPITAL',
@lret,'Y','N',0,0,0);
set @lret=@@identity;
if(select capitalaccount from acc_setup) is null then
update acc_setup set capitalaccount = @lret
end if;
set @base=@base+1
end if;
*/
  set
    @lret = func_addaccmain('Reserves&surplus','Reserves & Surplus','L','CAPITAL',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Current Liab','Current Liabilities','L','OTHER',
    0,'N',@base);
  set @base = @base+1;
  set @lret1 = @lret;
  set
    @lret = func_addaccmain('Dutiesandtaxes','Duties & Taxes','L','OTHER',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Provisions','Provisions','L','OTHER',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Sundry Creditors','Sundry Creditors','L','CREDITOR',
    @lret1,'N',@base);
  set @base = @base+1;
  --Loans
  set
    @lret = func_addaccmain('Loansliability','Loans Liability','L','LOAN',
    0,'N',@base);
  set @base = @base+1;
  set @lret1 = @lret;
  set
    @lret = func_addaccmain('Securedloans','Secured Loans','L','LOAN',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Unsecuredloans','Unsecured Loans','L','LOAN',
    @lret1,'N',@base);
  set @base = @base+1;
  --Suspense
  set
    @lret = func_addaccmain('Suspense','Suspense A/c','L','OTHER',
    0,'N',@base);
  set @base = @base+1;
  --current assets
  set
    @lret = func_addaccmain('Currentassets','Current Assets','A','OTHER',
    0,'N',@base);
  set @lret1 = @lret;
  set @base = @base+1;
  set
    @lret = func_addaccmain('Cashinhand','Cash-in-Hand','A','CASH',
    @lret1,'N',@base);
  set @base = @base+1;
  //default cash account
  /*
if not exists(select acc_code from acc_main where acc_code = 'Cashaccount') then
insert into acc_main(acc_code,
acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr) values('Cashaccount','Cash Account','A','CASH',
@lret,'Y','N',0,0,0);
set @lret=@@identity;
if(select default_cash_id from acc_setup) is null then
update acc_setup set default_cash_id = @lret
end if;
set @base=@base+1
end if;
*/
  set
    @lret = func_addaccmain('Depositsasset','Deposits (Asset)','A','OTHER',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Stockinhand','Stock in Hand','A','OTHER',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Loansandadvances','Loans & Advances (Asset)','A','OTHER',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Sundry debtor','Sundry Debtors','A','Debtor',
    @lret1,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Bankaccounts','Bank Accounts','A','BANK',
    @lret1,'N',@base);
  set @base = @base+1;
  set @lret1 = @lret;
  set
    @lret = func_addaccmain('Bankod','Bank OD Account','L','BANK',
    @lret1,'N',@base);
  set @base = @base+1;
  --Misc Expenses Asset
  set
    @lret = func_addaccmain('Miscexpences','Misc Expences (Asset)','A','OTHER',
    0,'N',@base);
  set @base = @base+1;
  --investments
  set
    @lret = func_addaccmain('Investments','Investments','A','OTHER',
    0,'N',@base);
  set @base = @base+1;
  --Indirect Expenses
  set
    @lret = func_addaccmain('Indirectexpences','Indirect Expences','E','IEXP',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Purchase','Purchase Accounts','E','PURCHASE',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Directexpences','Direct Expences','E','DEXP',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Directincome','Direct Incomes','I','DINCOME',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Indirectincome','Indirect Incomes','I','IINCOME',
    0,'N',@base);
  set @base = @base+1;
  set
    @lret = func_addaccmain('Sales','Sales Account','I','SALE',
    0,'N',@base);
  set @base = @base+1
end
go

create procedure dba.sp_update_cash_bank_journal( @cb_id unsigned integer,@cb_date date,@cb_no unsigned integer,@cb_refno char(30),@cb_amt T_money,@cb_remarks varchar(70),@cb_cheqno char(20),@debit_account char(15),@credit_account char(15) ) 
as
begin
  declare @acc_id_db unsigned integer
  declare @acc_id_cr unsigned integer
  select @acc_id_db = func_getaccid(@debit_account)
  select @acc_id_cr = func_getaccid(@credit_account)
  update cash_bank_journal
    set cb_date = @cb_date,
    cb_no = @cb_no,
    cb_refno = @cb_refno,
    cb_amt = @cb_amt,
    cb_remarks = @cb_remarks,
    acc_id_db = @acc_id_db,
    acc_id_cr = @acc_id_cr,
    cb_cheqno = @cb_cheqno
    where cb_id = @cb_id
end
go

create procedure dba.sp_update_quick_memo_pb( in @bill_memo_id unsigned integer,in @bill_product_id unsigned integer,in @date date,in @ref_no char(30),in @form char(1),in @total_amt T_money,in @item char(10),in @brand char(20),in @model char(20),in @gw_id numeric(3),in @sale_warranty integer,in @acc_id unsigned integer,in @qty smallint ) 
begin
  declare @inv_main_id unsigned integer;
  declare @rowcount integer;
  declare @identity unsigned integer;
  declare @sum T_money;
  select inv_main_id into @inv_main_id from inv_main
      key join product
    where item = @item and brand = @brand and model = @model and gw_id = @gw_id;
  if @rowcount = 0 or @inv_main_id is null then
    raiserror 17099 'error';
    return
  end if;
  update bill_memo_product
    set bill_memo_id = @bill_memo_id,
    inv_main_id = @inv_main_id,
    price = (@total_amt/@qty),
    sale_warranty = @sale_warranty,
    actual_price = (@total_amt/qty)
    where bill_product_id = @bill_product_id;
  select sum(price*qty) into @sum from bill_memo_product
    where bill_memo_id = @bill_memo_id;
  if @sum is null then
    raiserror 17099;
    return
  end if;
  update bill_memo
    set acc_id = @acc_id,
    ref_no = @ref_no,
    "date" = @date,
    form = @form,
    total_amt = @sum
    where bill_memo_id = @bill_memo_id
end
go

create procedure dba.sp_retrieve_cashsheet_details( in @mdate date,in @accid unsigned integer,in @mtype tinyint ) 
begin
  declare @debit T_money;
  declare @accname varchar(40);
  declare @remarks varchar(70);
  declare @ref_No char(40);
  declare @id unsigned integer;
  select today() as "date",@ref_no as ref_no,
    @debit as debit,@debit as credit,@accname as acc_name,@id as id,@debit as Cheque_amt,@remarks as remarks into #temp
    from dummy;
  truncate table #temp;
  if @mtype = '1' then --sales
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select "date",bill_memo.ref_no,total_amt,null,cheq_amt,func_getaccname(sale_tax_sale_id),bill_memo.bill_memo_id,'Sales Transactions'
        from bill_memo left outer join bill_memo_cheque_details
        where type = 'S' and "Date" = @mdate
        and bill_memo <> 'J' and bill_memo.acc_id = @accid
  elseif @mtype = 2 then --sales ret
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select "date",bill_memo.ref_no,null,total_amt,cheq_amt,func_getaccname(sale_tax_sale_id),bill_memo.bill_memo_id,'Sales Return'
        from bill_memo left outer join bill_memo_cheque_details
        where type = 'R' and "Date" = @mdate
        and bill_memo <> 'J' and bill_memo.acc_id = @accid
  elseif @mtype = 3 then --sales voucher
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select "date",bill_memo.ref_no,if bv_dbcr = 'DB' then bv_amt endif,if bv_dbcr = 'CR' then
          bv_amt
        endif,if bv_chequeno is not null and upper(trim(bv_chequeno)) <> 'CASH' then bv_amt endif,
        func_getaccname(bill_memo.sale_tax_sale_id) as acc_name,bv_id,'Sales Voucher' from bill_memo
          key join bill_memo_journal
        where type = 'S' and "date" = @mdate
        and bill_memo = 'J' and bill_memo_journal.acc_id = @accid
  elseif @mtype = 4 then --Cash Receipt
    insert into #temp( "date",ref_no,debit,credit,acc_name,id,remarks ) 
      select rec_date,ref_no,amt,null,acc_name,cr_id,remarks
        from cash_receipt join acc_main on cash_receipt.acc_id
           = acc_main.acc_id where rec_date = @mdate and acc_id_cash = @accid
  elseif @mtype = 5 then --cheque receipt
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select rec_date,ref_no,cheq_amt,null,cheq_amt,acc_name,cheq_id,remarks
        from cheque_receipt join acc_main on cheque_receipt.acc_id
           = acc_main.acc_id where rec_date = @mdate and acc_id_cash_bank = @accid
  elseif @mtype = 6 then --cash payment
    insert into #temp( "date",ref_no,debit,credit,acc_name,id,remarks ) 
      select cp_date,ref_no,null,cp_amt,acc_name,cp_id,remarks from cash_payment
          join acc_main on cash_payment.cp_acc_id = acc_main.acc_id
        where cp_date = @mdate and cp_acc_id_cash = @accid
  elseif @mtype = 7 then --cash purchase
    insert into #temp( "date",ref_no,debit,credit,acc_name,id,remarks ) 
      select inv_date,ref_no,null,inv_amt,acc_name,inv_id,'Cash Purchase'
        from invoice join acc_main on invoice.sale_tax_purchase_id = acc_main.acc_id
        where inv_date = @mdate and invoice.acc_id = @accid
  elseif @mtype = 8 then --cheque payment
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select cheq_date,ref_no,null,cheq_amt,cheq_amt,acc_name,cheq_id,remarks from cheque_payment
          join acc_main on cheque_payment.acc_id = acc_main.acc_id
        where cheq_date = @mdate and acc_id_bank = @accid
  elseif @mtype = 9 then --contra debit
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select contra_date,ref_no,contra_amt,null,if cheq_no is not null
        and upper(trim(cheq_no)) <> 'CASH' then contra_amt
        endif,acc_name,contra_id,remarks from contra_entries
          join acc_main on contra_entries.acc_id_cr = acc_main.acc_id
        where contra_date = @mdate and acc_id_db = @accid
  elseif @mtype = 10 then
    insert into #temp( "date",ref_no,debit,credit,cheque_amt,acc_name,id,remarks ) 
      select contra_date,ref_no,null,contra_amt,if cheq_no is not null
        and upper(trim(cheq_no)) <> 'CASH' then contra_amt
        endif,acc_name,contra_id,remarks from contra_entries
          join acc_main on contra_entries.acc_id_db = acc_main.acc_id
        where contra_date = @mdate and acc_id_cr = @accid
  end if;
  select * from #temp
end
go

create procedure dba.sp_getlast_price( @invmainid unsigned integer,@prid unsigned integer,@ldate date output,@lprice decimal(14,2) output ) 
as
begin
  declare @maxid unsigned integer
  select inv_date,actual_price,invoice_product_id into #temp1
    from invoice_product key join invoice
      key join inv_main key join product
    where product.pr_id = @prid
  select @ldate = max(inv_date) from #temp1
  select invoice_product_id,actual_price into #temp2 from #temp1
    where inv_date = @ldate
  select @maxid = max(invoice_product_id) from #temp2
  select @lprice = actual_price from #temp2
    where invoice_product_id = @maxid
end
go

create procedure dba.sp_retrieve_sale_voucher_pb( @last integer,@type char(1),@tempid unsigned integer ) 
as
begin
  if @tempid is null
    select acc_main.acc_code,
      bill_memo.bill_memo_id,
      bill_memo.acc_id,
      bill_memo.ref_no,
      bill_memo.descr,
      bill_memo.challan_no,
      bill_memo."date",
      bill_memo.form,
      bill_memo.sale_tax_sale_id,
      bill_memo.discount,
      bill_memo.credit_limit,
      bill_memo.cust_id,
      bill_memo.tax,
      bill_memo.other_charges,
      bill_memo.total_amt,
      bill_memo.type,
      bill_memo.surcharge,
      bill_memo.bill_memo,sales_tax,tot,vat,serv_tax,roundoff,cst
      from bill_memo join acc_main on acc_main.acc_id
         = bill_memo.sale_tax_sale_id where bill_memo = 'J' and type = @type
      and bill_memo_id > (select if @last = 0 then 0 else(max(bill_memo_id)-@last) endif from bill_memo)
  else
    select acc_main.acc_code,
      bill_memo.bill_memo_id,
      bill_memo.acc_id,
      bill_memo.ref_no,
      bill_memo.descr,
      bill_memo.challan_no,
      bill_memo."date",
      bill_memo.form,
      bill_memo.sale_tax_sale_id,
      bill_memo.discount,
      bill_memo.credit_limit,
      bill_memo.cust_id,
      bill_memo.tax,
      bill_memo.other_charges,
      bill_memo.total_amt,
      bill_memo.type,
      bill_memo.surcharge,
      bill_memo.bill_memo,sales_tax,tot,vat,serv_tax,roundoff,cst
      from bill_memo join acc_main on acc_main.acc_id
         = bill_memo.sale_tax_sale_id where bill_memo_id = @tempid
end
go

create procedure dba.sp_discrepency
as
begin
  --gives the bill details for which there is difference in bill amount
  -- and product amount
  select "date",ref_no,descr,Party=func_getacccode(acc_id),
    Amount=total_amt,discount,tax,surcharge,misc_charges=other_charges,
    product_amount=func_getsumbillmemoproduct(bill_memo_id),
    difference=total_amt-(product_amount+discount+tax+surcharge+misc_charges) from bill_memo
    where difference <> 0
end
go

create procedure dba.sp_importpostdated()
begin
  insert into postdated_cheques( cheq_date,bank,remarks,bin,cheq_no,cheq_amt,branch,acc_id ) 
    select cheq_date,bank as bn,remarks,bin,cheq_no as ch,cheq_amt as amt,branch,func_getcrossaccid(acc_id)
      from postdated_cheques_temp where(not exists(select cheq_id
        from postdated_cheques where cheq_no = ch
        and cheq_amt = amt and bank = bn)
      and not exists(select cheq_id
        from cheque_receipt where cheq_no = ch
        and cheq_amt = amt and bank = bn))
end
go

create procedure dba.sp_getbalance( @accid unsigned integer,@date date,@op char(1) ) 
begin
  //if @op = 'Y' then give opening cheq and cash balance for that date
  declare @opcash T_money;
  declare @opcheq T_money;
  declare @sumcheq T_money;
  declare @sumcash T_money;
  declare @sumboth T_money;
  declare @cashbalance T_money;
  declare @cheqbalance T_money;
  select sum(oc_amt)
    into @opcheq from opening_cheque_details where acc_id = @accid;
  if @opcheq is null then set @opcheq = 0.0
  end if;
  select acc_opbal into @opcash from acc_main where acc_id = @accid;
  if @opcash is null then set @opcash = 0.0
  end if;
  set @opcash = @opcash-@opcheq;
  if @date = "date"('1900-01-01') or @date is null then
    set @cheqbalance = @opcheq;
    set @cashbalance = @opcash
  else
    if @op = 'Y' then
      select sum(cs_debit-cs_credit),sum(cs_debit_cheque-cs_credit_cheque) into @sumboth,@sumcheq
        from cashbook_summery where acc_id_cash = @accid and cs_date < @date
    else
      select sum(cs_debit-cs_credit),sum(cs_debit_cheque-cs_credit_cheque) into @sumboth,@sumcheq
        from cashbook_summery where acc_id_cash = @accid and cs_date <= @date
    end if;
    if @sumboth is null then set @sumboth = 0.0
    end if;
    if @sumcheq is null then set @sumcheq = 0.0
    end if;
    set @cashbalance = @opcash+@sumboth-@sumcheq;
    set @cheqbalance = @opcheq+@sumcheq
  end if;
  select @cashbalance,@cheqbalance
end
go

create procedure dba.sp_importpricelist()
begin
  insert into price_list( pr_id,lsp,cd,bill_disc1,bill_disc2,bill_disc3,
    scheme1,scheme2,scheme3,spa,spb,spc,glp,lpp ) 
    select func_getcrossprid(pr_id) as pr,lsp,cd,bill_disc1,bill_disc2,bill_disc3,
      scheme1,scheme2,scheme3,spa,spb,spc,glp,lpp from price_list_temp
      where not exists(select pr_id from price_list
        where pr_id = pr)
end
go

create procedure dba.func_getgp( in @pr_id unsigned integer,in @saleprice T_money ) 
begin
  declare @gp T_money;
  declare @sp T_money;
  declare @effective T_money;
  declare @ded T_money;
  declare @item char(10);
  declare @brand char(20);
  declare @deduction numeric(14,12);
  declare @ded_value T_money;
  declare @formula varchar(90);
  declare @inv_main_id unsigned integer;
  --get effective cost price
  select item,brand into @item,@brand from product where pr_id = @pr_id;
  select formula,deduction into @formula,@deduction from gp_formula
    where item = @item and brand = @brand;
  if @@rowcount = 0 then
    select formula,deduction into @formula,@deduction from gp_formula where item = @item and brand is null;
    if @@rowcount = 0 then
      select formula,deduction into @formula,@deduction from gp_formula where brand = @brand and item is null
    end if end if;
  set @formula = trim(@formula);
  if @formula is not null and @formula <> '' then
    execute immediate('select '+@formula+' into @effective from price_list where pr_id = @pr_id')
  end if;
  if @effective is null then set @effective = 0
  end if; -- use given landing price
  if @effective = 0 then
    select glp into @effective from price_list where pr_id = @pr_id;
    --try calculated landing price
    if @effective is null or @effective = 0 then
      select func_getfinalpurchaseprice(@pr_id) into @effective from dummy
    -- try last purchase price
    end if end if; --get deduction
  if @deduction is not null and @deduction <> 0 then
    execute immediate 'select @saleprice * '+string(@deduction)+' into @ded_value from dummy'
  end if;
  if @ded_value is null then set @ded_value = 0
  end if;
  if @effective = 0 then set @gp = 0
  else set @gp = @saleprice-@effective-@ded_value
  end if;
  return(@gp)
end
go

create procedure Dba.sp_retrieve_salecode_pb( in @pos_name char(30) ) 
on exception resume
begin
  declare @pos_id unsigned integer;
  declare @count integer;
  if @pos_name is null then
    raiserror 99997 'Error in Point of Sale Terminal Name';
    return
  end if;
  select pos_id into @pos_id from pointofsale where pos_name = @pos_name;
  select count() into @count from sale_code where pos_id = @pos_id;
  if @count = 0 then
    -- nothing in sale_code table, so select all possible entries
    select acc_id,acc_code,acc_name from acc_main where acc_root = 'Y'
      and acc_class in( 'SALE','SALES' ) order by acc_code asc;
    return
  end if;
  --if there are rows in sale_code table
  select acc_id,acc_code,acc_name from acc_main where acc_root = 'Y'
    and acc_CODE = any(select acc_code from sale_code where pos_id = @pos_id);
  return
end
go

create procedure dba.sp_acc_final_accounts( in @type char(1) ) 
begin
  declare @i integer;
  declare @ret integer;
  declare @profitloss T_money;
  truncate table DBA.bs_temp;
  select func_getlock() into @ret from dummy;
  if @ret = 1 then
    //empty records;show blank
    select bs_code,bs_name,bs_balance*bs_sign as bs_balance,bs_acc_id,bs_parent from bs_temp
      order by bs_id asc;
    return
  end if;
  if @type in( 'L','I' ) then set @i = -1
  else set @i = 1
  end if;
  -- insert in bs_temp the top level parent. Insert trigger adds the child elements
  insert into bs_temp( bs_code,bs_name,bs_balance,
    bs_parent,bs_level,bs_acc_id,bs_sign ) 
    select acc_code,acc_name,(acc_opbal+acc_db-acc_cr),
      acc_parent,null,acc_id,@i from acc_main_temp
      where acc_type = @type and(acc_opbal+acc_db-acc_cr) <> 0 and acc_parent = 0;
  --delete those records which should not appear in final accounts
  delete from bs_temp where bs_parent
     = any(select acc_id from acc_main_temp where acc_sibling = 1);
  -- update bs_levels field.update triggers used
  update bs_temp set bs_level = 0 where bs_parent = 0;
  update bs_temp set bs_name = repeat('  ',bs_level)+trim(bs_name);
  // --insert profit loss
  //set @profitloss=func_getprofitloss(*);
  select bs_code,bs_name,bs_balance*bs_sign as bs_balance,bs_acc_id,bs_parent from bs_temp
    order by bs_id asc
end
go

create procedure Dba.sp_retrieve_item_pb( in @pos_name char(30) ) 
on exception resume
begin
  declare @count integer;
  declare @pos_id unsigned integer;
  if @pos_name is null then
    raiserror 99997 'Error in Point of Sale Terminal Name';
    return
  end if;
  select pos_id into @pos_id from pointofsale where pos_name = @pos_name;
  select count() into @count from item where pos_id = @pos_id;
  if @count = 0 then
    select count() into @count from brand where pos_id = @pos_id;
    if @count = 0 then
      select distinct item,0.0 as sales_tax,0.0 as surcharge,'   ' as price_type from product
    else
      select distinct item,0.0 as sales_tax,0.0 as surcharge,'   ' as price_type from product where brand = any(select brand from brand where pos_id = @pos_id)
    end if
  else select item,it_salestax as sales_tax,it_surcharge as surcharge,it_pricetype as price_type from item
      where pos_id = @pos_id
  end if
end
go

create procedure dba.sp_update_cash_cheque_receipt_pb( @id unsigned integer,@cash_cheque unsigned integer,@rec_date date,@amount T_money,@ref_no char(30),@remarks varchar(200),@acc_id unsigned integer,@acc_id_cash_bank unsigned integer,@cheq_no char(20),@bank varchar(40),@branch varchar(40) ) 
as
begin
  if @acc_id is null
    begin
      raiserror 17083
      return
    end
  if @acc_id_cash_bank is null
    begin
      raiserror 17084
      return
    end
  if @cash_cheque = 0 --cash
    begin
      if not(trim(@cheq_no) = '' or @cheq_no in( 'CASH','CAS','CA','C' ) or @cheq_no is null)
        begin
          raiserror 17104
          return
        end
      --otherwise
      update cash_receipt set acc_id = @acc_id,acc_id_cash = @acc_id_cash_bank,
        rec_date = @rec_date,ref_no = @ref_no,remarks = @remarks,
        amt = @amount where cr_id = @id
      if @@error <> 0 begin
          raiserror 17085
          return
        end
    end
  else --cheque so update cheque_receipt
    begin
      if trim(@cheq_no) = '' or @cheq_no is null or @cheq_no in( 'CASH','CAS','CA','C' ) 
        begin
          raiserror 17105
          return
        end
      --otherwise
      update cheque_receipt set rec_date = @rec_date,ref_no = @ref_no,cheq_amt
         = @amount,remarks = @remarks,acc_id = @acc_id,acc_id_cash_bank
         = @acc_id_cash_bank,bank = @bank,branch = @branch,cheq_no = @cheq_no
        where cheq_id = @id
      if @@error <> 0 begin
          raiserror 17086
          return
        end
    end
end
go

create procedure dba.sp_insert_product_price_pb( out @pr_id unsigned integer,inout @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @lsp T_money,in @glp T_money,in @lpp T_money,in @spa T_money,in @spb T_money,in @spc T_money,in @spd T_money ) 
begin
  select pr_id into @pr_id from product where item = @item and brand = @brand and model = @model;
  if @pr_id is null or @pr_id = 0 then
    insert into product( code,item,brand,model,sl_no ) 
      values( @code,@item,@brand,@model,'Y' ) ;
    set @pr_id = @@identity
  end if;
  select code into @code from product where pr_id = @pr_id;
  if not exists(select pr_id from price_list where pr_id = @pr_id) then
    insert into price_list( pr_id,lsp,glp,lpp,spa,spb,spc,spd ) 
      values( @pr_id,@lsp,@glp,@lpp,@spa,@spb,@spc,@spd ) 
  end if;
  if not exists(select pr_id from inv_main where pr_id = @pr_id) then
    insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,op_price ) 
      values( 0,0,0,@pr_id,0,0,1,0 ) 
  end if
end
go

create procedure dba.check_update( @jouno unsigned integer ) 
as
begin
  declare @clear integer
  declare @lret integer
  select @lret = 0
  select jou_acc_id,gclass=func_getclass(jou_acc_id),
    jou_id into #temp from journal
    where jou_no = @jouno and gclass = 'BANK'
  if @@rowcount > 0
    begin
      select clear_status=f_checkcleardate(jou_acc_id,jou_id,7),
        bank_book_id into #temp1 from #temp join bank_book
          on #temp.jou_id = bank_book.doc_id
          and tran_type = 7
      select @clear = count() from #temp1 where clear_status = 1
      if @clear > 0
        select @lret = 1
    end
  return(@lret)
end
go

create procedure dba.func_getinventoryvalue
as
begin
  declare @inv_value T_money
  select product.pr_id,clos=op+db-cr,last_price,product.op_price into #temp
    from inv_main key join product where clos <> 0
  update #temp set last_price = op_price
    where(last_price = 0 or last_price is null)
  select @inv_value = sum(clos*last_price) from #temp
  return(@inv_value)
end
go

create procedure dba.sp_delete_bank_recon_pb( @doc_id unsigned integer,@tran_type tinyint ) 
begin
  case @tran_type
  when 4 then //cheque payment 
    delete from cheque_payment
      where cheque_payment.cheq_id = @doc_id
  when 5 then //cash receipt
    delete from cash_receipt
      where cr_id = @doc_id
  when 6 then //cheque receipt
    delete from cheque_receipt
      where cheq_id = @doc_id
  when 9 then // contra, change of amount not allowed
    delete from contra_entries
      where contra_id = @doc_id;
    //if bank to bank contra exists
    delete from bank_recon
      where doc_id = @doc_id and tran_type = 9
  when 11 then // cash/bank journal
    delete from cash_bank_journal
      where cb_id = @doc_id
  when 13 then // op balance entry
    delete from bank_balances where bb_id = @doc_id
  end case //when 14 then // bill_memo_cheque_details
end
go

create procedure dba.f_changeproduct( @prid1 unsigned integer,@prid2 unsigned integer ) as
begin
  declare @lastprice T_money,@opprice T_money
  declare @lret integer
  begin transaction
  select gw=gw_id,invmainid1=inv_main_id,invmainid2=inv_main_id into #temp
    from inv_main where pr_id = @prid1
  if @@error <> 0
    begin
      raiserror 17051
      rollback transaction
      return
    end
  select gw,invmainid1,invmainid2=f_setinvmainid(gw,invmainid1,@prid2) into #temp1
    from #temp where gw <> 0
  if @@error <> 0
    begin
      raiserror 17051
      rollback transaction
      return
    end
  select @lret = f_setbillmemoinvoiceproduct(invmainid1,invmainid2)
    from #temp1 where GW <> 0
  if @lret = 1
    begin
      raiserror 17051
      rollback transaction
      return
    end
  select @lastprice = last_price,@opprice = op_price
    from product where pr_id = @prid1
  if @lastprice = 0 or @lastprice is null
    if @opprice = 0 or @opprice is null
      select @lastprice = 0
    else
      select @lastprice = @opprice
  else
    select @lastprice = 0
  if @lastprice <> 0 and @lastprice is not null
    update product set last_price = @lastprice where pr_id = @prid2
  if @@error <> 0
    begin
      raiserror 17052
      rollback transaction
      return
    end
  commit transaction
  select invmainid1 from #temp
end
commit transaction
go

create procedure dba.sp_retrieve_cashsheet( @mdate date ) 
as
begin
  declare @mdebit T_money,
  @mcredit T_money,
  @accname varchar(40),@accid unsigned integer
  --sales
  select acc_id=@accid,tran_type=1,tran_name='               ',acc_name=@accname,debit=@mdebit,
    credit=@mcredit into #temp from dummy
  truncate table #temp
  insert into #temp( acc_id,tran_type,tran_name,acc_name,debit,credit ) 
    select bill_memo.acc_id,1,'Sales',acc_main.acc_name,
      sum(bill_memo.total_amt),null
      from bill_memo join acc_main on bill_memo.acc_id = acc_main.acc_id
      where type = 'S' and "date" = @mdate and acc_class = 'CASH' and bill_memo <> 'J'
      group by bill_memo.acc_id,acc_name union
    select bill_memo_journal.acc_id,3,'Sales Voucher',acc_name=func_getaccname(bill_memo_journal.acc_id),
      if bv_dbcr = 'DB' then sum(bv_amt) endif,if bv_dbcr = 'CR' then sum(bv_amt) endif
      from bill_memo key join bill_memo_journal
      where type = 'S' and "date" = @mdate and bill_memo = 'J'
      group by bill_memo_journal.acc_id,acc_name,bv_dbcr union
    select cash_receipt.acc_id_cash,4,'Cash Receipts',acc_name,sum(amt),null
      from cash_receipt join acc_main on cash_receipt.acc_id_cash = acc_main.acc_id where acc_class = 'CASH'
      and rec_date = @mdate group by acc_id_cash,acc_name union
    select cheque_receipt.acc_id_cash_bank,5,'Cheque Receipts',acc_name,sum(cheq_amt),null
      from cheque_receipt join acc_main on cheque_receipt.acc_id_cash_bank = acc_main.acc_id where acc_class = 'CASH'
      and rec_date = @mdate group by acc_id_cash_bank,acc_name union
    select cash_payment.cp_acc_id_cash,6,'Cash Payments',acc_name,null,sum(cp_amt)
      from cash_payment join acc_main on cash_payment.cp_acc_id_cash = acc_main.acc_id where acc_class = 'CASH'
      and cp_date = @mdate group by cp_acc_id_cash,acc_name union
    select invoice.acc_id,7,'Cash Purchase',acc_name,null,sum(inv_amt)
      from invoice join acc_main on invoice.acc_id = acc_main.acc_id where acc_class = 'CASH'
      and inv_date = @mdate group by invoice.acc_id,acc_name union
    select bill_memo.acc_id,2,'Sales Return',acc_main.acc_name,
      null,sum(bill_memo.total_amt)
      from bill_memo join acc_main on bill_memo.acc_id = acc_main.acc_id
      where type = 'R' and "date" = @mdate and acc_class = 'CASH' and bill_memo <> 'J'
      group by bill_memo.acc_id,acc_name union
    select cheque_payment.acc_id_bank,8,'Cheque Payments',acc_name,null,sum(cheq_amt)
      from cheque_payment join acc_main on cheque_payment.acc_id_bank = acc_main.acc_id where acc_class = 'CASH'
      and cheq_date = @mdate group by acc_id_bank,acc_name union
    select acc_id_db,9,'Contra Debit',acc_name,sum(contra_amt),null
      from contra_entries join acc_main on contra_entries.acc_id_db = Acc_main.acc_id where acc_class = 'CASH'
      and contra_date = @mdate group by acc_id_db,acc_name union
    select acc_id_cr,10,'Contra Credit',acc_name,null,sum(contra_amt)
      from contra_entries join acc_main on contra_entries.acc_id_cr = Acc_main.acc_id where acc_class = 'CASH'
      and contra_date = @mdate group by acc_id_cr,acc_name
  select * from #temp
end
go

create procedure dba.sp_retrieve_online_payment_details( @cash_cheque unsigned integer,@id unsigned integer ) 
as
begin
  --@cash_cheque = 0;cash,1 = cheque
  if @cash_cheque = 1
    select pi_id,payment_invoice.inv_id,ref_no,pay_amt,cheq_id,cp_id
      from invoice key join payment_invoice
      where cheq_id = @id
  else
    select pi_id,payment_invoice.inv_id,ref_no,pay_amt,cheq_id,cp_id
      from invoice key join payment_invoice
      where cp_id = @id
end
go

create procedure dba.SP_PARSETOTABLE( @str char(100),@name char(12) ) as
begin
  declare @ll_count integer
  declare @ll_start integer
  declare @ll_pos integer
  declare @ll_length integer
  declare @ls_holder char(16)
  select @str = rtrim(ltrim(@str))
  select @ll_pos = charindex(',',@str)
  if @ll_pos = 0 -- only one entry. So add it to table
    begin
      insert into temp_item( ti_name ) values( @str ) 
      --execute immediate "insert into "+@name+" (TI_NAME) values(@str)"
      return
    end
  --More than one entry found
  select @ll_count = 0
  select @ll_start = 1
  while @ll_pos > 0
    begin
      --set current entry
      select @ll_length = @ll_pos-@ll_start
      select @ls_holder = substring(@str,@ll_start,@ll_length)
      -- insert into table
      execute immediate "insert into"+@name+" (TI_NAME) values(@ls_holder)"
      --set new starting position
      select @ll_start = @ll_pos+1
      --set new starting position
      select @ll_pos = locate(',',@str,@ll_start)
    end
  -- set last entry
  select @ls_holder = substring(@str,@ll_start,len(@str))
  --update array and counter if necessary
  if len(@ls_holder) > 0
    execute immediate "insert into"+@name+" (TI_NAME) values(@ls_holder)"
end
go

create procedure dba.sp_delete_bill_memo_pb( @bill_memo_id unsigned integer,@pos_id integer,@datetime timestamp ) 
begin
  set @datetime = now();
  if @pos_id = 0 then set @pos_id = null
  end if;
  insert into delete_bill_memo( bill_memo_date,bill_memo_ref_no,bill_memo_total_amt,
    pos_id,delete_timestamp ) (
    select "date",ref_no,total_amt,@pos_id,@datetime from bill_memo
      where bill_memo_id = @bill_memo_id);
  delete from bill_memo where bill_memo_id = @bill_memo_id
end
go

create procedure dba.func_changeproduct1( @prid1 unsigned integer,@prid2 unsigned integer ) as
begin
  --prid1 --> prid2
  declare @invmainid1 unsigned integer
  declare @invmainid2 unsigned integer
  declare @ret integer
  begin transaction
  --first create a pair table where invmainid1-->invmainid2
  --there are no rows in pair_table because of 1=2 condition.
  select invmainid1=@invmainid1,invmainid2=@invmainid2 into #pair_table where 1 = 2
  --create two temp1 and temp2 tables
  select inv_main_id,pr_id,gw_id into #temp1 from inv_main where pr_id = @prid1
  if @@rowcount = 0
    begin
      --nothing doing just delete
      execute sp_deleteproduct @prid1
      select id=0 from dummy
      commit transaction
      return
    end
  select inv_main_id,pr_id,gw_id into #temp2 from inv_main where pr_id = @prid2
  if @@rowcount = 0 --no corresponding rows for prid2 in table inv_main
    --so just change the pr_id in inv_main file
    begin
      update inv_main set pr_id = @prid2 where pr_id = @prid1
      select func_updateprice(@prid1,@prid2)
      execute sp_deleteproduct @prid1
      select id=0 from dummy
      commit transaction
      return
    end
  --mapping #temp1 -->#temp2
  update #temp1 set pr_id = @prid2
  --loop in #temp1
  --func_getinvmainid returns 0 if pr_id,gw_id pair not found
  insert into #pair_table( invmainid1,invmainid2 ) 
    select #temp1.inv_main_id,func_getinvmainid(pr_id,gw_id) from #temp1
  --retain the same inv_main_id for pr_id,gw_id not found in #temp2
  --update #pair_table set invmainid2 = invmainid1 where
  -- invmainid2 = 0
  delete from #pair_table where invmainid2 = 0
  --now update from #pair_table
  select @ret = f_setbillmemoinvoiceproduct(invmainid1,invmainid2) from #pair_table
  if @@error <> 0 begin
      select id=0 from dummy
      rollback transaction
      return
    end
  select @ret = func_updateprice(@prid1,@prid2)
  delete from inv_main where pr_id = @prid1
  delete from product where pr_id = @prid1
  select id=0 from dummy
  commit transaction
end
go

create procedure dba.sp_insert_reset_price_list_pb( in @item char(10),in @brand char(15),in @model char(15),in @spec char(15),in @type char(1) ) 
begin
  if @type = 'D' then //reset discounts
    update product left outer join price_List
      set cd = null,bill_disc1 = null,bill_disc2 = null,bill_disc3 = null,
      scheme1 = null,scheme2 = null,scheme3 = null
      where item like @item and brand like @brand and model like @model
      and ifnull(spec,' ',spec) like @spec
  else //reset prices
    update product left outer join price_List
      set lpp = null,lsp = null,glp = null,spa = null,
      spb = null,spc = null,spd = null
      where item like @item and brand like @brand and model like @model and ifnull(spec,' ',spec) like @spec
  end if
end
go

create procedure dba.sp_error( in @errno integer ) 
begin
  declare @errmessage varchar(130);
  select err_message into @errmessage from error_table
    where err_no = @errno;
  if @@rowcount = 0 then
    raiserror 99999 'This operation has performed error'
  else
    raiserror 99999 @errmessage
  end if
end
go

create procedure dba.sp_getstock( @invid unsigned integer,@type char(1) ) 
--Returns the resultset for stock position and its valuation
as --for invoice or supplier @type = I means invoice else supplier
begin
  if @type = 'I'
    begin
      select distinct inv_main_id into #temp1
        from invoice_product where inv_id = @invid
      select #temp1.inv_main_id,inv_main.pr_id,clos=op+db-cr,
        value=product.last_price*clos into #temp2
        from #temp1 join inv_main on #temp1.inv_main_id
           = inv_main.inv_main_id join product on inv_main.pr_id
           = product.pr_id
      select item,brand,model,clos,value from product
          join #temp2 on #temp2.pr_id = product.pr_id
    end
  else -- 
    begin
      select distinct inv_main_id into #temp1 from acc_main
          join invoice on acc_main.acc_id = invoice.acc_id
          key join invoice_product where acc_main.acc_id = @invid
      select #temp1.inv_main_id,inv_main.pr_id,clos=op+db-cr,
        value=product.last_price*clos into #temp2
        from #temp1 join inv_main on #temp1.inv_main_id
           = inv_main.inv_main_id join product on inv_main.pr_id
           = product.pr_id
      select item,brand,model,clos,value from product
          join #temp2 on #temp2.pr_id = product.pr_id
    end
end
go

create procedure dba.sp_update_bill_series_pb( in @bs_id unsigned integer,in @acc_id unsigned integer,in @bs_series char(5),in @bs_last unsigned integer,in @suffix char(5),in @pricetype char(3) ) 
begin
  if(@bs_series is null or trim(@bs_series) = '') and(@bs_last is null or @bs_last = 0)
    and(@suffix is null or trim(@suffix) = '') and(@pricetype is null or trim(@pricetype) = '') then
    delete from bill_series where bs_id = @bs_id
  else
    if exists(select acc_id from bill_series where acc_id = @acc_id) then
      update bill_series set bs_series = @bs_series,bs_last = @bs_last,
        suffix = @suffix,pricetype = @pricetype where acc_id = @acc_id
    else
      insert into bill_series( acc_id,bs_series,bs_last,suffix,pricetype ) 
        values( @acc_id,@bs_series,@bs_last,@suffix,@pricetype ) 
    end if
  end if
end
go

create procedure dba.remoteinsert( @rec_no char(30),@rec_amt numeric(12,2),@srec_date char(10),@rectype char(1),@job_no char(10),@ptype char(1) ) 
begin
  declare @date date;
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
    insert into bill_memo( type,bill_memo,ref_no,"date",sale_tax_sale_id,
      total_amt,acc_id,descr,mpreserve ) 
      values( @rectype,'M',@rec_no,@date,(select acc_id from acc_main
        where acc_code = 'servicesales'),@rec_amt,(select default_cash_id
        from acc_setup),'Job No:'+@job_no+'From Service+ package','N' ) 
  else
    delete from bill_memo where ref_no = @rec_no
  end if
end
go

create procedure dba.sp_update_price_list_multi_pb( in @item char(10),in @brand char(15),in @model char(15),in @spec char(15),in @bill_disc1 char(30),in @bill_disc2 char(30),in @bill_disc3 char(30),in @scheme1 char(30),in @scheme2 char(30),in @scheme3 char(30),in @cd decimal(5,2) ) 
begin
  if @item = '%' and @brand = '%' and @model = '%'
    and @spec = '%' then
    raiserror 99999 'No Criteria';
    return
  end if;
  --first insert in price_list table
  insert into price_list( pr_id,cd,bill_disc1,bill_disc2,bill_disc3,
    scheme1,scheme2,scheme3 ) 
    select product.pr_id,@cd,@bill_disc1,@bill_disc2,@bill_disc3,
      @scheme1,@scheme2,@scheme3 from product
        left outer join price_list where(item
      like @item and brand like @brand and model like @model
      and ifnull(spec,' ',spec) like @spec and price_list.pr_id is null);
  --now update. Null values not allowed during comparisons
  update product left outer join price_list
    set cd = @cd,bill_disc1 = @bill_disc1,
    bill_disc2 = @bill_disc2,bill_disc3 = @bill_disc3,scheme1 = @scheme1,
    scheme2 = @scheme2,scheme3 = @scheme3
    where item like @item and brand like @brand
    and model like @model and ifnull(spec,' ',spec) like @spec
end
go

create procedure dba.sp_delete_cash_receipt_pb( in @id unsigned integer ) 
begin
  delete from cash_receipt where cr_id = @id
end
go

create procedure dba.sp_cashbook_details( in @accidcash unsigned integer,in @mdate date ) 
on exception resume
begin
  -- debit for cash sales
  select 'Cash Sales        ' as details,sum(total_amt) as amount into #temp
    from bill_memo where acc_id = @accidcash and "date" = @mdate
    and type = 'S';
  -- credit for cash sales return
  insert into #temp( details,amount ) 
    select 'Cash Sales Ret',sum(-total_amt) from bill_memo
      where type = 'R' and acc_id = @accidcash and "date" = @mdate;
  -- Credit for cash purchase
  insert into #temp( details,amount ) 
    select 'Cash Purchase',sum(-inv_amt) from invoice
      where type = 'P' and acc_id = @accidcash and inv_date = @mdate;
  --credit for cash payments
  insert into #temp( details,amount ) 
    select 'Cash Payments',sum(-cp_amt) from cash_payment
      where cp_acc_id_cash = @accidcash and cp_date = @mdate;
  -- cheque payments through cash in hand which also includes cheques
  insert into #temp
    select 'Cheque Payment',sum(-cheq_amt) from cheque_payment
      where acc_id_bank = @accidcash and cheq_date = @mdate;
  --Debit cash receipt
  insert into #temp( details,amount ) 
    select 'Cash Receipts',sum(amt) from cash_receipt
      where acc_id_cash = @accidcash and rec_date = @mdate;
  -- Debit cheque receipts
  insert into #temp( details,amount ) 
    select 'Cheque Receipts',sum(cheq_amt) from cheque_receipt
      where acc_id_cash_bank = @accidcash and rec_date = @mdate;
  --Journals debits
  insert into #temp( details,amount ) 
    select 'Journals Debit',sum(jou_amt) from Journal key join journal_no
      where jou_acc_id = @accidcash and jou_date = @mdate and jou_db_cr = 'D';
  --Journals credits
  insert into #temp( details,amount ) 
    select 'Journals Credit',sum(-jou_amt) from Journal key join journal_no
      where jou_acc_id = @accidcash and jou_date = @mdate and jou_db_cr = 'C';
  --contra debits
  insert into #temp( details,amount ) 
    select 'Contra Debit',sum(contra_amt) from contra_entries
      where acc_id_db = @accidcash and contra_date = @mdate;
  --contra credits
  insert into #temp( details,amount ) 
    select 'Contra Credit',sum(-contra_amt) from contra_entries
      where acc_id_cr = @accidcash and contra_date = @mdate;
  --Cash Journal Debits
  insert into #temp( details,amount ) 
    select 'Cash Journal Db',sum(cb_amt) from cash_bank_journal
      where acc_id_db = @accidcash and cb_date = @mdate;
  --Cash Journal Credits
  insert into #temp( details,amount ) 
    select 'Cash Journal Cr',sum(-cb_amt) from cash_bank_journal
      where acc_id_cr = @accidcash and cb_date = @mdate;
  -- advanced sales (Jv Sales ) debits
  insert into #temp( details,amount ) 
    select 'Advanced Sales',sum(bv_amt) from bill_memo key join bill_memo_journal
      where bill_memo_journal.acc_id = @accidcash and "date" = @mdate
      and bv_dbcr = 'DB';
  -- advanced sales return (Jv sales return) credits
  insert into #temp
    select 'Advanced Sales',sum(-bv_amt) from bill_memo key join bill_memo_journal
      where bill_memo_journal.acc_id = @accidcash and "date" = @mdate
      and bv_dbcr = 'Cr';
  select details,amount from #temp
end
go

create procedure dba.sp_update_product_price_pb( in @pr_id unsigned integer,inout @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @lsp T_money,in @glp T_money,in @lpp T_money,in @spa T_money,in @spb T_money,in @spc T_money,in @spd T_money ) 
begin
  update product set item = @item,brand = @brand,model = @model
    where pr_id = @pr_id;
  if exists(select pr_id from price_list where pr_id = @pr_id) then
    update price_list set lsp = @lsp,glp = @glp,lpp = @lpp,spa = @spa,spb = @spb,
      spc = @spc,spd = @spd where pr_id = @pr_id
  else
    if @lsp is not null or @glp is not null or @lpp is not null
      or @spa is not null or @spb is not null or @spc is not null or @spd is not null then
      insert into price_list( pr_id,lsp,glp,lpp,spa,spb,spc,spd ) 
        values( @pr_id,@lsp,@glp,@lpp,@spa,@spb,@spc,@spd ) 
    end if end if;
  //to output the code	
  select code into @code from product where pr_id = @pr_id;
  return
end
go

create procedure dba.sp_delete_cash_payment_pb( in @id unsigned integer ) 
begin
  delete from cash_payment where cp_id = @id
end
go

create procedure dba.sp_delete_cheque_payment_pb( in @id unsigned integer ) 
begin
  delete from cheque_payment where cheq_id = @id
end
go

create procedure dba.sp_delete_details_pb( in @details_id unsigned integer ) 
begin
  delete from details where details_id = @details_id
end
go

create procedure dba.sp_insert_pointofsale_pb( out @bill_product_id unsigned integer,inout @inv_main_id unsigned integer,in @bill_memo_id unsigned integer,in @code unsigned integer,in @qty smallint,in @price T_money,in @spec varchar(200) ) 
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
  insert into bill_memo_product( bill_memo_id,inv_main_id,qty,price,spec ) 
    values( @bill_memo_id,@inv_main_id,@qty,@price,@spec ) ;
  set @bill_product_id = @@identity
end
go

create procedure dba.sp_deleteproduct( @prid unsigned integer ) 
begin
  declare @lret integer;
  delete from inv_main where pr_id = @prid;
  delete from product where pr_id = @prid
end
go

create procedure Dba.sp_retrieve_label_pb( @ptype char(1),@inv_id unsigned integer,@label_no integer,@code unsigned integer ) 
begin
  declare @i integer;
  set @i = 1;
  if not exists(select table_name from systable
      where table_name = 'label_temp') then
    create global temporary table Dba.label_temp(
      code unsigned integer null,
      item char(10) null,
      brand char(20) null,
      model char(20) null,
      bar_code varchar(20) null,
      lsp decimal(12,2) null,
      qty integer null,
      id unsigned integer not null default autoincrement,
      primary key(id),
      ) on commit preserve rows end if; --invoice
  if @ptype = '1' then
    delete from label_temp;
    while @i < @label_no loop
      insert into label_temp( code ) values( null ) ;
      set @i = @i+1
    end loop;
    select code,item,brand,model,qty,lsp,bar_code into #temp
      from product key join inv_main key join invoice_product
        key join invoice left outer join price_list where invoice.inv_id = @inv_id;
    select func_label(code,item,brand,model,qty,lsp,bar_code) into #temp1
      from #temp where 1 = 1;
    select code,item,brand,model,lsp,bar_code from label_temp
      order by item asc,brand asc,model asc
  elseif @ptype = '2' then --data is already there in label_temp, process it
    select code,item,brand,model,qty,lsp,bar_code into #temp
      from label_temp;
    delete from label_temp;
    //insert blanks for starting from a label no
    while @i < @label_no loop
      insert into label_temp( code ) values( null ) ;
      set @i = @i+1
    end loop;
    select func_label(code,item,brand,model,qty,lsp,bar_code) into #temp1
      from #temp where 1 = 1;
    select code,item,brand,model,lsp,bar_code from label_temp
      order by item asc,brand asc,model asc
  end if
end
go

create procedure dba.sp_insert_cheque_receipt_Postdated_pb( inout @cheq_id unsigned integer,in @rec_date date,in @cheq_amt T_money,inout @ref_no char(30),in @remarks varchar(200),in @acc_id unsigned integer,in @acc_id_cash_bank unsigned integer,in @cheq_no char(20),in @bank varchar(40),in @branch varchar(40),in @id unsigned integer ) 
begin
  declare @error unsigned integer;
  if @acc_id is null then
    raiserror 17083;
    return
  end if;
  if @acc_id_cash_bank is null then
    raiserror 17084;
    return
  end if;
  if @id is not null or @id > 0 then
    delete from postdated_cheques where cheq_id = @id
  end if;
  insert into cheque_receipt( rec_date,ref_no,cheq_amt,
    remarks,acc_id,acc_id_cash_bank,bank,branch,cheq_no ) values( @rec_date,
    @ref_no,@cheq_amt,@remarks,@acc_id,@acc_id_cash_bank,@bank,@branch,@cheq_no ) ;
  select @@identity,@@error into @cheq_id,@error;
  if @error <> 0 then
    raiserror 17086;
    return
  end if
end
go

create procedure dba.sp_retrieve_cash_cheque_online_receipt( in @cash_cheque integer,in @id unsigned integer ) 
begin
  --@cash_cheque = 0;cash,1 = cheque
  if @cash_cheque = 1 then
    select ref_no,
      cheq_id as id,
      cheq_amt as amount,
      rec_date,
      remarks,
      cheq_no as cheq_no,
      bank as bank,
      branch as branch,
      acc_id as acc_id,
      acc_id_cash_bank as acc_id_cash_bank,
      func_getacccode(acc_id) as acc_code,1 as cash_cheque,
      func_getacccode(acc_id_cash_bank) as acc_cash,
      func_getaccname(acc_id) as acc_name,through
      from cheque_receipt
      where cheq_id = @id
  else
    select ref_no,
      cr_id as id,
      amt as amount,
      rec_date,
      remarks,space(20) as cheq_no,space(40) as bank,space(40) as branch,
      acc_id as acc_id,
      acc_id_cash as acc_id_cash_bank,
      func_getacccode(acc_id) as acc_code,0 as cash_cheque,
      func_getacccode(acc_id_cash_bank) as acc_cash,
      func_getaccname(acc_id) as acc_name,through
      from cash_receipt where cr_id = @id
  end if
end
go

create procedure dba.sp_delete_cash_cheque_receipt_pb( in @id unsigned integer,in @cash_cheque unsigned integer ) 
on exception resume
begin
  if @cash_cheque = 0 then --cash 
    delete from cash_receipt where cr_id = @id;
    if @@error <> 0 then
      raiserror 17073;
      return
    end if;
    delete from receipt_bill_memo where cr_id = @id;
    if @@error <> 0 then
      raiserror 17074;
      return
    end if
  else delete from cheque_receipt where cheq_id = @id;
    if @@error <> 0 then
      raiserror 17075;
      return
    end if;
    delete from receipt_bill_memo where cheq_id = @id;
    if @@error <> 0 then
      raiserror 17074;
      return
    end if
  end if
end
go

create procedure dba.sp_insert_postdated_cheques_pb( in @cheq_id unsigned integer,in @acc_id unsigned integer,in @bank varchar(40),in @branch varchar(40),in @cheq_amt T_money,in @cheq_date date,in @cheq_no char(20),in @remarks varchar(200),in @date date,in @acc_id_cash_bank unsigned integer ) 
begin
  if @acc_id is null or @acc_id_cash_bank is null then
    raiserror 17111;
    return
  end if;
  insert into cheque_receipt( acc_id,acc_id_cash_bank,bank,branch,cheq_amt,
    cheq_no,rec_date,ref_no,remarks ) 
    values( @acc_id,@acc_id_cash_bank,@bank,@branch,@cheq_amt,@cheq_no,@date,'POST DATED',
    @remarks ) ;
  if @@error <> 0 then
    raiserror 17112;
    return
  end if;
  //remove the post dated cheque
  delete from postdated_cheques where cheq_id = @cheq_id
end
go

create procedure dba.sp_insert_customer_pb( @name char(40),@addr1 char(40),@addr2 char(40),@pin char(10),@phone char(30),@email char(30),@card_no char(30),@card_name char(10),@acc_code char(15),@cust_id unsigned integer output ) 
as
begin
  --
  declare @acc_id unsigned integer
  select @acc_id = acc_id from acc_main where acc_code = @acc_code
  if @acc_id is null begin
      raiserror 17095
      return
    end
  else begin
      insert into customer( acc_id,name,addr1,addr2,pin,phone,email,card_no,card_name ) 
        values( @acc_id,@name,@addr1,@addr2,@pin,@phone,@email,@card_no,@card_name ) 
      if @@rowcount = 0 or @@error <> 0 begin
          raiserror 17079
          return
        end
      select @cust_id = @@identity
    end
end
go

create procedure dba.sp_inventory_itembrandboth
as
begin
  select item,brand,qty=op+db-cr,price=(if last_price is not null then last_price
    else product.op_price
    endif) into #temp from product key join inv_main where qty <> 0
  select item,brand,value=sum(qty*price) from #temp
    group by item,brand order by item asc,brand asc
end
go

create procedure dba.func_getlastprice( @invmainid unsigned integer,@mdate date ) 
as
begin
  declare @lprice T_money,
  @maxid unsigned integer
  select @maxid = max(invoice_product_id)
    from invoice_product key join invoice
    where inv_main_id = @invmainid
    and inv_date = @mdate
  select @lprice = actual_price from invoice_product
    where invoice_product_id = @maxid
  return(@lprice)
end
go

create procedure dba.SP_RETRIEVE_STOCK( in @item char(100),in @brand char(100),in @model char(100) ) 
on exception resume
begin
  //begin //transaction;
  call SP_PARSETOTABLE(@item,'TEMP_ITEM');
  --execute SP_PARSETOTABLE @brand,'TEMP_brand'
  --execute SP_PARSETOTABLE @model,'TEMP_model'
  select product.item,
    product.brand,
    product.model,
    sum(op) as opbal,
    sum(db) as debit,
    sum(cr) as credit,
    sum(op+db-cr) as clos,
    max(product.op_price) as op_price,
    max(product.last_price) as last_price
    from inv_main key join product
    where item = any(select TI_NAME from item) -- and
    --brand like(select TI_NAME from temp_BRAND) and
    --model like(select TI_NAME from temp_MODEL)
    group by item,brand,model;
  commit work
end
go

create procedure dba.sp_retrieve_physical_stock_pb( @gw_code char(15),@counter char(10),@item char(10),@brand char(20),@tempid integer ) as
begin
  --@tempid	=1:all,2:tallied,3:untallied,4:physical stk
  if @tempid = 1
    select gw_code,code,item,brand,model,qty=ifnull(qty,0,qty),stock=(op+db-cr),
      phy_id,inv_main.gw_id,tally_physical_stock.inv_main_id
      from inv_main left outer join tally_physical_stock left outer join product key join counter
        key join godown where not(stock = 0 and qty = 0)
      and gw_code like @gw_code and counter_code like @counter and item like @item
      and brand like @brand order by counter_code asc,abs(qty-stock) asc,item asc,brand asc,model asc
  else if @tempid = 2
      select gw_code,code,item,brand,model,qty=ifnull(qty,0,qty),stock=(op+db-cr),
        phy_id,inv_main.gw_id,tally_physical_stock.inv_main_id
        from inv_main left outer join tally_physical_stock left outer join product key join counter
          key join godown
        where not(stock = 0 and qty = 0)
        and gw_code like @gw_code and item like @item and brand like @brand and counter_code like @counter
        and qty = stock order by counter_code asc,abs(qty-stock) asc,item asc,brand asc,model asc
    else if @tempid = 3
        select gw_code,code,item,brand,model,qty=ifnull(qty,0,qty),stock=(op+db-cr),
          phy_id,inv_main.gw_id,tally_physical_stock.inv_main_id
          from inv_main left outer join tally_physical_stock left outer join product key join counter
            key join godown where not(stock = 0 and qty = 0)
          and gw_code like @gw_code and item like @item and counter_code like @counter
          and brand like @brand and qty <> stock order by counter_code asc,abs(qty-stock) asc,item asc,brand asc,model asc
      else
        select gw_code,code,item,brand,model,qty=ifnull(qty,0,qty),stock=(op+db-cr),
          phy_id,inv_main.gw_id,tally_physical_stock.inv_main_id
          from inv_main key join tally_physical_stock key join product key join counter key join godown
          where gw_code like @gw_code and item like @item
          and brand like @brand and counter_code like @counter order by phy_id asc
end
go

create procedure DBA.sp_insert_update_tally_physical_stock_pb( @phy_id unsigned integer,@item char(15),@brand char(20),@model char(20),@qty integer,@gw_code char(15) ) 
begin
  declare @inv_main_id unsigned integer;
  declare @gw_id unsigned integer;
  select gw_id into @gw_id from godown where gw_code = @gw_code;
  if @gw_id is null or @gw_id = 0 then
    raiserror 17037 'Error in Godown';
    return
  end if;
  select inv_main_id into @inv_main_id from inv_main key join product where item = @item and brand = @brand
    and model = @model and gw_id = @gw_id;
  if @inv_main_id is null then
    raiserror 99999 'Error in product';
    return
  end if;
  if @phy_id is null then //inserting
    if exists(select inv_main_id from tally_physical_stock where inv_main_id = @inv_main_id) then
      update tally_physical_stock set qty = qty+@qty where inv_main_id = @inv_main_id
    else
      insert into tally_physical_stock( inv_main_id,qty ) values( @inv_main_id,@qty ) ;
      set @phy_id = @@identity
    end if //
  else //update
    update tally_physical_stock set qty = @qty,inv_main_id = @inv_main_id
      where phy_id = @phy_id
  end if
end
go

create procedure dba.sp_tally( in @counter_code char(10),in @item char(10),in @brand char(20) ) 
begin
  declare @sj_id unsigned integer;
  declare @tally_id unsigned integer;
  set @counter_code = trim(@counter_code);
  set @item = trim(@item);
  set @brand = trim(@brand);
  --create #temp table
  select a.inv_main_id,ifnull(qty,0,qty) as physical_stock,
    (select(op+db-cr) from inv_main where inv_main_id = a.inv_main_id) as book_stock,
    (physical_stock-book_stock) as adjustment,
    if adjustment >= 0 then adjustment else 0 endif as db,
    if adjustment < 0 then-adjustment else 0 endif as cr into #temp
    from inv_main as a left outer join tally_physical_stock key join product key join counter
    where counter_code like @counter_code and item like @item and brand like @brand and adjustment <> 0;
  if @@rowcount = 0 then return
  end if; --insert in stock_journal
  insert into stock_journal( "date",ref_no,descr ) values( today(),'Auto adjustments by tally','Dept:'+@counter_code+',Item:'
    +@item+',Comp:'+@brand ) ;
  set @sj_id = @@identity;
  --insert into stock_journal_product
  insert into stock_journal_product( inv_main_id,debit_qty,credit_qty,remarks,sj_id ) 
    select inv_main_id,db,cr,'Auto adjustments by tally',@sj_id from #temp;
  --insert into tally
  insert into tally( sj_id ) values( @sj_id ) ;
  set @tally_id = @@identity;
  --insert into tally_details
  insert into tally_details( tally_id,inv_main_id,physical_stock,book_stock,adjustment ) 
    select @tally_id,inv_main_id,physical_stock,book_stock,adjustment from #temp;
  --clean up
  //delete from tally_physical_stock where inv_main_id = any(select inv_main_id from #temp)
  delete from tally_physical_stock where inv_main_id = any(select inv_main_id from inv_main key join product
        key join counter where counter_code = @counter_code and item like @item and brand like @brand)
end
go

create procedure dba.sp_importpos()
begin
  declare @ret unsigned integer;
  //pos_master
  insert into pos_master( pos_name ) select pos_name from pos_master_temp as a
      where not exists(select pos_name from pos_master where pos_name = a.pos_name);
  //pos_color
  insert into pos_color( color_name,red,green,blue ) select color_name,red,green,blue from pos_color_temp as a
      where not exists(select color_name from pos_color where color_name = a.color_name);
  //pos_scheme
  insert into pos_scheme( scheme_name,printout,scheme_lastno,scheme_prefix,scheme_suffix,ptype,scheme_billing,
    color_id,sch_active,acc_id_db,acc_id_cr ) 
    select scheme_name,printout,0,scheme_prefix,scheme_suffix,ptype,scheme_billing,
      (select color_id from pos_color where color_name = (select color_name from pos_color_temp where color_id
           = a.color_id)),sch_active,func_getcrossaccid(a.acc_id_db),func_getcrossaccid(a.acc_id_cr)
      from pos_scheme_temp as a where not exists(select scheme_name from pos_scheme where scheme_name = a.scheme_name);
  //pos_scheme_debit
  insert into pos_scheme_debit( scheme_id,acc_id ) 
    select(select scheme_id from pos_scheme where scheme_name = (select scheme_name from pos_scheme_temp
          where scheme_id = a.scheme_id)),func_getcrossaccid(a.acc_id)
      from pos_scheme_debit_temp as a where not exists(select debit_id from pos_scheme_debit where scheme_id = a.scheme_id
        and acc_id = a.acc_id);
  //pos_scheme_credit
  insert into pos_scheme_credit( scheme_id,acc_id ) 
    select(select scheme_id from pos_scheme where scheme_name = (select scheme_name from pos_scheme_temp
          where scheme_id = a.scheme_id)),func_getcrossaccid(a.acc_id)
      from pos_scheme_credit_temp as a where not exists(select credit_id from pos_scheme_credit where scheme_id = a.scheme_id
        and acc_id = a.acc_id);
  //pointofsale
  insert into pointofsale( template,pos_active,pos_prefix,pos_suffix,pos_lastno,printer,master_id,scheme_id ) 
    select template,pos_active,pos_prefix,pos_suffix,0,printer,(select master_id from pos_master where pos_name = (select pos_name
          from pos_master_temp where master_id = a.master_id)),(select scheme_id from pos_scheme where scheme_name
         = (select scheme_name from pos_scheme_temp
          where scheme_id = a.scheme_id))
      from pointofsale_temp as a where not exists(select pos_id from pointofsale where master_id = a.master_id
        and scheme_id = a.scheme_id)
end
go

create procedure DBA.sp_importaccounts( in @acc_id_capital unsigned integer default null,in @acc_id_cash unsigned integer default null ) 
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
  insert into acc_main( acc_code,acc_name,acc_class,acc_parent,acc_opbal,
    acc_db,acc_cr,acc_root,acc_sibling,acc_type,description ) 
    select acc_code,acc_name,acc_class,0,0,
      0,0,acc_root,acc_sibling,acc_type,description from acc_temp
      where not acc_temp.acc_code = any(select acc_code from acc_main);
  //pass1 update description
  update acc_main join acc_temp on acc_main.acc_code = acc_temp.acc_code
    set acc_main.description = acc_temp.description
    where acc_temp.description is not null and rtrim(acc_temp.description) <> '';
  //pass2,updates the parents of newly inserted acc_codes.
  update acc_main set acc_parent = func_getcrossparentid(acc_main.acc_code)
    where acc_code = any(select acc_code from acc_temp) and acc_parent = 0; // where acc_id > @maxid;
  //pass3, resets the opening balances of acc_main
  update acc_main set acc_opbal = 0 where acc_root in( 'Y','S' ) ;
  update acc_main set acc_opbal = 0 where acc_root = 'L';
  //pass4,update the opbalance in acc_main
  update acc_main set acc_opbal = func_getcrossopbalance(acc_main.acc_code)
    where acc_root in( 'Y','S' ) ; //and acc_type in('L','A');
  //pass5 get profitloss from acc_temp
  select sum(acc_opbal+acc_db-acc_cr)
    into @assets from acc_temp where acc_type = 'A' and acc_root in( 'Y','S' ) ;
  select sum(acc_opbal+acc_db-acc_cr)
    into @liabilities from acc_temp where acc_type = 'L' and acc_root in( 'Y','S' ) ;
  set @profitloss = @assets+@liabilities;
  //update acc_setup for capital and cash account
  if(select capitalaccount from acc_setup) is null then
    if @acc_id_capital is not null then
      update acc_setup set capitalaccount = func_getcrossaccid(@acc_id_capital)
    end if end if;
  if(select default_cash_id from acc_setup) is null then
    if @acc_id_cash is not null then
      update acc_setup set default_cash_id = func_getcrossaccid(@acc_id_cash)
    end if end if;
  // update acc_main for profitloss
  update acc_main set acc_opbal = acc_opbal-@profitloss
    where acc_id = (select capitalaccount from acc_setup);
  // delete those account codes where transactions and op balance is 0 and parent is autosubledger
  delete from acc_main where acc_opbal = 0 and acc_db = 0 and acc_cr = 0 and acc_root = 'S' and acc_parent
     = any(select acc_id from auto_subledger) and not acc_id = any(select acc_id from bill_memo)
end
go

create procedure dba.sp_insert_product_op_pb( out @inv_main_id unsigned integer,inout @code unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @op integer,in @op_price decimal(10,2),@sl_no char(1),@gw_code char(15) ) 
begin
  declare @pr_id unsigned integer;
  declare @gw_id unsigned integer;
  select pr_id into @pr_id from product where item = @item and brand = @brand and model = @model;
  if @pr_id is null or @pr_id = 0 then
    insert into product( code,item,brand,model,sl_no ) 
      values( @code,@item,@brand,@model,@sl_no ) ;
    set @pr_id = @@identity
  end if;
  select code into @code from product where pr_id = @pr_id;
  select gw_id into @gw_id from godown where gw_code = @gw_code;
  if @gw_id is null or @gw_id = 0 then set @gw_id = 1
  end if;
  if not exists(select pr_id from inv_main where pr_id = @pr_id and gw_id = @gw_id) then
    insert into inv_main( op,db,cr,pr_id,trf_db,trf_cr,gw_id,op_price ) 
      values( @op,0,0,@pr_id,0,0,@gw_id,@op_price ) ;
    set @inv_main_id = @@identity
  else
    update inv_main set op = op+@op,op_price = if @op_price = 0 or @op_price is null then
        op_price else @op_price endif where pr_id = @pr_id and gw_id = @gw_id;
    select inv_main_id into @inv_main_id from inv_main where pr_id = @pr_id and gw_id = @gw_id
  end if
end
go

create procedure dba.sp_update_product_op_pb( in @inv_main_id unsigned integer,in @pr_id unsigned integer,in @item char(10),in @brand char(20),in @model char(20),in @op integer,in @op_price decimal(10,2),@sl_no char(1),@gw_code char(15) ) 
begin
  declare @gw_id unsigned integer;
  update product set item = @item,brand = @brand,model = @model,sl_no = @sl_no
    where pr_id = @pr_id;
  select gw_id into @gw_id from godown where gw_code = @gw_code;
  if @@error <> 0 then
    raiserror 17037 'Error in Gowown Code';
    return
  end if;
  update inv_main set gw_id = @gw_id,op = @op,op_price = @op_price
    where inv_main_id = @inv_main_id;
  return
end
go

create procedure dba.sp_sendsms( in @cellno varchar(11),in @sms varchar(160) ) 
begin
  declare @cellport char(4);
  declare @default_cellno char(11);
  set @sms = trim(@sms);
  if @sms is null or trim(@sms) = '' then
    raiserror 17127 'SMS is empty, so cannot send';
    return
  end if;
  select upper(cellport),cellno into @cellport,@default_cellno from acc_setup;
  if @cellno is null or trim(@cellno) = '' then set @cellno = @default_cellno
  end if;
  if @cellport is null or @cellno is null or trim(@cellport) = '' or trim(@cellno) = '' then
    raiserror 17126 'Error in setup for Cellular no or SMS cell port';
    return
  end if;
  call xp_cmdshell('java smsLib.comPorts '+trim(@cellport)+' '+trim(@cellno)+' "'+@sms+'"')
end
go

create procedure dba.sp_retrieve_salesheet_pb( @acc_id unsigned integer,@mdate date ) as
begin
  commit transaction
  insert into sale_sheet( bill_memo_id,ref_no,mdate,inv_main_id,qty,price,total_amt ) 
    select bill_memo.bill_memo_id,ref_no,"date",bill_memo_product.inv_main_id,if type = 'S' then qty else-qty endif,
      (price-bill_memo_product.discount),if type = 'S' then
        total_amt else-total_amt endif from bill_memo left outer join bill_memo_product left outer join inv_main
      where "date" = @mdate and acc_id = @acc_id
  select ref_no,item,brand,model,qty,price,subtotl=qty*price,total_amt from sale_sheet left outer join inv_main on sale_sheet.inv_main_id
       = inv_main.inv_main_id left outer join product order by ref_no asc
end
go

create procedure dba.sp_addbasicledgeraccounts()
begin
  --adds the default groups and subgroups in acc_main file
  declare @lret unsigned integer;
  //default capital account root
  select acc_id into @lret from acc_main where acc_code = 'Capitalsubgroup';
  if @lret is null then
    raiserror 17137 'Capitalsubgroup account is not found';
    return
  end if;
  if not exists(select acc_code from acc_main where acc_code = 'Capital') then
    insert into acc_main( acc_code,
      acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) values( 'Capital','Capital','L','CAPITAL',
      @lret,'Y','N',0,0,0 ) ;
    set @lret = @@identity;
    if(select capitalaccount from acc_setup) is null then
      update acc_setup set capitalaccount = @lret
    end if end if;
  //default cash account
  select acc_id into @lret from acc_main where acc_code = 'Cashinhand';
  if @lret is null then
    raiserror 17138 'Cashinhand subgroup Account is not found.';
    return
  end if;
  if not exists(select acc_code from acc_main where acc_code = 'Cashaccount') then
    insert into acc_main( acc_code,
      acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) values( 'Cashaccount','Cash Account','A','CASH',
      @lret,'Y','N',0,0,0 ) ;
    set @lret = @@identity;
    if(select default_cash_id from acc_setup) is null then
      update acc_setup set default_cash_id = @lret
    end if end if;
  //default sales account
  select acc_id into @lret from acc_main where acc_code = 'Sales';
  insert into acc_main( acc_code,
    acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) values( 'SalesAccount','Sales Account Default','I','SALE',
    @lret,'Y','N',0,0,0 ) ;
  //default Purchase account
  select acc_id into @lret from acc_main where acc_code = 'Purchase';
  insert into acc_main( acc_code,
    acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) values( 'PurchaseAccount','Purchase Account Default','E','PURCHASE',
    @lret,'Y','N',0,0,0 ) ;
  //default bank account
  select acc_id into @lret from acc_main where acc_code = 'Bankaccounts';
  insert into acc_main( acc_code,
    acc_name,acc_type,acc_class,acc_parent,acc_root,acc_primary,acc_opbal,acc_db,acc_cr ) values( 'BankAccount','Bank Account Default','A','BANK',
    @lret,'Y','N',0,0,0 ) 
end
go

create procedure dba.sp_registercashaccount( in @acc_id unsigned integer default null ) 
begin
  if(select default_cash_id from acc_setup) is null then
    if @acc_id is null then
      select max(acc_id) into @acc_id from acc_main where acc_class = 'CASH' and acc_root in( 'Y','S' ) ;
      if @acc_id is null then
        raiserror 17087 'Cash account code not found';
        return
      end if end if;
    update acc_setup set default_cash_id = @acc_id
  end if
end
go

create procedure dba.sp_acc_main_temp( in mDate date ) 
begin
  truncate table DBA.acc_main_temp;
  insert into acc_main_temp select * from acc_main;
  //if final accounts to be ascertained for current date use acc_main 
  if mDate < today() then
    //set option FIRE_TRIGGERS = 'OFF';
    update acc_main_temp set acc_db = 0,acc_cr = 0 where acc_root in( 'Y','S' ) ;
    //set option FIRE_TRIGGERS = 'ON';
    truncate table DBA.BsTemp;
    //sale
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(total_amt),acc_id,sale_tax_sale_id from bill_memo where type = 'S' and "date" <= mdate group by acc_id,sale_tax_sale_id;
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(total_amt),sale_tax_sale_id,acc_id from bill_memo where type = 'R' and "date" <= mdate group by sale_tax_sale_id,acc_id;
    //sales journal
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select bv_amt,if bv_dbcr = 'db' then a.acc_id endif,if bv_dbcr <> 'DB' then a.acc_id endif from bill_memo_journal as a key join bill_memo where "date" <= mdate;
    //purchase
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(inv_amt),sale_tax_purchase_id,acc_id from invoice where type = 'P' and inv_date <= mdate group by sale_tax_purchase_id,acc_id;
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(inv_amt),acc_id,sale_tax_purchase_id from invoice where type = 'R' and inv_date <= mdate group by acc_id,sale_tax_purchase_id;
    //cash payment
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(cp_amt),cp_acc_id,cp_acc_id_cash from cash_payment where cp_date <= mdate group by cp_acc_id,cp_acc_id_cash;
    //cheque payment
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(cheq_amt),acc_id,acc_id_bank from cheque_payment where cheq_date <= mdate group by acc_id,acc_id_bank;
    //cash receipt
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(amt),acc_id_cash,acc_id from cash_receipt where rec_date <= mdate group by acc_id_cash,acc_id;
    //cheque receipt
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(cheq_amt),acc_id_cash_bank,acc_id from cheque_receipt where rec_date <= mdate group by acc_id_cash_bank,acc_id;
    //contra entries
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(contra_amt),acc_id_db,acc_id_cr from contra_entries where contra_date <= mdate group by acc_id_db,acc_id_cr;
    //debit credit notes
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(dc_amt),acc_id_db,acc_id_cr from debit_credit_note where dc_date <= mdate group by acc_id_db,acc_id_cr;
    //expence
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select sum(exp_amt),acc_id_exp,acc_id from expence where exp_date <= mdate group by acc_id_exp,acc_id;
    //journal
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select jou_amt,if jou_db_cr = 'D' then jou_acc_id endif,if jou_db_cr = 'C' then jou_acc_id endif from journal key join journal_no where jou_date <= mdate;
    //voucher
    insert into BsTemp( amount,accIDDebit,accIDCredit ) 
      select amount,if db_cr = 'D' then acc_id endif,if db_cr = 'C' then acc_id endif from voucher_details key join voucher where vdate <= mdate
  end if;
  select 0 from dummy
end
go

call dbo.sa_recompile_views(0)
go


-------------------------------------------------
--   Create triggers
-------------------------------------------------

commit
go


create trigger dba.update_after_acc_main after update of acc_parent
order 1 on DBA.acc_main
referencing old as old_name new as new_name
for each row
begin
  declare @class char(10);
  declare @type char(1);
  //update the parents
  if new_name.acc_parent <> 0 then
    // SubGroup entry or ledger account entry
    //get the class and type
    select acc_class,acc_type into @class,@type from acc_main
      where acc_id = new_name.acc_parent;
    if @@rowcount <> 1 then
      raiserror 17003;
      return
    end if end if;
  update acc_main set acc_class = @class,acc_type = @type
    where acc_id = new_name.acc_id;
  //update the children
  update acc_main set acc_class = @class,acc_type = @type,
    acc_sibling = new_name.acc_sibling
    where acc_parent = new_name.acc_id
end
go

create trigger dba.delete_before_acc_main before delete order 2 on
DBA.acc_main
referencing old as old_name
for each row
begin
  declare @cnt unsigned integer;
  if old_name.acc_primary = 'Y' then
    raiserror 17001 'Error';
    return
  end if;
  select count() into @cnt from acc_main where old_name.acc_id = acc_parent;
  if @cnt > 0 then
    raiserror 17002 'Error';
    return
  end if;
  if old_name.acc_parent <> 0 then
    update acc_main
      set acc_opbal = acc_opbal-old_name.acc_opbal,
      acc_db = acc_db-old_name.acc_db,
      acc_cr = acc_cr-old_name.acc_cr
      where acc_id = old_name.acc_parent
  end if;
  delete from chequeincash_table where acc_id = old_name.acc_id
end
go

create trigger dba.insert_before_acc_main before insert order 1 on
DBA.acc_main
referencing new as new_name
for each row
begin
  declare @chequeincash char(1);
  declare @class char(10);
  declare @type char(1);
  if exists(select acc_code from acc_main where acc_code = new_name.acc_code) then
    raiserror 17114 'error';
    return
  end if;
  if new_name.acc_sibling is null then
    set new_name.acc_sibling = 0
  end if;
  //update the parents
  if new_name.acc_parent <> 0 then
    // SubGroup entry or ledger account entry
    //get the class and type
    select acc_class,acc_type into @class,@type from acc_main
      where acc_id = new_name.acc_parent;
    if @@rowcount <> 1 then
      raiserror 17003;
      return
    end if;
    //only allow to change class if not primary account code
    if new_name.acc_primary <> 'Y' then
      set new_name.acc_class = @class
    end if;
    set new_name.acc_type = @type;
    //for subledger
    if new_name.acc_root = 'S' then
      if new_name.acc_parent <> 0 then
        //check if parent has transactions in acc_tran
        if not exists(select acc_tran_id from acc_tran where acc_id_db = new_name.acc_parent) then
          if not exists(select acc_tran_id from acc_tran where acc_id_cr = new_name.acc_parent) then
            //restrict the subledger account for certain class of accounts
            if func_getclass(new_name.acc_parent) in( 'CASH','BANK','SALE','PURCHASE','BRANCH' ) then
              raiserror 17121 'Account codes of type Cash,bank,sale,purchase and branch cannot have subledgers';
              return
            else
              // if ledger account.acc_root = 'Y' then make it 'L'
              if(select acc_root from acc_main where acc_id = new_name.acc_parent) = 'Y' then
                update acc_main set acc_root = 'L' where acc_id = new_name.acc_parent
              end if
            end if
          else //there are transactions against the parent account, so not allowed to create subledger
            raiserror 17119 'There are already credit transactions against the ledger account of this subledger';
            return
          end if
        else //there are transactions against the parent account, so not allowed to create subledger
          raiserror 17118 'There are already debit transactions against the ledger account of this subledger';
          return
        end if //subledger account has got no parent
      else raiserror 99999 'Error in Ledger Account code for this subledger account';
        return
      end if end if;
    update acc_main
      set acc_opbal = acc_opbal+new_name.acc_opbal,
      acc_db = acc_db+new_name.acc_db,
      acc_cr = acc_cr+new_name.acc_cr
      where acc_id = new_name.acc_parent
  end if
end
go

create trigger dba.insert_after_acc_main after insert order 2 on
DBA.acc_main
referencing new as new_name
for each row
begin
  declare @chequeincash char(1);
  declare @class char(10);
  declare @accid unsigned integer;
  declare @accparent unsigned integer;
  select acc_class into @class from acc_main
    where acc_id = new_name.acc_parent;
  if @@rowcount <> 1 and new_name.acc_parent <> 0 then
    raiserror 17003 'Parent Code Error';
    return
  end if;
  //add in chequeincash_table
  if @class = 'CASH' then
    insert into chequeincash_table( acc_id,chequeincash ) 
      values( new_name.acc_id,@chequeincash ) 
  end if
end
go

create trigger dba.update_before_acc_main before update order 3 on
DBA.acc_main
referencing old as old_name new as new_name
for each row
begin
  declare @oldclass char(10);
  declare @newclass char(10);
  if new_name.acc_class <> old_name.acc_class then
    set @newclass = new_name.acc_class;
    set @oldclass = old_name.acc_class;
    if new_name.acc_class in( 'CASH','BANK','CAPITAL','PURCHASE','SALE' ) 
      or old_name.acc_class in( 'CASH','BANK','CAPITAL','PURCHASE','SALE' ) then
      raiserror 17025 'Cannot change the class of this account code';
      return
    end if end if;
  //cannot update the parent of primary account codes
  if new_name.acc_parent <> old_name.acc_parent then
    if old_name.acc_primary = 'Y' then
      raiserror 17004 'Cannot modify the parent group of primary account code';
      return
    end if end if;
  //validations for ledger accounts which have subledgers
  if new_name.acc_root = 'L' then
    if exists(select acc_tran_id from acc_tran where acc_id_db = new_name.acc_parent) then
      raiserror 17118 'There are already debit transactions against the ledger account of this subledger';
      return
    elseif exists(select acc_tran_id from acc_tran where acc_id_cr = new_name.acc_parent) then
      raiserror 17119 'There are already credit transactions against the ledger account of this subledger';
      return
    end if end if;
  //update parent
  if new_name.acc_parent <> 0 then
    update acc_main
      set acc_opbal = acc_opbal+new_name.acc_opbal,
      acc_db = acc_db+new_name.acc_db,
      acc_cr = acc_cr+new_name.acc_cr
      where acc_id = new_name.acc_parent
  end if;
  if old_name.acc_parent <> 0 then
    update acc_main
      set acc_opbal = acc_opbal-old_name.acc_opbal,
      acc_db = acc_db-old_name.acc_db,
      acc_cr = acc_cr-old_name.acc_cr
      where acc_id = old_name.acc_parent
  end if
end
go

create trigger dba.update_product before update of item,brand,model,code,
bar_code order 3 on
DBA.product
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  //select func_setcode(new_name.code,new_name.item,new_name.brand,new_name.model) into @lret
  //from dummy
end
go

create trigger Dba.delete_product before delete order 1 on
DBA.product
referencing old as old_name
for each row
begin
  declare @op integer;
  declare @db integer;
  declare @cr integer;
  declare @trf_db integer;
  declare @trf_cr integer;
  select op,db,cr,trf_db,trf_cr into @op,@db,@cr,@trf_db,@trf_cr
    from inv_main where pr_id = old_name.pr_id;
  if @@rowcount > 0 then
    if @op = 0 and @db = 0 and @cr = 0 and @trf_db = 0 and @trf_cr = 0 then
      delete from inv_main where pr_id = old_name.pr_id;
      if @@error <> 0 then
        raiserror 17044;
        return
      end if
    else raiserror 17045;
      return
    end if end if;
  delete from price_list where pr_id = old_name.pr_id
end
go

create trigger Dba.insert_product before insert order 1 on
DBA.product
referencing new as new_name
for each row
begin
  declare @code unsigned integer;
  if new_name.show is null then set new_name.show = 'Y'
  end if;
  if new_name.code is null or new_name.code = 0 then
    select maxcode+1 into @code from acc_setup;
    if @code is null or @code = 0 then
      select max(code)+1 into @code from product;
      if @code is null or @code = 0 then
        set @code = 1
      end if end if;
    update acc_setup set maxcode = @code;
    set new_name.code = @code
  end if;
  if new_name.counter_id is null then set new_name.counter_id = 1
  end if
end
go

create trigger dba.update_before_bill before update of acc_id,"date",sale_tax_sale_id,Total_amt,
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
      insert into billMemo( bill_memo_id,acc_id,ref_no,descr,challan_no,"date",sale_tax_sale_id,discount,cust_id,tax,other_charges,total_amt,type,surcharge,bill_memo,pos_id,tot,vat,serv_tax,sales_tax,roundoff,cst,mdatetime,mold ) 
        values( old_name.bill_memo_id,old_name.acc_id,old_name.ref_no,old_name.descr,old_name.challan_no,old_name."date",old_name.sale_tax_sale_id,old_name.discount,old_name.cust_id,old_name.tax,old_name.other_charges,old_name.total_amt,old_name.type,old_name.surcharge,old_name.bill_memo,old_name.pos_id,old_name.tot,old_name.vat,old_name.serv_tax,old_name.sales_tax,old_name.roundoff,old_name.cst,old_name.mdatetime,old_name.mold ) ;
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
      end if
    end if //sales return
  else //acc_tran
    update acc_tran
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
      end if
    end if end if;
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

create trigger Dba.update_auditlock_bill_memo after update of acc_id,"date",sale_tax_sale_id,Total_amt,
type order 4 on DBA.bill_memo
referencing old as old_name new as new_name
for each row
begin
  declare @class char(10);
  select func_getclass(old_name.acc_id) into @class;
  call func_checkauditlockdate(old_name.sale_tax_sale_id,old_name.acc_id,old_name."date");
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.sale_tax_sale_id,new_name.acc_id,new_name."date");
  if(@@error <> 0) then return end if;
  //update for change in date for bill_memo_journal
  if @class is null and old_name."date" <> new_name."date" then
    insert into bill_memo_journal( bv_id,bill_memo_id,acc_id,bv_dbcr,bv_amt,
      bv_refno,bv_chequeno,bv_bank,bv_branch ) 
      select bv_id,bill_memo_id,acc_id,bv_dbcr,bv_amt,
        bv_refno,bv_chequeno,bv_bank,bv_branch from bm_journal_temp;
    delete from bm_journal_temp
  end if
end
go

create trigger dba.delete_after_bill after delete order 3 on
DBA.bill_memo
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  select func_getclass(old_name.acc_id) into @class;
  if old_name.type = 'S' then //sales delete
    if @class = 'CASH' then //delete of cash sales
      select func_addcashbook(old_name.acc_id,old_name."date",-old_name.total_amt,0)
        into @lret
    elseif @class = 'BANK' then
      select f_deletefrombankbookforced(old_name.bill_memo_id,2)
        into @lret
    end if //sales return
  else if @class = 'CASH' then //delete of cash sales return
      select func_addcashbook(old_name.acc_id,old_name."date",0,-old_name.total_amt)
        into @lret
    elseif @class = 'BANK' then
      select f_deletefrombankbookforced(old_name.bill_memo_id,2)
        into @lret
    end if end if;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.delete_before_bill before delete order 2 on
DBA.bill_memo
referencing old as old_name
for each row
begin
  call func_checkauditlockdate(old_name.sale_tax_sale_id,old_name.acc_id,old_name."date");
  if(@@error <> 0) then return end if;
  delete from bill_memo_product where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17014;
    return
  end if;
  //delete from receipt_bill_memo
  delete from receipt_bill_memo where bill_memo_id = old_name.bill_memo_id;
  //delete from acc_tran
  delete from acc_tran where tran_type = 2
    and doc_id = old_name.bill_memo_id;
  //delete from bill_memo_descriptive_sales
  delete from bill_memo_descriptive_sales where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17015;
    return
  end if;
  //delete from bill_memo_cheque_details table
  delete from bill_memo_cheque_details where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17014;
    return
  end if;
  //delete from bill_memo_journal
  delete from bill_memo_journal where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17016;
    return
  end if
end
go

create trigger dba.insert_before_bill before insert order 1 on
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
  if new_name.sales_tax is null then set new_name.sales_tax = 0
  end if;
  if new_name.vat is null then set new_name.vat = 0
  end if;
  if new_name.serv_tax is null then set new_name.serv_tax = 0
  end if;
  if new_name.roundoff is null then set new_name.roundoff = 0
  end if;
  if new_name.cst is null then set new_name.cst = 0
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
      end if
    end if end if;
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
        into @lret //sales return so cash credit
    else select func_addcashbook(new_name.acc_id,new_name."date",0,new_name.total_amt)
        into @lret
    end if //bank
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
        into @lret
    else //sales return,take out money from bank_recon
      select f_insertintobankbook(new_name.acc_id,new_name."date",
        0,new_name.total_amt,new_name.ref_no,new_name.descr,null,'PE',
        new_name.bill_memo_id,2,null,new_name.sale_tax_sale_id,1)
        into @lret
    end if
  else //@class is debtor
    //bank recon is also updated using bill_memo_cheque_details table
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
      end if
    end if end if;
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

create trigger dba.update_before_invoice before update of acc_id,inv_date,sale_tax_purchase_id,inv_amt,
type order 3 on
DBA.invoice
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  if func_isvaliddate(new_name.inv_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  select func_getclass(old_name.acc_id) into @class;
  if @class in( 'CASH','BANK' ) then
    set new_name.adj_amt = new_name.inv_amt
  end if;
  if new_name.type = 'P' then
    update acc_tran
      set amt = new_name.inv_amt,
      acc_id_db = new_name.sale_tax_purchase_id,
      acc_id_cr = new_name.acc_id
      where acc_tran.doc_id = old_name.inv_id
      and tran_type = 1;
    //cash and bank
    if @class = 'CASH' then
      if old_name.inv_date <> new_name.inv_date or old_name.inv_amt <> new_name.inv_amt then
        select func_addcashbook(old_name.acc_id,old_name.inv_date,0,-old_name.inv_amt) into @lret;
        select func_addcashbook(old_name.acc_id,old_name.inv_date,0,new_name.inv_amt)
          into @lret
      end if
    elseif @class = 'BANK' then
      if old_name.inv_amt <> new_name.inv_amt then
        //update bank_recon
        update bank_recon set debit_amt = new_name.inv_amt
          where tran_type = 1 and doc_id = old_name.inv_id
      end if
    end if // purchase ret
  else update acc_tran
      set amt = new_name.inv_amt,
      acc_id_db = new_name.acc_id,
      acc_id_cr = new_name.sale_tax_purchase_id
      where acc_tran.doc_id = old_name.inv_id
      and tran_type = 1;
    //cash bank
    if @class = 'CASH' then
      if old_name.inv_date <> new_name.inv_date or old_name.inv_amt <> new_name.inv_amt then
        select func_addcashbook(old_name.acc_id,old_name.inv_date,-old_name.inv_amt,0) into @lret;
        select func_addcashbook(old_name.acc_id,old_name.inv_date,new_name.inv_amt,0)
          into @lret
      end if
    elseif @class = 'BANK' then
      if old_name.inv_amt <> new_name.inv_amt then
        //update bank_recon
        update bank_recon set credit_amt = new_name.inv_amt
          where tran_type = 1 and doc_id = old_name.inv_id
      end if
    end if end if;
  // update the last purchase date and last purchase price in product table
  if old_name.inv_date <> new_name.inv_date and new_name.type = 'P' then
    update product
      set last_date = new_name.inv_date,
      last_price = invoice_product.actual_price from
      product key join inv_main key join invoice_product
      key join invoice
      where last_date <= new_name.inv_date
      and invoice.inv_id = new_name.inv_id
  end if
end
go

create trigger insert_cashbook_summery_temp before insert order 1 on
DBA.cashbook_summery_temp
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  select cs_id into @lret from cashbook_summery where cs_date = new_name.cs_date and acc_id_cash = new_name.acc_id_cash;
  if @@rowcount <> 0 then
    update cashbook_summery set cs_debit = cs_debit+new_name.cs_debit,
      cs_credit = cs_credit+new_name.cs_credit,
      cs_debit_cheque = cs_debit_cheque+new_name.cs_debit_cheque,
      cs_credit_cheque = cs_credit_cheque+new_name.cs_credit_cheque
      where cs_id = @lret
  else
    insert into cashbook_summery( acc_id_cash,cs_date,cs_debit,cs_credit,cs_debit_cheque,cs_credit_cheque ) 
      values( new_name.acc_id_cash,new_name.cs_date,new_name.cs_debit,new_name.cs_credit,new_name.cs_debit_cheque,new_name.cs_credit_cheque ) ;
    set @lret = @@identity;
    if @lret = 0 then
      raiserror 17056;
      return
    end if
  end if
end
go

create trigger Dba.update_auditlock_invoice after update of acc_id,inv_date,sale_tax_purchase_id,inv_amt,
type order 4 on DBA.invoice
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.sale_tax_purchase_id,old_name.acc_id,old_name.inv_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.sale_tax_purchase_id,new_name.acc_id,new_name.inv_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.delete_after_invoice after delete order 3 on
DBA.invoice
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  select func_getclass(old_name.acc_id) into @class;
  if old_name.type = 'P' then //purchase
    if @class = 'CASH' then // delete from cash purchase
      select func_addcashbook(old_name.acc_id,old_name.inv_date,0,-old_name.inv_amt)
        into @lret
    elseif @class = 'BANK' then
      select f_deletefrombankbookforced(old_name.inv_id,1)
        into @lret
    end if // purchase return
  else if @class = 'CASH' then // delete of cash purchase return
      select func_addcashbook(old_name.acc_id,old_name.inv_date,-old_name.inv_amt,0)
        into @lret
    elseif @class = 'BANK' then
      select f_deletefrombankbookforced(old_name.inv_id,1)
        into @lret
    end if end if;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.delete_before_invoice before delete order 2 on
DBA.invoice
referencing old as old_name
for each row
begin
  //delete from acc_tran
  call func_checkauditlockdate(old_name.sale_tax_purchase_id,old_name.acc_id,old_name.inv_date);
  if(@@error <> 0) then return end if;
  delete from invoice_product where inv_id = old_name.inv_id;
  if @@error <> 0 then
    raiserror 17040;
    return
  end if;
  //delete from acc_tran;
  delete from acc_tran where tran_type = 1 and doc_id = old_name.inv_id;
  //delete from invoice_descriptive purchase
  delete from invoice_descriptive_purchase where inv_id = old_name.inv_id
end
go

create trigger dba.insert_before_invoice before insert order 1 on
DBA.invoice
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  select func_getclass(new_name.acc_id) into @class;
  set new_name.adj_amt = 0.0;
  call func_checkauditlockdate(new_name.sale_tax_purchase_id,new_name.acc_id,new_name.inv_date);
  if(@@error <> 0) then return end if;
  if @@error <> 0 then return
  end if; //purchase return
  if new_name.type = 'R' then
    if new_name.ref_no is null then set new_name.ref_no = func_getautonumber(1)
    end if end if;
  if func_isvaliddate(new_name.inv_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  //insert into acc_tran
  //party a/c credit,purchase a/c credit
  set new_name.due_amt = new_name.inv_amt;
  if new_name.type = 'P' then
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.inv_id,new_name.inv_amt,1,new_name.sale_tax_purchase_id,new_name.acc_id ) 
  else // debit note or purchase return
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.inv_id,new_name.inv_amt,1,new_name.acc_id,new_name.sale_tax_purchase_id ) 
  end if;
  //insert into cashbook_summery
  if @class = 'CASH' then
    set new_name.adj_amt = new_name.inv_amt;
    if new_name.type = 'P' then //purchase so cash credit
      select func_addcashbook(new_name.acc_id,new_name.inv_date,0,new_name.inv_amt)
        into @lret
    else select func_addcashbook(new_name.acc_id,new_name.inv_date,new_name.inv_amt,0)
        into @lret
    end if
  elseif @class = 'BANK' then
    set new_name.adj_amt = new_name.inv_amt;
    if new_name.type = 'P' then
      select f_insertintobankbook(new_name.acc_id,new_name.inv_date,
        0,new_name.inv_amt,new_name.ref_no,new_name.descr,new_name.inv_date,'PE',
        new_name.inv_id,1,null,new_name.sale_tax_purchase_id,0)
        into @lret //purchase return by cheque
    else select f_insertintobankbook(new_name.acc_id,new_name.inv_date,
        new_name.inv_amt,0,new_name.ref_no,new_name.descr,new_name.inv_date,'PE',
        new_name.inv_id,1,null,new_name.sale_tax_purchase_id,0)
        into @lret
    end if
  end if
end
go

create trigger dba.delete_invoice_product before delete order 3 on
dba.invoice_product
referencing old as old_name
for each row
begin
  // After delete set the last_date and last_price of product table
  // which is the last purchase date and last purchase price
  declare @prid unsigned integer;
  declare @ldate date;
  declare @lprice decimal(14,2);
  declare @thisdate date;
  declare @type char(1);
  select type into @type from invoice where invoice.inv_id = old_name.inv_id;
  delete from slno_invoice_product where invoice_product_id
     = old_name.invoice_product_id;
  if @type = 'R' then // Purchase return delete  
    update inv_main set Cr = cr-old_name.qty
      where inv_main_id = old_name.inv_main_id
  else
    //delete from seq_no table for purchase
    delete from seq_no_tran where tran_type = 1 and tran_id = old_name.invoice_product_id;
    update inv_main set db = db-old_name.qty
      where inv_main_id = old_name.inv_main_id;
    select func_getprid(old_name.inv_main_id) into @prid;
    select distinct inv_date into @thisdate from invoice_product
        key join invoice where old_name.inv_id = invoice.inv_id;
    select last_date into @ldate from product
      where pr_id = @prid;
    if @ldate = @thisdate then
      //since this invoice was for last date so update last_price
      // and last_date in product table
      set @lprice = null;
      select max(inv_date) into @ldate from invoice_product
          key join invoice where inv_main_id = old_name.inv_main_id
        and invoice_product_id <> old_name.invoice_product_id;
      //inv_date <> @thisdate;
      set @lprice = func_getlastprice(old_name.inv_main_id,@ldate);
      update product set last_price = @lprice,last_date = @ldate
        where pr_id = @prid
    //
    end if
  end if
end
go

create trigger dba.insert_invoice_product before insert order 1 on
dba.invoice_product
referencing new as new_name
for each row
begin
  declare @date date;
  declare @type char(1);
  declare @ldate date;
  declare @prid unsigned integer;
  declare @lprice T_money;
  declare @feid integer;
  declare @beid integer;
  declare @seq_no varchar(20);
  declare @i integer;
  declare @seq_id unsigned integer;
  declare @last_tran_id unsigned integer;
  declare @auto_seq_no char(1);
  //get invoice date
  select inv_date,type into @date,@type from invoice
    where invoice.inv_id = new_name.inv_id;
  //set inv_main qty
  if @type = 'P' then // Purchase
    update inv_main set db = db+new_name.qty
      where inv_main_id = new_name.inv_main_id
  else // purchase return
    update inv_main set cr = cr+new_name.qty
      where inv_main_id = new_name.inv_main_id
  end if;
  // Get last date and last price of purchase 
  if @type = 'P' then // if purchase then
    select pr_id into @prid from inv_main where inv_main.inv_main_id
       = new_name.inv_main_id;
    select last_date,last_price into @ldate,@lprice
      from product where pr_id = @prid;
    if(@ldate is null or @date > @ldate) or(@lprice is null or @lprice = 0) then // new date should be last date
      update product set last_date = @date,
        last_price = new_name.actual_price,
        basic_price = new_name.price
        where product.pr_id = @prid
    end if end if;
  //for sequence no
  select auto_seq_no into @auto_seq_no from acc_setup;
  if @auto_seq_no is null then set @auto_seq_no = 'Y'
  end if; //purchase so generate seq no if auto seq no is 'Y'
  if @type = 'P' and @auto_seq_no = 'Y' then
    set @i = 1;
    while @i <= new_name.qty loop
      insert into seq_no( seq_no,stock,inv_main_id,last_id ) 
        values( func_getseqno(),'Y',new_name.inv_main_id,0 ) ;
      set @seq_id = @@identity;
      insert into seq_no_tran( seq_id,tran_type,tran_id,prev_id ) 
        values( @seq_id,1,new_name.invoice_product_id,0 ) ;
      //last_id is set by the insert trigger of seq_notran table
      set @i = @i+1
    end loop
  end if
end
go

create trigger dba.invoice_insert_update_delete before insert,delete,update order 4 on
dba.invoice_product
referencing old as old_name new as new_name
for each row
begin
  //for effect in tally_physical_stock
  declare @type char(1);
  if inserting then
    select type into @type from invoice where invoice.inv_id = new_name.inv_id;
    if @type = 'R' then // Purchase return insert
      update tally_physical_stock set qty = qty-new_name.qty where inv_main_id = new_name.inv_main_id
    else //purchase
      update tally_physical_stock set qty = qty+new_name.qty where inv_main_id = new_name.inv_main_id
    end if
  elseif deleting then select type into @type from invoice where invoice.inv_id = old_name.inv_id;
    if @type = 'R' then // Purchase return delete
      update tally_physical_stock set qty = qty+old_name.qty where inv_main_id = old_name.inv_main_id
    else //purchase
      update tally_physical_stock set qty = qty-old_name.qty where inv_main_id = old_name.inv_main_id
    end if //updating
  else select type into @type from invoice where invoice.inv_id = old_name.inv_id;
    if @type = 'R' then // Purchase return 
      //insert effect
      update tally_physical_stock set qty = qty-new_name.qty where inv_main_id = new_name.inv_main_id;
      //delete effect
      update tally_physical_stock set qty = qty+old_name.qty where inv_main_id = old_name.inv_main_id
    else
      //purchase
      //insert effect
      update tally_physical_stock set qty = qty+new_name.qty where inv_main_id = new_name.inv_main_id;
      //delete effect	
      update tally_physical_stock set qty = qty-old_name.qty where inv_main_id = old_name.inv_main_id
    end if
  end if
end
go

create trigger dba.update_invoice_product before update order 3 on
dba.invoice_product
referencing old as old_name new as new_name
for each row
begin
  declare @prid unsigned integer;
  declare @ldate date;
  declare @lprice T_money;
  declare @thisdate date;
  declare @date date;
  declare @type char(1);
  declare @cnt integer;
  // updates in inv_main table
  select type into @type from invoice where invoice.inv_id = new_name.inv_id;
  if new_name.inv_main_id = old_name.inv_main_id then
    if @type = 'P' then
      update inv_main set db = db+new_name.qty-old_name.qty
        where inv_main_id = new_name.inv_main_id
    else
      update inv_main set cr = cr+new_name.qty-old_name.qty
        where inv_main_id = new_name.inv_main_id
    end if
  else //First delete, then insert in inv_main table
    if @type = 'P' then
      update inv_main set db = db-old_name.qty
        where inv_main_id = old_name.inv_main_id;
      update inv_main set db = db+new_name.qty
        where inv_main_id = new_name.inv_main_id
    else
      update inv_main set cr = cr-old_name.qty
        where inv_main_id = old_name.inv_main_id;
      update inv_main set cr = cr+new_name.qty
        where inv_main_id = new_name.inv_main_id
    end if end if;
  // Update for price information in product table
  if @type = 'R' then return
  end if; // product changed
  if old_name.inv_main_id <> new_name.inv_main_id then
    //first delete effect
    select func_getprid(old_name.inv_main_id) into @prid;
    select distinct inv_date into @thisdate from invoice_product
        key join invoice where old_name.inv_id = invoice.inv_id;
    select last_date into @ldate from product
      where pr_id = @prid;
    if @ldate = @thisdate then
      //since this invoice was for last date so update last_price
      // and last_date in product table
      set @lprice = null;
      select max(inv_date) into @ldate from invoice_product
          key join invoice where inv_main_id = old_name.inv_main_id
        and invoice_product_id <> old_name.invoice_product_id;
      //inv_date <> @thisdate;
      set @lprice = func_getlastprice(old_name.inv_main_id,@ldate);
      update product set last_price = @lprice,last_date = @ldate
        where pr_id = @prid
    end if;
    // now insert effect
    //get invoice date
    select inv_date into @date from invoice
      where invoice.inv_id = new_name.inv_id;
    // Get last date and last price of purchase 
    select pr_id into @prid from inv_main where inv_main.inv_main_id
       = new_name.inv_main_id;
    select last_date,last_price into @ldate,@lprice
      from product where pr_id = @prid;
    if @ldate is null or @date > @ldate or @lprice is null or @lprice = 0 then // new date should be last date
      update product set last_date = @date,
        last_price = new_name.actual_price,
        basic_price = new_name.price
        where product.pr_id = @prid
    end if
  elseif old_name.actual_Price <> new_name.actual_price then
    update product
      set last_date = invoice.inv_date,
      last_price = new_name.actual_price,
      basic_price = new_name.price from
      product key join inv_main key join invoice_product
      key join invoice
      where last_date <= invoice.inv_date
      and invoice_product.invoice_product_id = new_name.invoice_product_id
  end if
end
go

create trigger dba.delete_bill_memo_product before delete order 3 on
dba.bill_memo_product
referencing old as old_name
for each row
begin
  declare @type char(1);
  declare @cnt integer;
  select type into @type from bill_memo
    where bill_memo_id = old_name.bill_memo_id;
  if @type = 'S' then //sales
    update inv_main set cr = cr-old_name.qty
      where inv_main_id = old_name.inv_main_id
  else // sales return
    update inv_main set db = db-old_name.qty
      where inv_main_id = old_name.inv_main_id
  end if;
  delete from slno_bill_memo_product where product_id = old_name.bill_product_id
end
go

create trigger dba.insert_bill_memo_product before insert order 1 on
dba.bill_memo_product
referencing new as new_name
for each row
begin
  declare @lastprice T_money;
  declare @opprice T_money;
  declare @type char(1);
  declare @pr_id unsigned integer;
  declare @billmemoid unsigned integer;
  declare @counter_id unsigned integer;
  declare @coupon_id unsigned integer;
  declare @coupon char(1);
  declare @last_coupon_no integer;
  if new_name.inv_main_id is null then
    raiserror 17113 'Error in product'
  end if; //update inv field in bill_memo table for inventory
  update bill_memo set inv = 'Y' where inv = 'N' and bill_memo_id = new_name.bill_memo_id;
  //check if corresponding entry exists in bill_memo_descriptive_sales table
  select bill_memo_id into @billmemoid from bill_memo_descriptive_sales
    where bill_memo_id = new_name.bill_memo_id;
  if @billmemoid is not null or @billmemoid <> 0 then
    raiserror 17018;
    return
  end if;
  select type into @type from bill_memo
    where bill_memo_id = new_name.bill_memo_id;
  select last_price,product.op_price,product.pr_id into @lastprice,
    @opprice,@pr_id from product
      key join inv_main where inv_main.inv_main_id = new_name.inv_main_id;
  if @lastprice = 0 or @lastprice is null then
    set @lastprice = if @opprice is null then 0 else @opprice endif
  end if;
  if @type = 'S' then //sales
    update inv_main set cr = cr+new_name.qty
      where inv_main_id = new_name.inv_main_id;
    set new_name.actual_profit
       = new_name.qty*(new_name.actual_price
      -func_getfinalpurchaseprice(@pr_id));
    if @lastprice <> 0 and @lastprice is not null then
      set new_name.gross_profit = new_name.qty*(new_name.price-@lastprice-new_name.discount)
    end if // sales return
  else update inv_main set db = db+new_name.qty
      where inv_main_id = new_name.inv_main_id;
    set new_name.actual_profit = -new_name.qty*(new_name.actual_price
      -func_getfinalpurchaseprice(@pr_id));
    if @lastprice <> 0 and @lastprice is not null then
      set new_name.gross_profit = -new_name.qty*(new_name.price-@lastprice-new_name.discount)
    end if end if;
  //for coupon system
  select coupon into @coupon from acc_setup;
  if @coupon is null or @coupon = 'N' then return
  end if;
  select last_coupon_no+1 into @last_coupon_no from acc_setup;
  if @last_coupon_no is null then set @last_coupon_no = 1
  end if;
  select counter_id into @counter_id from product key join inv_main
    where new_name.inv_main_id = inv_main.inv_main_id;
  select coupon_id into @coupon_id from coupon_temp where counter_id = @counter_id;
  if @coupon_id is null then // create new coupon
    insert into coupon( coupon_no ) values( @last_coupon_no ) ;
    set @coupon_id = @@identity;
    update acc_setup set last_coupon_no = @last_coupon_no;
    insert into coupon_temp( counter_id,coupon_id ) values( @counter_id,@coupon_id ) 
  end if;
  set new_name.coupon_id = @coupon_id
end
go

create trigger dba.bill_insert_update_delete_tally before insert,delete,update order 4 on
dba.bill_memo_product
referencing old as old_name new as new_name
for each row
begin
  //for tally_physical_stock
  declare @type char(1);
  //declare @cnt integer;
  if inserting then
    select type into @type from bill_memo
      where bill_memo_id = new_name.bill_memo_id;
    if @type = 'S' then //sales so out from physical stock
      update tally_physical_stock set qty = qty-new_name.qty
        where inv_main_id = new_name.inv_main_id
    else // sales return so add to physical stock
      update tally_physical_stock set qty = qty+new_name.qty
        where inv_main_id = new_name.inv_main_id
    end if
  elseif deleting then select type into @type from bill_memo
      where bill_memo_id = old_name.bill_memo_id;
    if @type = 'S' then //sales so add to physical stock
      update tally_physical_stock set qty = qty+old_name.qty
        where inv_main_id = old_name.inv_main_id
    else // sales return so less from physical stock
      update tally_physical_stock set qty = qty-old_name.qty
        where inv_main_id = old_name.inv_main_id
    end if
  elseif updating then select type into @type from bill_memo
      where bill_memo_id = old_name.bill_memo_id;
    if @type = 'S' then //sales 
      //delete effect
      update tally_physical_stock set qty = qty+old_name.qty
        where inv_main_id = old_name.inv_main_id;
      //insert effect
      update tally_physical_stock set qty = qty-new_name.qty
        where inv_main_id = new_name.inv_main_id
    else // sales return
      //delete effect
      update tally_physical_stock set qty = qty-old_name.qty
        where inv_main_id = old_name.inv_main_id;
      //insert effect
      update tally_physical_stock set qty = qty+new_name.qty
        where inv_main_id = new_name.inv_main_id
    end if
  end if
end
go

create trigger dba.update_bill_memo_product before update order 3 on
dba.bill_memo_product
referencing old as old_name new as new_name
for each row
begin
  declare @lastprice T_money;
  declare @opprice T_money;
  declare @type char(1);
  declare @pr_id unsigned integer;
  declare @mpreserve char(1);
  if new_name.inv_main_id is null then
    raiserror 17113 'Error in product'
  end if;
  select type,mpreserve into @type,@mpreserve from bill_memo
    where bill_memo_id = new_name.bill_memo_id;
  select last_price,product.op_price,product.pr_id into @lastprice,
    @opprice,@pr_id from product
      key join inv_main where inv_main.inv_main_id = new_name.inv_main_id;
  if @lastprice = 0 or @lastprice is null then
    set @lastprice = @opprice
  end if;
  if new_name.price <> old_name.price and(old_name.mold is null or old_name.mold = 0) then
    set new_name.mold = old_name.price
  end if;
  if @type = 'S' then //sales
    if @mpreserve = 'Y' then
      set new_name.actual_profit = 0;
      set new_name.gross_profit = 0
    else
      set new_name.actual_profit
         = new_name.qty*(new_name.actual_price
        -func_getfinalpurchaseprice(@pr_id));
      if @lastprice <> 0 and @lastprice is not null then
        set new_name.gross_profit = new_name.qty*(new_name.price
          -@lastprice-new_name.discount)
      end if end if;
    if new_name.inv_main_id = old_name.inv_main_id then
      update inv_main set cr = cr+new_name.qty-old_name.qty
        where inv_main_id = new_name.inv_main_id
    else
      //First delete, then insert
      update inv_main set cr = cr-old_name.qty
        where inv_main_id = old_name.inv_main_id;
      update inv_main set cr = cr+new_name.qty
        where inv_main_id = new_name.inv_main_id
    //set new_name.inv_main_id=@invmainid
    end if
  else set new_name.actual_profit
       = -new_name.qty*(new_name.actual_price
      -func_getfinalpurchaseprice(@pr_id));
    if @lastprice <> 0 and @lastprice is not null then
      set new_name.gross_profit = -new_name.qty*(new_name.price-@lastprice-new_name.discount)
    end if;
    if new_name.inv_main_id = old_name.inv_main_id then
      update inv_main set db = db+new_name.qty-old_name.qty
        where inv_main_id = new_name.inv_main_id
    else
      //First delete, then insert
      update inv_main set db = db-old_name.qty
        where inv_main_id = old_name.inv_main_id;
      update inv_main set db = db+new_name.qty
        where inv_main_id = new_name.inv_main_id
    //set new_name.inv_main_id=@invmainid
    end if
  end if
end
go

create trigger Dba.delete_details before delete order 1 on
DBA.Details
referencing old as old_name
for each row
begin
  call func_resetthistag(old_name.tag)
end
go

create trigger Dba.delete_godown_tran before delete order 1 on
DBA.godown_tran
referencing old as old_name
for each row
begin
  delete from godown_tran_product where tran_id = old_name.tran_id;
  if @@error <> 0 then
    raiserror 17036;
    return
  end if
end
go

create trigger Dba.update_godown_tran before update order 2 on
DBA.godown_tran
referencing old as old_name new as new_name
for each row
begin
  declare @dummy integer;
  if new_name.gw_id_to = old_name.gw_id_to and new_name.gw_id_from
     = old_name.gw_id_from then return
  end if; //otherwise first give delete effect for godown_tran_product,
  //then give insert effect for that.
  //first delete effect
  select pr_id,tp_id,tp_qty,tp_remarks,godown_tran_product.tran_id,old_name.gw_id_from into #temp1
    from godown_tran_product key join godown_tran
    where godown_tran_product.tran_id = old_name.tran_id;
  select pr_id,tp_id,tp_qty,tp_remarks,godown_tran_product.tran_id,old_name.gw_id_to into #temp2
    from godown_tran_product key join godown_tran
    where godown_tran_product.tran_id = old_name.tran_id;
  update inv_main join #temp1 on inv_main.pr_id = #temp1.pr_id
    and inv_main.gw_id = #temp1.gw_id_from set trf_cr = trf_cr-tp_qty;
  if @@error <> 0 then
    raiserror 17036;
    return
  end if;
  update inv_main join #temp2 on inv_main.pr_id = #temp2.pr_id
    and inv_main.gw_id = #temp2.gw_id_to set trf_db = trf_db-tp_qty;
  if @@error <> 0 then
    raiserror 17036;
    return
  end if;
  //now insert effect
  select pr_id,tp_id,tp_qty,tp_remarks,godown_tran_product.tran_id,new_name.gw_id_from into #temp1
    from godown_tran_product key join godown_tran
    where godown_tran_product.tran_id = old_name.tran_id;
  select pr_id,tp_id,tp_qty,tp_remarks,godown_tran_product.tran_id,new_name.gw_id_to into #temp2
    from godown_tran_product key join godown_tran
    where godown_tran_product.tran_id = old_name.tran_id;
  select func_addinvmain(gw_id_from,pr_id) into @dummy from #temp1;
  select func_addinvmain(gw_id_to,pr_id) into @dummy from #temp2;
  update inv_main join #temp1 on inv_main.pr_id = #temp1.pr_id
    and inv_main.gw_id = #temp1.gw_id_from set trf_cr = trf_cr+tp_qty;
  if @@error <> 0 then
    raiserror 17036;
    return
  end if;
  update inv_main join #temp2 on inv_main.pr_id = #temp2.pr_id
    and inv_main.gw_id = #temp2.gw_id_to set trf_db = trf_db+tp_qty;
  if @@error <> 0 then
    raiserror 17036;
    return
  end if
end
go

create trigger dba.update_cheque_receipt_after after update of acc_id,acc_id_cash_bank,cheq_amt,rec_date order 3 on
DBA.cheque_receipt
referencing old as old_name new as new_name
for each row
begin
  declare @classnew char(10);
  declare @classold char(10);
  declare @lret unsigned integer;
  select func_getclass(old_name.acc_id_cash_bank) into @classold;
  select func_getclass(new_name.acc_id_cash_bank) into @classnew;
  //updation of bank_recon etc is done in after update trigger
  //first delete effect
  if @classold = 'BANK' then
    if f_checkcleardate(old_name.cheq_id,6) = 0 then
      if old_name.cheq_amt <> new_name.cheq_amt then
        raiserror 17033;
        return
      end if end if;
    delete from bank_recon where doc_id = old_name.cheq_id and tran_type = 6
  elseif @classold = 'CASH' then //cash
    select func_addcashbook(old_name.acc_id_cash_bank,old_name.rec_date,-old_name.cheq_amt,0,-old_name.cheq_amt)
      into @lret end if;
  //now insert effect
  if @classnew = 'CASH' then
    select func_addcashbook(new_name.acc_id_cash_bank,new_name.rec_date,new_name.cheq_amt,0,new_name.cheq_amt)
      into @lret
  elseif @classnew = 'BANK' then
    insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
      ref_no,remarks,clear_date,doc_id,tran_type,cheq_no,acc_id,cleared,period ) 
      values( new_name.acc_id_cash_bank,new_name.rec_date,
      0,new_name.cheq_amt,new_name.ref_no,new_name.remarks,null,
      new_name.cheq_id,6,new_name.cheq_no,new_name.acc_id,1,'PE' ) 
  end if
end
go

create trigger Dba.update_auditlock_cheque_receipt after update of acc_id,acc_id_cash_bank,cheq_amt,rec_date order 4 on DBA.cheque_receipt
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id,old_name.acc_id_cash_bank,old_name.rec_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id,new_name.acc_id_cash_bank,new_name.rec_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.update_cheque_receipt before update of acc_id,acc_id_cash_bank,cheq_amt,rec_date order 2 on
DBA.cheque_receipt
referencing old as old_name new as new_name
for each row
begin
  declare @date date;
  if func_isvaliddate(new_name.rec_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if old_name.acc_id is null or old_name.acc_id_cash_bank is null
    or new_name.acc_id is null or new_name.acc_id_cash_bank is null then
    raiserror 17031;
    return
  end if;
  update acc_tran set amt = new_name.cheq_amt,
    acc_id_db = new_name.acc_id_cash_bank,
    acc_id_cr = new_name.acc_id
    where tran_type = 6 and doc_id = old_name.cheq_id
//updation of bank_recon etc is done in after update trigger
end
go

create trigger dba.delete_cheque_receipt before delete order 2 on
DBA.cheque_receipt
referencing old as old_name
for each row
begin
  declare @clear date;
  declare @class char(10);
  declare @lret unsigned integer;
  call func_checkauditlockdate(old_name.acc_id,old_name.acc_id_cash_bank,old_name.rec_date);
  if(@@error <> 0) then return end if;
  select func_getclass(old_name.acc_id_cash_bank) into @class;
  delete from acc_tran
    where tran_type = 6 and doc_id = old_name.cheq_id;
  if @class = 'CASH' then // update cashbook_summery
    select func_addcashbook(old_name.acc_id_cash_bank,old_name.rec_date,-old_name.cheq_amt,0,-old_name.cheq_amt)
      into @lret
  elseif @class = 'BANK' then
    if f_checkcleardate(old_name.cheq_id,6) = 0 then
      raiserror 17030;
      return
    end if;
    delete from bank_recon where tran_type = 6 and doc_id = old_name.cheq_id
  end if;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_cheque_receipt before insert order 1 on dba.cheque_receipt
referencing new as new_name
for each row
begin
  declare @class char(10);
  declare @lret unsigned integer;
  set new_name.adj_amt = 0.0;
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    set new_name.ref_no = func_getautonumber(6)
  end if;
  if func_isvaliddate(new_name.rec_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if new_name.ref_no = 'POST DATED' then set new_name.ref_no = func_getautonumber(7)
  end if;
  call func_checkauditlockdate(new_name.acc_id,new_name.acc_id_cash_bank,new_name.rec_date);
  if(@@error <> 0) then return end if;
  if NEW_NAME.ACC_ID is not null and new_name.acc_id_cash_bank is not null then
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.cheq_id,new_name.cheq_amt,6,new_name.acc_id_cash_bank,new_name.acc_id ) 
  end if;
  select func_getclass(new_name.acc_id_cash_bank) into @class;
  if @class is null then
    raiserror 17032;
    return
  end if;
  if @class = 'BANK' then
    // insert in bank book
    insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
      ref_no,remarks,clear_date,doc_id,tran_type,cheq_no,acc_id,cleared,period ) 
      values( new_name.acc_id_cash_bank,new_name.rec_date,
      0,new_name.cheq_amt,new_name.ref_no,new_name.remarks,null,
      new_name.cheq_id,6,new_name.cheq_no,new_name.acc_id,1,'PE' ) 
  elseif @class = 'CASH' then // insert into cashbook_summery
    select func_addcashbook(new_name.acc_id_cash_bank,new_name.rec_date,
      new_name.cheq_amt,0,new_name.cheq_amt)
      into @lret
  end if
end
go

create trigger Dba.update_auditlock_cheque_payment after update of acc_id,acc_id_bank,cheq_amt,
cheq_date order 4 on DBA.cheque_payment
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id,old_name.acc_id_bank,old_name.cheq_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id,new_name.acc_id_bank,new_name.cheq_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.update_cheque_payment_before before update of acc_id,acc_id_bank,cheq_amt,
cheq_date order 1 on
DBA.cheque_payment
referencing old as old_name new as new_name
for each row
begin
  if func_isvaliddate(new_name.cheq_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if f_checkcleardate(new_name.cheq_id,4) = 0 then
    if old_name.cheq_amt <> new_name.cheq_amt then
      raiserror 17006;
      return
    end if end if;
  if old_name.acc_id is null or old_name.acc_id_bank is null or new_name.acc_id is null
    or new_name.acc_id_bank is null then
    raiserror 17031;
    return
  end if;
  update acc_tran set amt = new_name.cheq_amt,
    acc_id_db = new_name.acc_id,
    acc_id_cr = new_name.acc_id_bank
    where tran_type = 4
    and doc_id = new_name.cheq_id
end
go

create trigger dba.update_cheque_payment_after after update of acc_id,acc_id_bank,cheq_amt,
cheq_date order 2 on
DBA.cheque_payment
referencing old as old_name new as new_name
for each row
begin
  declare @classnew char(10);
  declare @classold char(10);
  declare @lret integer;
  select func_getclass(old_name.acc_id_bank) into @classold;
  select func_getclass(new_name.acc_id_bank) into @classnew;
  //first delete effect
  if @classold = 'BANK' then
    delete from bank_recon where doc_id = old_name.cheq_id and tran_type = 4
  elseif @classold = 'CASH' then
    select func_addcashbook(old_name.acc_id_bank,old_name.cheq_date,0,-old_name.cheq_amt,0,-old_name.cheq_amt)
      into @lret end if;
  //now insert effect
  if @classnew = 'BANK' then
    insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
      ref_no,remarks,clear_date,doc_id,tran_type,cheq_no,acc_id,cleared,period ) 
      values( new_name.acc_id_bank,new_name.cheq_date,
      new_name.cheq_amt,0,new_name.ref_no,new_name.remarks,null,
      new_name.cheq_id,4,new_name.cheq_no,new_name.acc_id,1,'PE' ) 
  elseif @classnew = 'CASH' then
    select func_addcashbook(new_name.acc_id_bank,new_name.cheq_date,0,new_name.cheq_amt,0,new_name.cheq_amt)
      into @lret
  end if
end
go

create trigger DBA.delete_cheque_payment after delete order 2 on
DBA.cheque_payment
referencing old as old_name
for each row
begin
  declare @class char(10);
  declare @lret integer;
  call func_checkauditlockdate(old_name.acc_id_bank,old_name.acc_id,old_name.cheq_date);
  if(@@error <> 0) then return end if;
  select func_getclass(old_name.acc_id_bank) into @class;
  if @class = 'CASH' then //update cashbook_summery
    select func_addcashbook(old_name.acc_id_bank,old_name.cheq_date,0,-old_name.cheq_amt,0,-old_name.cheq_amt)
      into @lret
  elseif @class = 'BANK' then
    if f_checkcleardate(old_name.cheq_id,4) = 0 then
      raiserror 17030;
      return
    end if;
    delete from bank_recon where tran_type = 4
      and doc_id = old_name.cheq_id
  end if;
  delete from acc_tran
    where tran_type = 4 and doc_id = old_name.cheq_id;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_cheque_payment before insert order 1 on
DBA.cheque_payment
referencing new as new_name
for each row
begin
  declare @class char(10);
  declare @lret unsigned integer;
  set new_name.adj_amt = 0.0;
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    set new_name.ref_no = func_getautonumber(4)
  end if;
  call func_checkauditlockdate(new_name.acc_id_bank,new_name.acc_id,new_name.cheq_date);
  if(@@error <> 0) then return end if;
  if func_isvaliddate(new_name.cheq_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  select func_getclass(new_name.acc_id_bank) into @class;
  if @class is null or @class not in( 'CASH','BANK','CARD' ) then
    raiserror 17029;
    return
  end if;
  // insert in acc_tran
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.cheq_id,new_name.cheq_amt,4,new_name.acc_id,new_name.acc_id_bank ) ;
  if @class = 'BANK' then
    //insert in bank_book
    insert into bank_recon( acc_id_bank,credit_amt,debit_amt,doc_id,
      tran_date,tran_type,cheq_no,ref_no,remarks,period,acc_id,cleared ) 
      values( new_name.acc_id_bank,0,new_name.cheq_amt,new_name.cheq_id,
      new_name.cheq_date,4,new_name.cheq_no,new_name.ref_no,
      new_name.remarks,'PE',new_name.acc_id,1 )  // 4 = cheque payment
  elseif @class = 'CASH' then
    //update cash_book_summery
    select func_addcashbook(new_name.acc_id_bank,new_name.cheq_date,0,new_name.cheq_amt,0,new_name.cheq_amt)
      into @lret
  end if
end
go

create trigger Dba.delete_receipt_bill_memo before delete order 2 on
DBA.receipt_bill_memo
referencing old as old_name
for each row
begin
  update bill_memo set due_amt = due_amt+old_name.rec_amt
    where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17046;
    return
  end if
end
go

create trigger Dba.insert_receipt_bill_memo before insert order 1 on
DBA.receipt_bill_memo
referencing new as new_name
for each row
begin
  update bill_memo set due_amt = due_amt-new_name.rec_amt
    where bill_memo_id = new_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17046;
    return
  end if
end
go

create trigger Dba.update_receipt_bill_memo before update order 3 on
DBA.receipt_bill_memo
referencing old as old_name new as new_name
for each row
begin
  update bill_memo set due_amt = due_amt+old_name.rec_amt
    where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17046;
    return
  end if;
  update bill_memo set due_amt = due_amt-new_name.rec_amt
    where bill_memo_id = new_name.bill_memo_id
end
go

create trigger Dba.update_auditlock_cash_receipt after update of acc_id,acc_id_cash,amt,rec_date order 4 on DBA.cash_receipt
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id,old_name.acc_id_cash,old_name.rec_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id,new_name.acc_id_cash,new_name.rec_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.update_cash_receipt before update of rec_date,amt,acc_id,
acc_id_cash order 2 on
DBA.cash_receipt
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @classold char(10);
  declare @classnew char(10);
  if func_isvaliddate(new_name.rec_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  set @classold = func_getclass(old_name.acc_id_cash);
  set @classnew = func_getclass(new_name.acc_id_cash);
  if @classold is null or @classnew is null then
    raiserror 99999 'Error in Deposit to Code';
    return
  end if;
  update acc_tran set amt = new_name.amt,
    acc_id_db = new_name.acc_id_cash,acc_id_cr = new_name.acc_id
    where doc_id = new_name.cr_id and tran_type = 5
end
go

create trigger dba.update_cash_receipt_after after update of acc_id,acc_id_cash,amt,rec_date order 3 on
DBA.cash_receipt
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @classold char(10);
  declare @classnew char(10);
  set @classold = func_getclass(old_name.acc_id_cash);
  set @classnew = func_getclass(new_name.acc_id_cash);
  //first delete effect
  if @classold = 'CASH' then
    select func_addcashbook(old_name.acc_id_cash,old_name.rec_date,-old_name.amt,0)
      into @lret
  else delete from bank_recon where doc_id = new_name.cr_id and tran_type = 5
  end if;
  //now insert effect
  if @classnew = 'CASH' then
    select func_addcashbook(new_name.acc_id_cash,new_name.rec_date,new_name.amt,0)
      into @lret
  elseif @classnew = 'BANK' then
    insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
      ref_no,remarks,clear_date,doc_id,tran_type,cheq_no,acc_id,cleared,period ) 
      values( new_name.acc_id_cash,new_name.rec_date,
      0,new_name.amt,new_name.ref_no,new_name.remarks,new_name.rec_date,
      new_name.cr_id,5,'CASH',new_name.acc_id,0,'PE' ) ;
    if @@error <> 0 then
      raiserror 17028;
      return
    end if
  end if
end
go

create trigger dba.delete_cash_receipt before delete order 1 on
DBA.cash_receipt
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  call func_checkauditlockdate(old_name.acc_id_cash,old_name.acc_id,old_name.rec_date);
  if(@@error <> 0) then return end if;
  set @class = func_getclass(old_name.acc_id_cash);
  delete from acc_tran
    where tran_type = 5 and doc_id = old_name.cr_id;
  if @class = 'CASH' then //deposit in cash account to be reverse entry
    select func_addcashbook(old_name.acc_id_cash,old_name.rec_date,
      -old_name.amt,0)
      into @lret // deposit in bank account to be deleted
  elseif @class = 'BANK' then
    delete from bank_recon where doc_id = old_name.cr_id and tran_type = 5
  end if;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_cash_receipt before insert order 2 on
DBA.cash_receipt
referencing new as new_name
for each row
begin
  //cash can be deposited in cash account or in bank account
  declare @lret unsigned integer;
  declare @class char(10);
  set new_name.adj_amt = 0.0;
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    set new_name.ref_no = func_getautonumber(5)
  end if;
  call func_checkauditlockdate(new_name.acc_id_cash,new_name.acc_id,new_name.rec_date);
  if(@@error <> 0) then return end if;
  set @class = func_getclass(new_name.acc_id_cash);
  if @class is null then
    raiserror 17027;
    return
  end if;
  if func_isvaliddate(new_name.rec_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.cr_id,new_name.amt,5,new_name.acc_id_cash,new_name.acc_id ) ;
  if @class = 'CASH' then
    select func_addcashbook(new_name.acc_id_cash,new_name.rec_date,new_name.amt,0)
      into @lret //bank
  elseif @class = 'BANK' then
    insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
      ref_no,remarks,clear_date,doc_id,tran_type,cheq_no,acc_id,cleared,period ) 
      values( new_name.acc_id_cash,new_name.rec_date,
      0,new_name.amt,new_name.ref_no,new_name.remarks,new_name.rec_date,
      new_name.cr_id,5,'CASH',new_name.acc_id,0,'PE' ) ;
    if @@error <> 0 then
      raiserror 17028;
      return
    end if
  end if
end
go

create trigger dba.delete_journal before delete order 2 on
DBA.Journal
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  declare @jou_date date;
  select jou_date into @jou_date from journal_no where jou_no = old_name.jou_no;
  call func_checkauditlockdate(old_name.jou_acc_id,null,@jou_date);
  if(@@error <> 0) then return end if;
  delete from acc_tran
    where tran_type = 7 and doc_id = old_name.jou_id;
  // This function does all delete work in cashbook_summery and bank_book
  select f_deleteeffect(old_name.jou_acc_id,old_name.jou_no,
    old_name.jou_db_cr,old_name.jou_amt,old_name.jou_id,7) into @lret;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_journal before insert order 1 on
DBA.Journal
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  declare @mdate date;
  declare @jou_date date;
  declare @jou_no unsigned integer;
  set @jou_no = new_name.jou_no;
  select jou_date into @jou_date from journal_no where jou_no = new_name.jou_no;
  call func_checkauditlockdate(new_name.jou_acc_id,null,@jou_date);
  if(@@error <> 0) then return end if;
  select func_getclass(new_name.jou_acc_id) into @class;
  set new_name.adj_amt = 0.0;
  if(@class = 'CASH' or @class = 'BANK') then
    raiserror 99999 'Cash / Bank Transactions not allowed';
    return
  end if;
  if new_name.jou_db_cr = 'D' then
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.jou_id,new_name.jou_amt,7,new_name.jou_acc_id,null ) 
  else // credit
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.jou_id,new_name.jou_amt,7,null,new_name.jou_acc_id ) 
  end if
end
go

create trigger dba.update_journal before update order 3 on
DBA.Journal
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @class char(10);
  declare @jou_no unsigned integer;
  declare @jou_amt T_money;
  declare @debit T_money;
  declare @credit T_money;
  declare @jou_date date;
  select jou_date into @jou_date from journal_no where jou_no = old_name.jou_no;
  call func_checkauditlockdate(old_name.jou_acc_id,null,@jou_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.jou_acc_id,null,@jou_date);
  if(@@error <> 0) then return end if;
  select func_getclass(new_name.jou_acc_id) into @class;
  if(@class = 'CASH' or @class = 'BANK') then
    raiserror 17041 'Cash / Bank Transactions not allowed';
    return
  end if;
  if old_name.jou_acc_id = new_name.jou_acc_id and old_name.jou_db_cr
     = new_name.jou_db_cr then
    update acc_tran set amt = new_name.jou_amt
      where tran_type = 7 and doc_id = old_name.jou_id
  else
    // delete then insert
    delete from acc_tran
      where tran_type = 7 and doc_id = old_name.jou_id;
    if new_name.jou_db_cr = 'D' then
      insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
        values( new_name.jou_id,new_name.jou_amt,7,new_name.jou_acc_id,null ) 
    else
      insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
        values( new_name.jou_id,new_name.jou_amt,7,null,new_name.jou_acc_id ) 
    end if
  end if
end
go

create trigger Dba.delete_journal_no before delete order 3 on
DBA.journal_no
referencing old as old_name
for each row
begin
  delete from journal where jou_no = old_name.jou_no
end
go

create trigger dba.insert_journal_no before insert order 1 on
DBA.journal_no
referencing new as new_name
for each row
begin
  if func_isvaliddate(new_name.jou_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if new_name.ref_no is null then
    set new_name.ref_no = func_getautonumber(7)
  end if
end
go

create trigger dba.update_journal_no before update order 2 on
DBA.journal_no
referencing old as old_name new as new_name
for each row
begin
  declare @lret integer;
  if func_isvaliddate(new_name.jou_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if old_name.jou_date = new_name.jou_date then
    return
  else
    select check_update(new_name.jou_no) into @lret;
    if @lret = 1 then
      raiserror 17042
    end if
  end if
end
go

create trigger dba.update_debit_credit_note before update of acc_id_cr,acc_id_db,dc_amt,dc_date order 3 on
DBA.Debit_credit_note
referencing old as old_name new as new_name
for each row
begin
  if func_isvaliddate(new_name.dc_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  update acc_tran set acc_id_db = new_name.acc_id_db,
    acc_id_cr = new_name.acc_id_cr,
    amt = new_name.dc_amt where tran_type = 8 and doc_id = new_name.dc_id
end
go

create trigger Dba.update_auditlock_debit_credit_note after update of acc_id_cr,acc_id_db,dc_amt,dc_date order 4 on DBA.debit_credit_note
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.dc_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.dc_date);
  if(@@error <> 0) then return end if
end
go

create trigger
//debit credit note
dba.delete_debit_credit_note before delete order 2 on
DBA.Debit_credit_note
referencing old as old_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.dc_date);
  if(@@error <> 0) then return end if;
  delete from acc_tran
    where tran_type = 8 and doc_id = old_name.dc_id;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_debit_credit_note before insert order 1 on
DBA.Debit_credit_note
referencing new as new_name
for each row
begin
  declare @dcno integer;
  set new_name.adj_amt = 0.0;
  if new_name.ref_no is null or trim(new_name.ref_no) = '' then
    if func_getclass(new_name.acc_id_cr) = 'PURCHASE' then //debit note 108
      set new_name.ref_no = func_getautonumber(108)
    else //credit note
      set new_name.ref_no = func_getautonumber(109)
    end if end if;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.dc_date);
  if(@@error <> 0) then return end if;
  if func_isvaliddate(new_name.dc_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.dc_id,new_name.dc_amt,8,new_name.acc_id_db,new_name.acc_id_cr ) 
end
go

create trigger Dba.update_auditlock_contra_entries after update of acc_id_cr,acc_id_db,contra_amt,contra_date order 4 on DBA.contra_entries
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.contra_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.contra_date);
  if(@@error <> 0) then return end if
end
go

create trigger
//contra_entries
dba.delete_contra_entries after delete order 2 on
DBA.contra_entries
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  //effect on bank_book and cashbook_summery
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.contra_date);
  if(@@error <> 0) then return end if;
  delete from acc_tran where tran_type = 9 and doc_id = old_name.contra_id;
  select f_deletecontra(old_name.contra_id,old_name.acc_id_db,
    old_name.acc_id_cr,old_name.contra_date,old_name.contra_amt,old_name.cheq_no) into @lret from dummy
end
go

create trigger dba.insert_contra_entries before insert order 1 on
DBA.contra_entries
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  if func_isvaliddate(new_name.contra_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.contra_date);
  if(@@error <> 0) then return end if;
  if new_name.ref_no is null then set new_name.ref_no = func_getautonumber(9)
  end if;
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.contra_id,new_name.contra_amt,9,new_name.acc_id_db,new_name.acc_id_cr ) ;
  select f_insertcontra(new_name.cheq_no,new_name.contra_id,
    new_name.acc_id_db,new_name.acc_id_cr,new_name.contra_date,
    new_name.contra_amt,new_name.ref_no,new_name.remarks)
    into @lret
end
go

create trigger dba.update_contra_entries after update order 3 on
DBA.contra_entries
referencing old as old_name new as new_name
for each row
begin
  declare @status char(10);
  declare @date date;
  declare @debitamt T_money;
  declare @lret integer;
  declare @classdb char(10);
  declare @classcr char(10);
  declare @oldamt T_money;
  declare @newamt T_money;
  set @oldamt = 0.0;
  set @newamt = 0.0;
  if func_isvaliddate(new_name.contra_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  if trim(old_name.cheq_no) = '' or old_name.cheq_no is null
    or old_name.cheq_no = 'CASH' then
    set @oldamt = 0.0
  else
    set @oldamt = old_name.contra_amt
  end if;
  if trim(new_name.cheq_no) = '' or new_name.cheq_no is null
    or new_name.cheq_no = 'CASH' then
    set @newamt = 0.0
  else
    set @newamt = new_name.contra_amt
  end if;
  update acc_tran set amt = new_name.contra_amt,
    acc_id_db = new_name.acc_id_db,
    acc_id_cr = new_name.acc_id_cr
    where tran_type = 9 and doc_id = old_name.contra_id;
  // now delete effect on cashbook_summery and bank_book
  if f_checkcleardate(old_name.contra_id,9) = 0 then
    raiserror 17006;
    return
  end if;
  if old_name.contra_amt = new_name.contra_amt
    and old_name.acc_id_db = new_name.acc_id_db
    and old_name.acc_id_cr = new_name.acc_id_cr
    and old_name.contra_date = new_name.contra_date and old_name.cheq_no
     = new_name.cheq_no then //no need to do anything in cashbook_summery
    update bank_recon
      set ref_no = new_name.ref_no,
      remarks = new_name.remarks
      where doc_id = old_name.contra_id and tran_type = 9;
    return
  end if;
  if old_name.acc_id_db = new_name.acc_id_db
    and old_name.acc_id_cr = new_name.acc_id_cr then
    // may be difference in date or amount or cheq_no field
    // update cash_book and bank_recon
    select func_getclass(old_name.acc_id_db) into @classdb;
    select func_getclass(old_name.acc_id_cr) into @classcr;
    //if cash to cash transfer, cheque to cash update
    if @classdb = 'CASH' and old_name.acc_id_db = old_name.acc_id_cr then
      select func_addcashbook(old_name.acc_id_db,old_name.contra_date,
        -old_name.contra_amt,-OLD_name.contra_amt,0,-@oldamt) into @lret;
      select func_addcashbook(old_name.acc_id_db,new_name.contra_date,
        new_name.contra_amt,new_name.contra_amt,0,@newamt) into @lret;
      return
    end if;
    if @classdb = 'BANK' then
      update bank_recon
        set cheq_no = new_name.cheq_no,
        ref_no = new_name.ref_no,
        remarks = new_name.remarks,
        tran_date = new_name.contra_date,
        credit_amt = new_name.contra_amt
        where doc_id = old_name.contra_id and tran_type = 9
        and acc_id_bank = old_name.acc_id_db
    else //cash
      select func_addcashbook(old_name.acc_id_db,
        old_name.contra_date,-old_name.contra_amt,0,-@oldamt,0) into @lret;
      select func_addcashbook(new_name.acc_id_db,
        new_name.contra_date,new_name.contra_amt,0,@newamt,0)
        into @lret end if;
    if @classcr = 'BANK' then
      update bank_recon
        set cheq_no = new_name.cheq_no,
        ref_no = new_name.ref_no,
        remarks = new_name.remarks,
        tran_date = new_name.contra_date,
        debit_amt = new_name.contra_amt
        where doc_id = old_name.contra_id and tran_type = 9
        and acc_id_bank = old_name.acc_id_cr
    else
      select func_addcashbook(new_name.acc_id_cr,
        old_name.contra_date,0,-OLD_name.contra_amt,0,-@oldamt) into @lret;
      select func_addcashbook(new_name.acc_id_cr,
        new_name.contra_date,0,new_name.contra_amt,0,@newamt)
        into @lret end if;
    return
  end if;
  //otherwise difference in acc_id_db or acc_id _cr
  raiserror 17034;
  return
end
go

create trigger dba.insert_cashbook_summery before insert order 1 on
DBA.cashbook_summery
referencing new as new_name
for each row
begin
  if new_name.cs_credit_cheque is null then set new_name.cs_credit_cheque = 0
  end if;
  if new_name.cs_debit_cheque is null then set new_name.cs_debit_cheque = 0
  end if
end
go

create trigger dba.update_cashbook_summery before update order 2 on
DBA.cashbook_summery
referencing old as old_name new as new_name
for each row
begin if new_name.cs_credit_cheque is null then set new_name.cs_credit_cheque = 0
  end if;
  if new_name.cs_debit_cheque is null then set new_name.cs_debit_cheque = 0
  end if
end
go

create trigger dba.WebAddTemplate on dba.WebTemplate for insert as
begin
  if @@rowcount = 0 return
  /* Fix up my location */
  update WebTemplate as NewOne
    set Location = lower(ltrim(parent.Location+'/'+parent.Name)) from
    WebTemplate as parent
    where NewOne.ParentId = parent.Id
    and NewOne.Id = any(select Id from inserted)
  execute WebChanged
end
go

create trigger dba.WebChangeTemplate on dba.WebTemplate for update as
begin
  if @@rowcount = 0 return
  set self_recursion on
  if update(Name) or update(Location) begin
      /* Change locations pointers in any children */
      update WebTemplate
        set Location = lower(ltrim(inserted.Location+'/'+inserted.Name)) from
        inserted
        where WebTemplate.ParentId = inserted.Id
    end
  if update(ParentId) begin
      /* Change locations pointers here */
      /* Recursive triggers will fix the rest */
      update WebTemplate as NewOne
        set Location = lower(ltrim(parent.Location+'/'+parent.Name)) from
        WebTemplate as parent
        where NewOne.ParentId = parent.Id
        and NewOne.Id = any(select Id from inserted)
    end
  execute WebChanged
end
go

create trigger dba.WebDataChange on dba.WebData for insert,delete,update as
begin
  execute WebChanged
end
go

create trigger dba.update_expence before update of exp_date,exp_amt,
acc_id_exp,acc_id order 2 on
DBA.Expence
referencing old as old_name new as new_name
for each row
begin
  if func_isvaliddate(new_name.exp_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  update acc_tran
    set amt = new_name.exp_amt,
    acc_id_db = new_name.acc_id_exp,
    acc_id_cr = new_name.acc_id
    where acc_tran.doc_id = old_name.exp_id
    and tran_type = 10
end
go

create trigger dba.delete_expence before delete order 3 on
DBA.Expence
referencing old as old_name
for each row
begin
  delete from acc_tran where tran_type = 10 and doc_id = old_name.exp_id;
  call func_resetthistag(old_name.tag)
end
go

create trigger dba.insert_before_expence before insert order 1 on
DBA.Expence
referencing new as new_name
for each row
begin
  set new_name.adj_amt = 0;
  if func_isvaliddate(new_name.exp_date) = 'N' then
    raiserror 17115 'Invalid date';
    return
  end if;
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.exp_id,new_name.exp_amt,10,new_name.acc_id_exp,new_name.acc_id ) 
end
go

create trigger Dba.update_auditlock_cash_bank_journal after update of acc_id_cr,acc_id_db,cb_amt,cb_date order 4 on DBA.cash_bank_journal
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.cb_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.cb_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.delete_cash_bank_journal after delete order 2 on
DBA.cash_bank_journal
referencing old as old_name
for each row
begin
  declare @lret unsigned integer;
  call func_checkauditlockdate(old_name.acc_id_db,old_name.acc_id_cr,old_name.cb_date);
  if(@@error <> 0) then return end if;
  //effect on bank_book and cashbook_summery
  select f_deletecash_bank_journal(old_name.cb_id,old_name.acc_id_db,
    old_name.acc_id_cr,old_name.cb_date,old_name.cb_amt) into @lret;
  delete from acc_tran where tran_type = 11 and doc_id = old_name.cb_id
end
go

create trigger dba.insert_cash_bank_journal before insert order 1 on
DBA.cash_bank_journal
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  call func_checkauditlockdate(new_name.acc_id_db,new_name.acc_id_cr,new_name.cb_date);
  if(@@error <> 0) then return end if;
  insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
    values( new_name.cb_id,new_name.cb_amt,11,new_name.acc_id_db,new_name.acc_id_cr ) ;
  select f_insertcash_bank_journal(new_name.cb_cheqno,new_name.cb_id,
    new_name.acc_id_db,new_name.acc_id_cr,new_name.cb_date,
    new_name.cb_amt,new_name.cb_refno,new_name.cb_remarks)
    into @lret
end
go

create trigger dba.update_cash_bank_journal after update order 3 on
DBA.cash_bank_journal
referencing old as old_name new as new_name
for each row
begin
  declare @status char(10);
  declare @date date;
  declare @debitamt T_money;
  declare @lret integer;
  declare @classdb char(10);
  declare @classcr char(10);
  declare @oldcheqno char(20);
  declare @newcheqno char(20);
  declare @oldamt T_money;
  declare @newamt T_money;
  set @newamt = 0;
  set @oldamt = 0;
  if trim(new_name.cb_cheqno) = '' or new_name.cb_cheqno is null or trim(new_name.cb_cheqno) = 'CASH' then
    set new_name.cb_cheqno = 'CASH'
  else // cheque
    set @newamt = new_name.cb_amt
  end if;
  if trim(old_name.cb_cheqno) = '' or old_name.cb_cheqno is null or trim(old_name.cb_cheqno) = 'CASH' then set
      old_name.cb_cheqno = 'CASH'
  else
    set @oldamt = old_name.cb_amt
  end if;
  update acc_tran set amt = new_name.cb_amt,
    acc_id_db = new_name.acc_id_db,
    acc_id_cr = new_name.acc_id_cr
    where tran_type = 11 and doc_id = old_name.cb_id;
  // now delete effect on cashbook_summery and bank_book
  if f_checkcleardate(old_name.cb_id,11) = 0 then
    raiserror 99999 'This Cheque is already cleared';
    return
  end if;
  if old_name.cb_date = new_name.cb_date
    and old_name.cb_amt = new_name.cb_amt
    and old_name.acc_id_db = new_name.acc_id_db
    and old_name.acc_id_cr = new_name.acc_id_cr then
    update bank_recon set cheq_no = new_name.cb_cheqno,ref_no
       = new_name.cb_refno,remarks = new_name.cb_remarks
      where doc_id = old_name.cb_id and tran_type = 11;
    return
  end if;
  if old_name.acc_id_db = new_name.acc_id_db
    and old_name.acc_id_cr = new_name.acc_id_cr then
    // may be difference in date or amount field
    // update cash_book and bank_recon
    select func_getclass(old_name.acc_id_db) into @classdb;
    select func_getclass(old_name.acc_id_cr) into @classcr;
    if @classdb = 'BANK' then
      update bank_recon
        set cheq_no = new_name.cb_cheqno,
        ref_no = new_name.cb_refno,
        remarks = new_name.cb_remarks,
        tran_date = new_name.cb_date,
        credit_amt = new_name.cb_amt
        where doc_id = old_name.cb_id and tran_type = 11
        and acc_id_bank = old_name.acc_id_db
    else //cash
      select func_addcashbook(old_name.acc_id_db,
        old_name.cb_date,-old_name.cb_amt,0,-@oldamt,0)
        into @lret end if;
    select func_addcashbook(new_name.acc_id_db,
      new_name.cb_date,new_name.cb_amt,0,@newamt,0) into @lret;
    if @classcr = 'BANK' then
      update bank_recon
        set cheq_no = new_name.cb_cheqno,
        ref_no = new_name.cb_refno,
        remarks = new_name.cb_remarks,
        tran_date = new_name.cb_date,
        debit_amt = new_name.cb_amt
        where doc_id = old_name.cb_id and tran_type = 11
        and acc_id_bank = old_name.acc_id_cr
    else
      select func_addcashbook(old_name.acc_id_cr,
        old_name.cb_date,0,-old_name.cb_amt,0,-@oldamt)
        into @lret end if;
    select func_addcashbook(new_name.acc_id_cr,
      new_name.cb_date,0,new_name.cb_amt,0,@newamt) into @lret;
    return
  end if;
  raiserror 17025
end
go

create trigger dba.up_bank_recon_before before update of clear_date
order 3 on DBA.bank_recon
referencing old as old_name new as new_name
for each row
begin
  if new_name.tran_type = 15 then
    if isnull(old_name.cheq_no,'',old_name.cheq_no) <> isnull(new_name.cheq_no,'',new_name.cheq_no)
      or isnull(old_name.ref_no,'',old_name.ref_no) <> isnull(new_name.ref_no,'',new_name.ref_no)
      or isnull(old_name.remarks,'',old_name.remarks) <> isnull(new_name.remarks,'',new_name.remarks)
      or old_name.tran_date <> new_name.tran_date
      or old_name.acc_id <> new_name.acc_id
      or old_name.debit_amt <> new_name.debit_amt
      or old_name.credit_amt <> new_name.credit_amt then
      raiserror 99999 'Cannot modify sales voucher entries from here. &\x0D\x0A        use sales voucher to modify this transaction';
      return
    end if end if;
  if new_name.clear_date is null then
    set new_name.cleared = 1
  else
    set new_name.cleared = 0
  end if;
  if new_name.debit_amt <> 0 and new_name.credit_amt <> 0 then
    raiserror 17007
  end if
end
go

create trigger dba.DELETE_BANK_RECON_before before delete order 5 on
DBA.bank_recon
referencing old as old_name
for each row
begin
  declare @clearcheque char(1);
  select allow_clearbankrecon into @clearcheque from acc_setup;
  if @clearcheque is null then set @clearcheque = 'N'
  end if;
  if @clearcheque = 'Y' then return
  end if;
  if old_name.clear_date is not null then
    raiserror 17006;
    return
  end if
end
go

create trigger dba.DELETE_BANK_RECON after delete order 4 on
DBA.bank_recon
referencing old as old_name
for each row
begin
  if func_checklockdate(old_name.acc_id_bank,old_name.clear_date) = 1 then
    raiserror 17005
  end if
end
go

create trigger dba.insert_bank_recon_before before insert order 4 on
DBA.bank_recon
referencing new as new_name
for each row
begin
  //0=cleared,1=not cleared
  if new_name.clear_date is null then set new_name.cleared = 1
  else set new_name.cleared = 0
  end if
end
go

create trigger dba.insert_bank_recon after insert order 2 on
DBA.bank_recon
referencing new as new_name
for each row
begin
  //0=cleared,1=not cleared
  if new_name.debit_amt <> 0 and new_name.credit_amt <> 0 then
    raiserror 17007
  end if;
  if func_checklockdate(new_name.acc_id_bank,new_name.clear_date) = 1 then
    raiserror 17005
  end if
end
go

create trigger dba.update_bank_recon after update order 1 on
DBA.bank_recon
referencing old as old_name new as new_name
for each row
begin
  declare @amt T_money;
  // to avoid infinite loops
  if func_checklockdate(new_name.acc_id_bank,new_name.clear_date) = 1 then
    raiserror 17005
  end if;
  if old_name.acc_id_bank = new_name.acc_id_bank
    and old_name.tran_date = new_name.tran_date
    and old_name.debit_amt = new_name.debit_amt
    and old_name.credit_amt = new_name.credit_amt
    and old_name.ref_no = new_name.ref_no
    and old_name.remarks = new_name.remarks
    and old_name.cheq_no = new_name.cheq_no
    and old_name.acc_id = new_name.acc_id then
    return
  end if;
  case new_name.tran_type
  when 4 then //cheque payment 
    update cheque_payment
      set cheq_no = new_name.cheq_no,
      cheq_date = new_name.tran_date,
      ref_no = new_name.ref_no,
      acc_id = new_name.acc_id,
      cheq_amt = new_name.debit_amt,
      remarks = new_name.remarks
      where cheque_payment.cheq_id = old_name.doc_id
  when 5 then //cash receipt in bank
    update cash_receipt
      set rec_date = new_name.tran_date,
      amt = new_name.credit_amt,
      acc_id = new_name.acc_id,
      ref_no = new_name.ref_no,
      remarks = new_name.remarks
      where cr_id = old_name.doc_id
  when 6 then //cheque receipt
    update cheque_receipt
      set cheq_no = new_name.cheq_no,
      rec_date = new_name.tran_date,
      cheq_amt = new_name.credit_amt,
      acc_id = new_name.acc_id,
      ref_no = new_name.ref_no,
      remarks = new_name.remarks
      where cheq_id = old_name.doc_id
  when 9 then // contra, change of acc_id not allowed
    if(old_name.acc_id = new_name.acc_id) then
      if f_checkzero(old_name.debit_amt,old_name.credit_amt,
        new_name.debit_amt,new_name.credit_amt) = 0 then // checks if debit is not updated to credit
        if old_name.debit_amt > 0 then
          // contra
          update contra_entries set ref_no = new_name.ref_no,
            cheq_no = new_name.cheq_no,
            contra_date = new_name.tran_date,
            remarks = new_name.remarks,
            contra_amt = new_name.debit_amt
            where contra_id = new_name.doc_id
        else
          update contra_entries set ref_no = new_name.ref_no,
            cheq_no = new_name.cheq_no,
            contra_date = new_name.tran_date,
            remarks = new_name.remarks,
            contra_amt = new_name.credit_amt
            where contra_id = new_name.doc_id
        end if
      else raiserror 17009 'You cannot change debit entries to credit entries'
      end if
    else raiserror 17010 'Use Contra entries to perform this transaction'
    end if when 11 then
    if(old_name.acc_id = new_name.acc_id) then
      if f_checkzero(old_name.debit_amt,old_name.credit_amt,
        new_name.debit_amt,new_name.credit_amt) = 0 then // checks if debit is not updated to credit
        if old_name.debit_amt > 0 then
          // cash_bank_journal
          update cash_bank_journal set cb_refno = new_name.ref_no,
            cb_cheqno = new_name.cheq_no,
            cb_date = new_name.tran_date,
            cb_remarks = new_name.remarks,
            cb_amt = new_name.debit_amt
            where cb_id = new_name.doc_id
        else
          update cash_bank_journal set cb_refno = new_name.ref_no,
            cb_cheqno = new_name.cheq_no,
            cb_date = new_name.tran_date,
            cb_remarks = new_name.remarks,
            cb_amt = new_name.credit_amt
            where cb_id = new_name.doc_id
        end if
      else raiserror 17009 'You cannot change debit entries to credit entries'
      end if
    else raiserror 17011 'Use cash bank Journal to perform this transaction'
    end if when 13 then
    //if f_checkzero(old_name.debit_amt,old_name.credit_amt,
    //new_name.debit_amt,new_name.credit_amt) = 0 then // checks if debit is not updated to credit
    if new_name.debit_amt > 0 then
      update bank_balances set bb_opbalance = -new_name.debit_amt
        where bb_id = old_name.doc_id
    elseif new_name.credit_amt > 0 then
      update bank_balances set bb_opbalance = new_name.credit_amt
        where bb_id = old_name.doc_id
    //else
    //raiserror 99999 'You cannot change debit entries to credit entries'
    //end if
    end if when 14 then // entry in bill_memo_cheque_details
    select cheq_amt into @amt from bill_memo_cheque_details
      where bcd_id = old_name.doc_id;
    if @amt <> if new_name.debit_amt = 0 then new_name.credit_amt else new_name.debit_amt endif then
      //or new_name.acc_id <> old_name.acc_id 
      raiserror 17012 'Use Sales Transactions to do this operation';
      return
    else
      update bill_memo_cheque_details
        set cheq_no = new_name.cheq_no,
        cheq_date = new_name.tran_date,
        ref_no = new_name.ref_no
        where bcd_id = new_name.doc_id;
      if @@error <> 0 then
        raiserror 17003 'Could not update Sales transaction';
        return
      end if
    end if
  end case
end
go

create trigger dba.delete_bank_balances after delete order 2 on
DBA.bank_balances
referencing old as old_name
for each row
begin
  delete from bank_recon
    where tran_type = 13 and doc_id = old_name.bb_id
end
go

create trigger dba.insert_bank_balances before insert order 1 on
DBA.bank_balances
referencing new as new_name
for each row
begin
  declare @opdate date;
  declare @dbamt T_money;
  declare @cramt T_money;
  declare @month tinyint;
  declare @year smallint;
  if new_name.bb_opbalance < 0 then
    set @dbamt = abs(new_name.bb_opbalance);
    set @cramt = 0.0
  else
    set @cramt = abs(new_name.bb_opbalance);
    set @dbamt = 0.0
  end if;
  select startdate into @opdate from acc_setup;
  if @opdate is null then
    set @opdate = getdate();
    set @month = datepart(month,@opdate);
    set @year = datepart(year,@opdate);
    if @month in( 1,2,3 ) then
      set @year = @year-1
    end if;
    set @opdate = "date"(string(@year,'-',4,'-',1))
  end if;
  insert into bank_recon( acc_id_bank,tran_date,debit_amt,credit_amt,
    ref_no,remarks,clear_date,period,doc_id,tran_type,cleared ) 
    values( new_name.acc_id_bank,@opdate,@dbamt,@cramt,'Opening Balance','Opening Balance for this Year',
    @opdate,'OP',new_name.bb_id,13,0 ) ;
  if @@error <> 0 then
    raiserror 99999 'Could not insert in bank recon'
  end if
end
go

create trigger dba.update_bank_balances after update order 1 on
DBA.bank_balances
referencing old as old_name new as new_name
for each row
begin
  declare @opdate date;
  declare @dbamt T_money;
  declare @cramt T_money;
  if new_name.bb_opbalance < 0 then
    set @dbamt = abs(new_name.bb_opbalance);
    set @cramt = 0.0
  else
    set @cramt = abs(new_name.bb_opbalance);
    set @dbamt = 0.0
  end if;
  select startdate into @opdate from acc_setup;
  if @opdate is null then
    set @opdate = getdate()
  end if;
  update bank_recon set acc_id_bank = new_name.acc_id_bank,
    debit_amt = @dbamt,
    credit_amt = @cramt
    where tran_type = 13 and doc_id = old_name.bb_id
end
go

create trigger dba.update_level after update of bs_level
order 1 on DBA.bs_temp
referencing old as old_name new as new_name
for each row
begin
  //bs_level is used for display purpose in balance sheet / Profut loss a/c
  update bs_temp set bs_level = new_name.bs_level+1
    where bs_parent = new_name.bs_acc_id
end
go

create trigger dba.insert_bs_temp before insert order 1 on
DBA.bs_temp
referencing new as new_name
for each row
begin
  //inserts all the child account codes in bs_temp table. Recursive
  insert into bs_temp( bs_code,bs_name,bs_balance,bs_parent,
    bs_level,bs_acc_id,bs_sign ) 
    select acc_code,acc_name,(acc_opbal+acc_db-acc_cr),
      acc_parent,null,acc_id,new_name.bs_sign from acc_main_temp
      where(acc_opbal+acc_db-acc_cr) <> 0
      and new_name.bs_acc_id = acc_main_temp.acc_parent
end
go

create trigger dba.insert_accid before insert order 1 on
DBA.temp_accid
referencing new as new_name
for each row
begin
  declare @accid unsigned integer;
  declare @acc_opbal T_money;
  declare @acc_db T_money;
  declare @acc_cr T_money;
  if func_getroot(new_name.accid) in( 'Y','S' ) then
    if not exists(select accid from temp1_accid
        where accid = new_name.accid) then
      select acc_opbal,acc_db,acc_cr into @acc_opbal,
        @acc_db,@acc_cr from acc_main where acc_id = new_name.accid;
      if not(@acc_opbal = 0 and @acc_db = 0 and @acc_cr = 0) then
        insert into temp1_accid( accid ) values( new_name.accid ) 
      end if
    end if
  else //include all child acc codes
    insert into temp_accid( accid ) 
      select acc_id from acc_main where acc_parent = new_name.accid
  end if
end
go

create trigger dba.delete_bill_memo_cheque_details before delete order 3 on
DBA.bill_memo_cheque_details
referencing old as old_name
for each row
begin
  //this table is used only for cash memos i.e bill_memo = 'M'
  declare @lret integer;
  declare @class char(10);
  declare @date date;
  declare @accid unsigned integer;
  declare @type char(1);
  select acc_id,trim(func_getclass(acc_id)),"date",type into @accid,
    @class,@date,@type from bill_memo where bill_memo_id = old_name.bill_memo_id;
  if @type = 'S' then //sale delete  
    if @class = 'CASH' then //cash sale delete
      select func_addcashbook(@accid,@date,0,0,-old_name.cheq_amt,0)
        into @lret
    elseif @class = 'BANK' then
      select f_deletefrombankbook(old_name.bcd_id,14)
        into @lret
    end if
  else // sale return
    if @class = 'CASH' then
      select func_addcashbook(@accid,@date,0,0,0,-old_name.cheq_amt)
    elseif @class = 'BANK' then
      select f_deletefrombankbook(old_name.bcd_id,14)
        into @lret
    end if
  end if
end
go

create trigger dba.delete_bill_memo_cheque_details_after after delete order 5 on
DBA.bill_memo_cheque_details
referencing old as old_name
for each row
begin
  //this table is used only for cash memos i.e bill_memo = 'M'
  declare @lret integer;
  declare @cnt unsigned integer;
  declare @class char(10);
  declare @total_amt T_money;
  declare @date date;
  declare @accid unsigned integer;
  declare @ref_no char(15);
  declare @remarks varchar(40);
  declare @type char(1);
  declare @saletaxsaleid unsigned integer;
  select acc_id,trim(func_getclass(acc_id)),"date",type,total_amt,
    ref_no,descr,sale_tax_sale_id into @accid,
    @class,@date,@type,@total_amt,@ref_no,@remarks,@saletaxsaleid from bill_memo where bill_memo_id = old_name.bill_memo_id;
  if @type = 'S' then //sale delete  
    //if there is no other row in bill_memo_cheque_details for old_name.bill_memo_id
    //insert the cash entry
    if @class = 'BANK' then
      select count(bill_memo_id)
        into @cnt from bill_memo_cheque_details where bill_memo_id = old_name.bill_memo_id;
      if @cnt is null or @cnt = 0 then
        //insert in bank_recon the cash entry
        select f_insertintobankbook(@accid,@date,@total_amt,0,@ref_no,
          @remarks,@date,'PE',old_name.bill_memo_id,2,null,@saletaxsaleid,0)
          into @lret
      end if
    end if
  else // sale return
    //if there is no other row in bill_memo_cheque_details for old_name.bill_memo_id
    //insert the cash entry
    if @class = 'BANK' then
      select count(bill_memo_id)
        into @cnt from bill_memo_cheque_details where bill_memo_id = old_name.bill_memo_id;
      if @cnt is null or @cnt = 0 then
        //insert in bank_recon the cash entry
        select f_insertintobankbook(@accid,@date,0,@total_amt,@ref_no,
          @remarks,@date,'PE',old_name.bill_memo_id,2,null,@saletaxsaleid,0)
          into @lret
      end if
    end if
  end if
end
go

create trigger dba.insert_bill_memo_cheque_details before insert order 1 on
DBA.bill_memo_cheque_details
referencing new as new_name
for each row
begin
  declare @br_id unsigned integer;
  declare @lret integer;
  declare @class char(10);
  declare @date date;
  declare @type char(1);
  declare @accid unsigned integer;
  declare @saletaxsaleid unsigned integer;
  declare @ref_no varchar(30);
  select trim(func_getclass(acc_id)),"date",type,acc_id,sale_tax_sale_id,ref_no into @class,
    @date,@type,@accid,@saletaxsaleid,@ref_no from bill_memo
    where bill_memo_id = new_name.bill_memo_id;
  select br_id into @br_id from bank_recon where tran_type = 2 and doc_id = new_name.bill_memo_id;
  if @type = 'S' then //sales
    if @class = 'CASH' then //cash sales
      //only add in cs_debit_cheque because cs_debit already updated
      //by bill_memo triggers
      select func_addcashbook(@accid,@date,0,0,new_name.cheq_amt,0)
        into @lret
    elseif @class = 'BANK' then
      //first delete from bank_recon the entry for cash from bill_memo table
      if @br_id is not null then
        update bank_recon set clear_date = null where br_id = @br_id;
        delete from bank_recon where br_id = @br_id
      end if;
      //inflow is credit amt
      select f_insertintobankbook(@accid,@date,new_name.cheq_amt,0,
        @ref_no,null,null,'PE',new_name.bcd_id,14,new_name.cheq_no,
        @saletaxsaleid,1)
        into @lret
    end if
  else //sales return
    if @class = 'CASH' then //cash sales return
      select func_addcashbook(@accid,@date,0,0,0,new_name.cheq_amt)
        into @lret //bank sales return
    elseif @class = 'BANK' then
      if @br_id is not null then
        update bank_recon set clear_date = null where br_id = @br_id;
        delete from bank_recon where br_id = @br_id
      end if; //outflow is debit amt
      select f_insertintobankbook(@accid,@date,0,new_name.cheq_amt,
        @ref_no,null,null,'PE',new_name.bcd_id,14,new_name.cheq_no,
        @saletaxsaleid,1)
        into @lret //
    end if
  end if
end
go

create trigger dba.update_bill_memo_cheque_details after update order 2 on
DBA.bill_memo_cheque_details
referencing old as old_name new as new_name
for each row
begin
  declare @lret integer;
  declare @class char(10);
  declare @creditclass char(10);
  declare @date date;
  declare @accid unsigned integer;
  declare @type char(1);
  declare @ref_no varchar(30);
  select acc_id,trim(func_getclass(acc_id)),"date",type,ref_no into @accid,
    @class,@date,@type,@ref_no from bill_memo where bill_memo_id = new_name.bill_memo_id;
  if @type = 'S' then //sales
    if @class = 'CASH' then //cash sales
      //only add in cs_debit_cheque because cs_debit already updated
      //by bill_memo triggers
      select func_addcashbook(@accid,@date,0,0,new_name.cheq_amt-old_name.cheq_amt,0)
        into @lret
    elseif @class = 'BANK' then
      //credit_amt is inflow in bank
      update bank_recon set tran_date = new_name.cheq_date,
        credit_amt = new_name.cheq_amt,
        ref_no = @ref_no,
        cheq_no = new_name.cheq_no
        where tran_type = 14 and doc_id = old_name.bcd_id;
      if @@error <> 0 then
        raiserror 17017;
        return
      end if
    end if
  else //sales return
    if @class = 'CASH' then //cash sales return
      select func_addcashbook(@accid,@date,0,0,0,new_name.cheq_amt-old_name.cheq_amt)
        into @lret //bank sales return
    elseif @class = 'BANK' then
      update bank_recon set tran_date = new_name.cheq_date,
        debit_amt = new_name.cheq_amt,
        ref_no = @ref_no,
        cheq_no = new_name.cheq_no
        where tran_type = 14 and doc_id = old_name.bcd_id;
      if @@error <> 0 then
        raiserror 17017;
        return
      end if
    end if
  end if
end
go

create trigger dba.delete_stock_journal before delete order 1 on
DBA.stock_journal
referencing old as old_name
for each row
begin
  delete from stock_journal_product where sj_id = old_name.sj_id;
  delete from tally where sj_id = old_name.sj_id
end
go

create trigger dba.delete_stock_journal_product before delete order 1 on
DBA.stock_journal_product
referencing old as old_name
for each row
begin
  if old_name.debit_qty is null then set old_name.debit_qty = 0
  end if;
  if old_name.credit_qty is null then set old_name.credit_qty = 0
  end if;
  update inv_main set cr = cr-old_name.credit_qty,db
     = db-old_name.debit_qty
    where inv_main_id = old_name.inv_main_id
end
go

create trigger dba.insert_stock_journal_product before insert order 1 on
DBA.stock_journal_product
referencing new as new_name
for each row
begin
  if new_name.debit_qty is null then set new_name.debit_qty = 0
  end if;
  if new_name.credit_qty is null then set new_name.credit_qty = 0
  end if;
  update inv_main set cr = cr+new_name.credit_qty,db
     = db+new_name.debit_qty
    where inv_main_id = new_name.inv_main_id
end
go

create trigger dba.update_stock_journal_product before update order 1 on
DBA.stock_journal_product
referencing old as old_name new as new_name
for each row
begin
  if new_name.debit_qty is null then set new_name.debit_qty = 0
  end if;
  if new_name.credit_qty is null then set new_name.credit_qty = 0
  end if;
  if old_name.debit_qty is null then set old_name.debit_qty = 0
  end if;
  if old_name.credit_qty is null then set old_name.credit_qty = 0
  end if;
  update inv_main set cr = cr-old_name.credit_qty,db
     = db-old_name.debit_qty
    where inv_main_id = old_name.inv_main_id;
  update inv_main set cr = cr+new_name.credit_qty,db
     = db+new_name.debit_qty
    where inv_main_id = new_name.inv_main_id
end
go

create trigger dba.update_acclist after update of level
order 1 on DBA.acclist_temp
referencing old as old_name new as new_name
for each row
begin
  update acclist_temp set level = new_name.level+1
    where acc_parent = new_name.acc_id
end
go

create trigger dba.insert_acclist after insert order 1 on
DBA.acclist_temp
referencing new as new_name
for each row
begin
  insert into acclist_temp( acc_id,acc_code,acc_name,acc_parent,acc_type,acc_root ) 
    select acc_id,acc_code,acc_name,acc_parent,acc_type,acc_root from acc_main
      where acc_main.acc_parent = new_name.acc_id order by acc_name asc
end
go

create trigger dba.delete_godown_tran_product before delete order 1 on
DBA.godown_tran_product
referencing old as old_name
for each row
begin
  declare @gwidfrom numeric(3);
  declare @gwidto numeric(3);
  declare @dummy integer;
  select gw_id_from,gw_id_to into @gwidfrom,@gwidto from godown_tran
    where tran_id = old_name.tran_id;
  if @gwidfrom is null or @gwidto is null then
    raiserror 17037;
    return
  end if;
  //update the inv_main table
  update inv_main set trf_cr = trf_cr-old_name.tp_qty
    where gw_id = @gwidfrom and pr_id = old_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if;
  update inv_main set trf_db = trf_db-old_name.tp_qty
    where gw_id = @gwidto and pr_id = old_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if
end
go

create trigger dba.insert_godown_tran_product before insert order 1 on
DBA.godown_tran_product
referencing new as new_name
for each row
begin
  declare @gwidfrom numeric(3);
  declare @gwidto numeric(3);
  declare @dummy integer;
  select gw_id_from,gw_id_to into @gwidfrom,@gwidto from godown_tran
    where tran_id = new_name.tran_id;
  if @gwidfrom is null or @gwidto is null then
    raiserror 17037;
    return
  end if;
  //insert blank rows in inv_main table for which there is no gw_id and pr_id
  select func_addinvmain(@gwidfrom,new_name.pr_id) into @dummy;
  select func_addinvmain(@gwidto,new_name.pr_id) into @dummy;
  //update the inv_main table
  update inv_main set trf_cr = trf_cr+new_name.tp_qty
    where gw_id = @gwidfrom and pr_id = new_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if;
  update inv_main set trf_db = trf_db+new_name.tp_qty
    where gw_id = @gwidto and pr_id = new_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if
end
go

create trigger dba.update_godown_tran_product before update order 2 on
DBA.godown_tran_product
referencing old as old_name new as new_name
for each row
begin
  declare @gwidfrom numeric(3);
  declare @gwidto numeric(3);
  declare @dummy integer;
  if new_name.pr_id = old_name.pr_id
    and new_name.tp_qty = old_name.tp_qty then return
  end if;
  select gw_id_from,gw_id_to into @gwidfrom,@gwidto from godown_tran
    where tran_id = new_name.tran_id;
  if @gwidfrom is null or @gwidto is null then
    raiserror 17037;
    return
  end if;
  //insert blank rows in inv_main table for which there is no gw_id and pr_id
  select func_addinvmain(@gwidfrom,new_name.pr_id) into @dummy;
  select func_addinvmain(@gwidto,new_name.pr_id) into @dummy;
  //update the inv_main table
  update inv_main set trf_cr = trf_cr-old_name.tp_qty
    where gw_id = @gwidfrom and pr_id = old_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if;
  update inv_main set trf_cr = trf_cr+new_name.tp_qty
    where gw_id = @gwidfrom and pr_id = new_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if;
  update inv_main set trf_db = trf_db-old_name.tp_qty
    where gw_id = @gwidto and pr_id = old_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if;
  update inv_main set trf_db = trf_db+new_name.tp_qty
    where gw_id = @gwidto and pr_id = new_name.pr_id;
  if @@error <> 0 then
    raiserror 17038;
    return
  end if
end
go

create trigger Dba.insert_bill_memo_descriptive_sales before insert order 1 on
DBA.bill_memo_descriptive_sales
referencing new as new_name
for each row
begin
  declare @billmemoid unsigned integer;
  //update inv field in bill_memo table for inventory
  update bill_memo set inv = 'N' where inv = 'Y' and bill_memo_id = new_name.bill_memo_id;
  //check if corresponding entry exists in bill_memo_product table
  select bill_memo_id into @billmemoid from bill_memo_product
    where bill_memo_id = new_name.bill_memo_id;
  if @billmemoid is not null or @billmemoid <> 0 then
    raiserror 17018;
    return
  end if
end
go

create trigger Dba.update_auditlock_bill_memo_journal after update of acc_id,bv_amt order 4 on
DBA.bill_memo_journal
referencing old as old_name new as new_name
for each row
begin
  declare @date date;
  select "date" into @date from bill_memo where bill_memo_id = old_name.bill_memo_id;
  call func_checkAuditLockDate(old_name.acc_id,null,@date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.acc_id,null,@date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.delete_bill_memo_journal before delete order 1 on
DBA.bill_memo_journal
referencing old as old_name
for each row
begin
  declare @lret integer;
  declare @date date;
  select "date" into @date from bill_memo where bill_memo_id
     = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17019;
    return
  end if;
  call func_checkauditlockdate(old_name.acc_id,null,@date);
  if(@@error <> 0) then return end if;
  //delete from acc_tran
  delete from acc_tran where tran_type = 15
    and doc_id = old_name.bv_id;
  if @@error <> 0 then
    raiserror 17019;
    return
  end if;
  //does the delete work from cashbook_summery and bank_recon
  select func_delete_effect_billmemovoucher(old_name.bv_id,
    old_name.acc_id,@date,old_name.bv_amt,old_name.bv_dbcr,
    old_name.bv_chequeno)
    //  
    into @lret
end
go

create trigger dba.insert_bill_memo_journal before insert order 1 on
DBA.bill_memo_journal
referencing new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @refno char(30);
  declare @saleaccid unsigned integer;
  declare @date date;
  declare @chequeno char(20);
  declare @class char(10);
  declare @amt T_money;
  select "date",ref_no,sale_tax_sale_id,func_getclass(new_name.acc_id) into @date,
    @refno,@saleaccid,@class from bill_memo
    where bill_memo_id = new_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17020;
    return
  end if;
  call func_checkauditlockdate(new_name.acc_id,null,@date);
  if(@@error <> 0) then return end if;
  //setup for last bill no
  if @refno = 'TEMP' then
    if @class = 'DEBTOR' then
      set @refno = func_getlastrefno(new_name.acc_id);
      update bill_memo set ref_no = @refno where bill_memo_id = new_name.bill_memo_id;
      if @@error <> 0 then
        raiserror 17021;
        return
      end if
    end if end if;
  if new_name.bv_dbcr = 'DB' then //debit
    set @amt = new_name.bv_amt;
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.bv_id,new_name.bv_amt,15,new_name.acc_id,null ) 
  else // credit
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.bv_id,new_name.bv_amt,15,null,new_name.acc_id ) 
  end if;
  //update cashbook_summery or bank_recon
  //cs_debit of cashbook_summery is total debit, cs_debit_cheque is only cheque
  set @chequeno = upper(trim(new_name.bv_chequeno));
  if @chequeno = '' or @chequeno is null or @chequeno = 'CASH' then
    if @class in( 'CASH','BANK' ) then
      if new_name.bv_bank is null or trim(new_name.bv_bank) = '' then
        set new_name.bv_chequeno = 'CASH';
        set @chequeno = 'CASH'
      else
        set new_name.bv_chequeno = 'CHEQUE';
        set @chequeno = 'CHEQUE'
      end if
    end if end if;
  select func_insert_effect_billmemovoucher(new_name.bv_id,new_name.bill_memo_id,
    new_name.acc_id,new_name.bv_amt,new_name.bv_dbcr,@chequeno,
    new_name.bv_bank,new_name.bv_branch)
    into @lret
end
go

create trigger dba.update_bill_memo_journal before update order 1 on
DBA.bill_memo_journal
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  declare @date date;
  declare @chequeno char(20);
  declare @refno char(30);
  declare @class char(10);
  declare @saleaccid unsigned integer;
  //update acc_tran
  if new_name.bv_dbcr = 'DB' then
    update acc_tran set amt = new_name.bv_amt,acc_id_db = new_name.acc_id,
      acc_id_cr = null where tran_type = 15 and doc_id = new_name.bv_id
  else
    update acc_tran set amt = new_name.bv_amt,acc_id_db = null,
      acc_id_cr = new_name.acc_id where tran_type = 15 and doc_id = new_name.bv_id
  end if;
  //effect cash_bank_summery
  //first delete effect
  select "date" into @date from bill_memo where bill_memo_id = old_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17022;
    return
  end if;
  select func_delete_effect_billmemovoucher(old_name.bv_id,
    old_name.acc_id,@date,old_name.bv_amt,old_name.bv_dbcr,
    old_name.bv_chequeno) into @lret;
  //now insert effect
  select "date",ref_no,sale_tax_sale_id,func_getclass(new_name.acc_id) into @date,@refno,
    @saleaccid,@class from bill_memo where bill_memo_id = new_name.bill_memo_id;
  if @@error <> 0 then
    raiserror 17023;
    return
  end if;
  //setup for last bill no
  if new_name.acc_id <> old_name.acc_id then
    if @class = 'DEBTOR' then
      set @refno = func_getlastrefno(new_name.acc_id);
      update bill_memo set ref_no = @ref_no where bill_memo_id = new_name.bill_memo_id;
      if @@error <> 0 then
        raiserror 17021;
        return
      end if
    end if end if;
  set @chequeno = upper(trim(new_name.bv_chequeno));
  if @chequeno = '' or @chequeno is null then
    if @class in( 'CASH','BANK' ) or @chequeno = 'CASH' then
      if new_name.bv_bank is null or trim(new_name.bv_bank) = '' then
        set new_name.bv_chequeno = 'CASH';
        set @chequeno = 'CASH'
      else
        set new_name.bv_chequeno = 'CHEQUE';
        set @chequeno = 'CHEQUE'
      end if
    end if end if;
  select func_insert_effect_billmemovoucher(new_name.bv_id,new_name.bill_memo_id,
    new_name.acc_id,new_name.bv_amt,new_name.bv_dbcr,@chequeno,
    new_name.bv_bank,new_name.bv_branch)
    into @lret
end
go

create trigger Dba.insert_update_debitaccount before insert,update order 1 on
DBA.debitaccount
referencing old as old_name new as new_name
for each row
begin
  declare @yn char(1);
  select pos_debitclass into @yn from pointofsale where pos_id
     = new_name.pos_id;
  if upper(@yn) = 'Y' then //class
    if not new_name.db_acccode = any(select distinct acc_class from acc_main) then
      raiserror 17035;
      return
    end if
  else if not new_name.db_acccode = any(select distinct acc_code from acc_main) then
      raiserror 17031 'error';
      return
    end if end if
end
go

create trigger Dba.insert_update_brand before insert,update order 1 on
DBA.brand
referencing old as old_name new as new_name
for each row
begin
  if not new_name.brand = any(select distinct brand from product) then
    raiserror 17024 'This brand Does not exist';
    return
  end if
end
go

create trigger Dba.insert_update_sale_code before insert,update order 1 on
DBA.sale_code
referencing old as old_name new as new_name
for each row
begin
  if not new_name.acc_code = any(select distinct acc_code from acc_main
      where acc_root = 'Y' and acc_class in( 'SALE','SALES' ) ) then
    raiserror 17047;
    return
  end if
end
go

create trigger Dba.insert_chequeincash before insert order 1 on
DBA.chequeincash_table
referencing new as new_name
for each row
begin
  declare @chequeincash char(1);
  select default_chequeincash into @chequeincash from acc_setup;
  if @chequeincash is null then set @chequeincash = 'N'
  end if;
  if new_name.chequeincash is null then
    set new_name.chequeincash = @chequeincash
  elseif new_name.chequeincash <> @chequeincash then
    call func_setsummery(new_name.acc_id)
  end if
end
go

create trigger Dba.update_chequeincash after update order 2 on
DBA.chequeincash_table
referencing old as old_name new as new_name
for each row
begin
  declare @lret integer;
  if new_name.chequeincash <> old_name.chequeincash then
    //recalculate cashbook_summery for this cash account
    call func_setsummery(new_name.acc_id)
  end if
end
go

create trigger Dba.update_tag_tag after update of tag order 3 on
DBA.tag
referencing old as old_name new as new_name
for each row
begin
  if old_name.tag is null then return
  end if;
  if new_name.tag = 0 then set new_name.tag = null
  end if;
  update tag set tag = new_name.tag where tag = old_name.tag
end
go

create trigger Dba.delete_tag before delete order 3 on
DBA.tag
referencing old as old_name
for each row
begin
  call func_tag(old_name.tran_type,old_name.doc_id,old_name.amt,0.0,null)
end
go

create trigger Dba.insert_tag before insert order 1 on
DBA.tag
referencing new as new_name
for each row
begin
  update tag set tag = new_name.tag
    where tran_type = new_name.tran_type and doc_id = new_name.doc_id;
  call func_tag(new_name.tran_type,new_name.doc_id,0,new_name.amt,new_name.tag);
  update acc_setup set tag = new_name.tag
end
go

create trigger Dba.update_tag before update order 2 on
DBA.tag
referencing old as old_name new as new_name
for each row
begin
  call func_tag(new_name.tran_type,new_name.doc_id,old_name.amt,new_name.amt,new_name.tag)
end
go

create trigger Dba.delete_pointofsale before delete order 1 on
DBA.pointofsale
referencing old as old_name
for each row
begin
  delete from debitaccount where pos_id = old_name.pos_id;
  delete from sale_code where pos_id = old_name.pos_id
end
go

create trigger Dba.update_gp_formula before update of item,
brand order 2 on DBA.gp_formula
referencing old as old_name new as new_name
for each row
begin
  if new_name.item is not null
    and not exists(select item from product where item = new_name.item) then
    raiserror 17039;
    return
  end if;
  if new_name.brand is not null
    and not exists(select brand from product where brand = new_name.brand) then
    raiserror 17024;
    return
  end if
end
go

create trigger Dba.insert_gp_formula before insert order 1 on
DBA.gp_formula
referencing new as new_name
for each row
begin
  if new_name.item is not null and not exists(select item from product where item = new_name.item) then
    raiserror 17039;
    return
  end if;
  if new_name.brand is not null and not exists(select brand from product where brand = new_name.brand) then
    raiserror 17024;
    return
  end if
end
go

create trigger Dba.insert_pos_scheme before insert order 1 on
DBA.pos_scheme
referencing new as new_name
for each row
begin
  if new_name.scheme_billing is null then
    set new_name.scheme_billing = 'Y'
  end if
end
go

create trigger dba.insert_tempcode before insert order 1 on
DBA.tempcode
referencing new as new_name
for each row
begin
  declare @ret unsigned integer;
  select func_addcode(new_name.code,new_name.item,new_name.brand,new_name.model)
    into @ret from dummy
end
go

create trigger delete_tally before delete order 1 on
DBA.tally
referencing old as old_name
for each row
begin
  delete from tally_details where tally_id = old_name.tally_id
end
go

create trigger insert_auto_subledger before insert order 1 on
DBA.auto_subledger
referencing new as new_name
for each row
begin
  if func_getroot(new_name.acc_id) <> 'L' then
    raiserror 17125 'This account code is not a ledger account code with subledgers';
    return
  end if
end
go

create trigger insert_seq_no_tran before insert order 1 on
DBA.seq_no_tran
referencing new as new_name
for each row
begin
  declare @last_id unsigned integer;
  select last_id into @last_id from seq_no where seq_id = new_name.seq_id;
  update seq_no set last_id = new_name.id where seq_id = new_name.seq_id;
  set new_name.prev_id = @last_id
end
go

create trigger insert_slno_invoice_product after insert order 1 on
DBA.slno_invoice_product
referencing new as new_name
for each row
begin
  //updates the slno_id field of seq_no table
  declare @seq_id unsigned integer;
  select min(seq_no.seq_id) into @seq_id from seq_no join seq_no_tran on seq_no.seq_id = seq_no_tran.seq_id
    where slno_id is null
    and tran_type = 1 and tran_id = new_name.invoice_product_id;
  if @seq_id is not null then update seq_no set slno_id = new_name.slno_id
      where seq_id = @seq_id
  end if
end
go

create trigger insert_product_temp before insert order 1 on
DBA.product_temp
referencing new as new_name
for each row
begin
  declare @code unsigned integer;
  if new_name.item = '' or new_name.brand = '' or new_name.model = '' then return
  end if;
  select code into @code from product where item = new_name.item and brand = new_name.brand and model = new_name.model;
  if @code is null then
    insert into product( item,brand,model,acc_id_sale_tax,basic_price,last_date,last_price,op_price,sl_no,spec,show,counter_id ) 
      values( new_name.item,new_name.brand,new_name.model,new_name.acc_id_sale_tax,
      new_name.basic_price,new_name.last_date,new_name.last_price,new_name.op_price,
      new_name.sl_no,new_name.spec,new_name.show,func_getcrosscounterid(new_name.counter_id) ) 
  end if;
  update product as a set op_price = if new_name.last_price is null or new_name.last_price = 0 then
      new_name.op_price else new_name.last_price endif
    where item = new_name.item and brand = new_name.brand and model = new_name.model
end
go

create trigger insert_inv_main_temp before insert order 1 on
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
  select pr_id into @pr_id from product where item = (select item from product_temp where pr_id = new_name.pr_id)
    and brand = (select brand from product_temp where pr_id = new_name.pr_id)
    and model = (select model from product_temp where pr_id = new_name.pr_id);
  if @gw_id is null or @pr_id is null then
    raiserror 99999 'Error in product';
    return
  end if;
  set @trf = new_name.trf_db-new_name.trf_cr;
  if @trf is null or @trf = 0 then
    set @trf_db = 0;
    set @trf_cr = 0
  elseif @trf < 0 then
    set @trf_cr = -@trf;
    set @trf_db = 0
  else
    set @trf_cr = 0;
    set @trf_db = @trf
  end if;
  if not exists(select inv_main_id from inv_main where gw_id = @gw_id and pr_id = @pr_id) then
    insert into inv_main( op,db,cr,gw_id,pr_id,trf_db,trf_cr ) 
      values( (new_name.op+new_name.db-new_name.cr),0,0,@gw_id,@pr_id,@trf_db,@trf_cr ) 
  else
    update inv_main set op = new_name.op+new_name.db-new_name.cr,
      trf_db = @trf_db,
      trf_cr = @trf_cr
      where pr_id = @pr_id and gw_id = @gw_id
  end if
end
go

create trigger iud_voucher_details before insert,delete,update order 1 on
DBA.voucher_details
referencing old as old_name new as new_name
for each row
begin
  declare @acc_id_db unsigned integer;
  declare @acc_id_cr unsigned integer;
  if inserting then
    if new_name.db_cr = 'D' then
      set @acc_id_db = new_name.acc_id;
      set @acc_id_cr = null
    elseif new_name.db_cr = 'C' then
      set @acc_id_cr = new_name.acc_id;
      set @acc_id_db = null
    else
      raiserror 17139 'Only D or C are allowed for Debit and Credit';
      return
    end if;
    insert into acc_tran( doc_id,tran_type,amt,acc_id_db,acc_id_cr ) 
      values( new_name.details_id,200,new_name.amount,@acc_id_db,@acc_id_cr ) 
  elseif updating then
    if new_name.db_cr = 'D' then
      set @acc_id_db = new_name.acc_id;
      set @acc_id_cr = null
    elseif new_name.db_cr = 'C' then
      set @acc_id_cr = new_name.acc_id;
      set @acc_id_db = null
    else
      raiserror 17139 'Only D or C are allowed for Debit and Credit';
      return
    end if;
    update acc_tran set amt = new_name.amount,
      acc_id_db = @acc_id_db,
      acc_id_cr = @acc_id_cr
      where tran_type = 200 and doc_id = old_name.details_id
  elseif deleting then
    delete from acc_tran
      where tran_type = 200 and doc_id = old_name.details_id
  end if
end
go

create trigger iud_voucher before insert,delete,update order 1 on
DBA.voucher
referencing old as old_name new as new_name
for each row
begin
  declare @prefix varchar(5);
  declare @suffix varchar(5);
  declare @lastno unsigned integer;
  if inserting then
    if new_name.ref_no is null or trim(new_name.ref_no) = '' then
      select prefix,lastno,suffix into @prefix,@lastno,@suffix from voucher_type where vtype_id = new_name.vtype_id;
      if @lastno is null or @lastno = 0 then set @lastno = 1
      else set @lastno = @lastno+1
      end if;
      if @prefix is null or trim(@prefix) = '' then set @prefix = ''
      else set @prefix = @prefix+'/'
      end if;
      if @suffix is null or trim(@suffix) = '' then set @suffix = ''
      else set @suffix = '/'+@suffix
      end if;
      set new_name.ref_no = @prefix+trim(string(@lastno))+@suffix;
      update voucher_type set lastno = @lastno where vtype_id = new_name.vtype_id
    end if
  end if
end
go

create trigger iud_voucher_details_after after insert,delete,update order 1 on
DBA.voucher_details
referencing old as old_name new as new_name
for each row
begin
  if deleting then
    if not exists(select details_id from voucher_details where vou_id = old_name.vou_id) then
      delete from voucher where vou_id = old_name.vou_id
    end if
  end if
end
go

create trigger iud_voucher_after after insert,delete,update order 1 on
DBA.voucher
referencing old as old_name new as new_name
for each row
begin
  if deleting then
    delete from voucher_details where vou_id = old_name.vou_id
  end if
end
go

create trigger before_id_cash_payment before insert,delete order 1 on
DBA.cash_payment
referencing old as old_name new as new_name
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
  if inserting then
    set new_name.adj_amt = 0.0;
    call func_checkauditlockdate(new_name.cp_acc_id,new_name.cp_acc_id_cash,new_name.cp_date);
    if(@@error <> 0) then return end if;
    if func_isvaliddate(new_name.cp_date) = 'N' then
      raiserror 17115 'Invalid date';
      return
    end if;
    select func_getclass(new_name.cp_acc_id) into @class;
    if @class = 'SALE' or @class = 'PURCHASE' then
      raiserror 17026 'error';
      return
    end if;
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
        update pointofsale set pos_lastno = @lastno where pos_id = @pos_id
      else //use prefix,suffix,lastno from pos_scheme table
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
      end if end if;
    if new_name.ref_no is null or trim(new_name.ref_no) = '' then
      set new_name.ref_no = func_getautonumber(3)
    end if;
    //insert in acc_tran
    insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
      values( new_name.cp_id,new_name.cp_amt,3,new_name.cp_acc_id,new_name.cp_acc_id_cash ) ;
    //update cashbook_summery
    select func_addcashbook(new_name.cp_acc_id_cash,new_name.cp_date,0,new_name.cp_amt)
      into @lret
  elseif deleting then // First delete effect for cash_payment_tran
    call func_checkauditlockdate(old_name.cp_acc_id,old_name.cp_acc_id_cash,old_name.cp_date);
    if(@@error <> 0) then return end if;
    delete from acc_tran where doc_id = old_name.cp_id and tran_type = 3;
    select func_addcashbook(old_name.cp_acc_id_cash,old_name.cp_date,0,-old_name.cp_amt) into @lret;
    delete from cashbook_summery
      where cs_debit = 0 and cs_credit = 0 and cs_debit_cheque = 0 and cs_credit_cheque = 0;
    call func_resetthistag(old_name.tag)
  end if
end
go

create trigger Dba.after_u_cash_payment after update of cp_acc_id,cp_acc_id_cash,cp_amt,
cp_date order 3 on DBA.cash_payment
referencing old as old_name new as new_name
for each row
begin
  call func_checkauditlockdate(old_name.cp_acc_id,old_name.cp_acc_id_cash,old_name.cp_date);
  if(@@error <> 0) then return end if;
  call func_checkauditlockdate(new_name.cp_acc_id,new_name.cp_acc_id_cash,new_name.cp_date);
  if(@@error <> 0) then return end if
end
go

create trigger dba.before_u_cash_payment before update of cp_acc_id,cp_acc_id_cash,cp_amt,
cp_date order 1 on
DBA.cash_payment
referencing old as old_name new as new_name
for each row
begin
  declare @lret unsigned integer;
  select func_addcashbook(new_name.cp_acc_id_cash,new_name.cp_date,0,new_name.cp_amt) into @lret;
  select func_addcashbook(old_name.cp_acc_id_cash,old_name.cp_date,0,-old_name.cp_amt) into @lret;
  if new_name.cp_amt = 0 then
    delete from acc_tran where tran_type = 3 and doc_id = old_name.cp_id
  else
    if exists(select acc_tran_id from acc_tran where tran_type = 3 and doc_id = old_name.cp_id) then
      //update
      update acc_tran
        set amt = new_name.cp_amt,
        acc_id_db = new_name.cp_acc_id,
        acc_id_cr = new_name.cp_acc_id_cash
        where tran_type = 3 and acc_tran.doc_id = old_name.cp_id
    else // insert
      insert into acc_tran( doc_id,amt,tran_type,acc_id_db,acc_id_cr ) 
        values( new_name.cp_id,new_name.cp_amt,3,new_name.cp_acc_id,new_name.cp_acc_id_cash ) 
    end if
  end if
end
go

create trigger delete_billMemo before delete order 1 on
DBA.billMemo
referencing old as old_name
for each row
begin
  delete from billMemoProduct where bill_memo_id = old_name.bill_memo_id
end
go

create trigger iud_acc_tran before insert,delete,update order 1 on
DBA.acc_tran
referencing old as old_name new as new_name
for each row
begin
  declare @AllowTran char(1);
  select allowtran into @AllowTran from acc_setup;
  if @AllowTran is null then set @AllowTran = 'Y'
  end if;
  if @AllowTran = 'N' then
    raiserror 17144 'Please try after some time. Background data transfer in progress.';
    return
  end if;
  if inserting then
    //only allow ledger or subledgers for transactions i.e acc_root = 'Y','S'
    if func_getroot(new_name.acc_id_db) not in( 'Y','S' ) or func_getroot(new_name.acc_id_cr) not in( 'Y','S' ) then
      raiserror 17123 'Transactions cannot directly be performed on Groups, Subgroups and ledger accounts having subledgers';
      return
    end if;
    //update acc_main
    if new_name.acc_id_db is not null then
      update acc_main
        set acc_db = acc_db+new_name.amt
        where acc_id = new_name.acc_id_db
    end if;
    if new_name.acc_id_cr is not null then
      update acc_main
        set acc_cr = acc_cr+new_name.amt
        where acc_id = new_name.acc_id_cr
    end if
  elseif updating then //only allow ledger or subledgers for transactions i.e acc_root = 'Y','S'
    if func_getroot(new_name.acc_id_db) not in( 'Y','S' ) or func_getroot(new_name.acc_id_cr) not in( 'Y','S' ) then
      raiserror 17123 'Transactions cannot directly be performed on Groups, Subgroups and ledger accounts having subledgers';
      return
    end if;
    //first for delete
    //update acc_main
    update acc_main
      set acc_db = acc_db-old_name.amt
      where acc_id = old_name.acc_id_db;
    update acc_main
      set acc_db = acc_db+new_name.amt
      where acc_id = new_name.acc_id_db;
    update acc_main
      set acc_cr = acc_cr-old_name.amt
      where acc_id = old_name.acc_id_cr;
    update acc_main
      set acc_cr = acc_cr+new_name.amt
      where acc_id = new_name.acc_id_cr
  elseif deleting then
    //update acc_main
    if old_name.acc_id_db is not null then
      update acc_main
        set acc_db = acc_db-old_name.amt
        where acc_id = old_name.acc_id_db
    end if;
    if old_name.acc_id_cr is not null then
      update acc_main
        set acc_cr = acc_cr-old_name.amt
        where acc_id = old_name.acc_id_cr
    end if
  end if
end
go

create trigger iup_inv_main before insert,delete,update order 1 on
DBA.inv_main
referencing old as old_name new as new_name
for each row
begin
  declare @AllowTran char(1);
  select allowtran into @AllowTran from acc_setup;
  if @AllowTran is null then set @AllowTran = 'Y'
  end if;
  if @AllowTran = 'N' then
    raiserror 17144 'Please try after some time. Background data transfer in progress.';
    return
  end if;
  if inserting then
    if new_name.op_price <> 0 and new_name.op_price is not null then
      update product set op_price = new_name.op_price
        where product.pr_id = new_name.pr_id
    end if
  elseif updating then if old_name.op_price <> new_name.op_price then
      if new_name.op_price <> 0 and new_name.op_price is not null then
        update product set op_price = new_name.op_price
          where pr_id = new_name.pr_id
      end if
    end if
  elseif deleting then delete from seq_no where inv_main_id = old_name.inv_main_id
  end if
end
go

create trigger update_acc_main_temp after update order 1 on
DBA.acc_main_temp
referencing old as old_name new as new_name
for each row
begin
  update acc_main_temp
    set acc_db = acc_db+new_name.acc_db-old_name.acc_db,
    acc_cr = acc_cr+new_name.acc_cr-old_name.acc_cr
    where acc_id = new_name.acc_parent
end
go

create trigger insert_bstemp after insert order 1 on
DBA.BsTemp
referencing new as new_name
for each row
begin
  update acc_main_temp
    set acc_db = acc_db+new_name.amount where acc_id = new_name.accIdDebit and new_name.accIdDebit is not null;
  update acc_main_temp
    set acc_cr = acc_cr+new_name.amount where acc_id = new_name.accIdCredit and new_name.accIdCredit is not null
end
go


-------------------------------------------------
--   Create SQL Remote definitions
-------------------------------------------------


-------------------------------------------------
--   Create MobiLink definitions
-------------------------------------------------


-------------------------------------------------
--   Create Synchronization profiles
-------------------------------------------------


-------------------------------------------------
--   Create logins
-------------------------------------------------


-------------------------------------------------
--   Create events
-------------------------------------------------

commit
go
-------------------------------------------------
--   Create options
-------------------------------------------------

SET OPTION date_order =
go

SET OPTION PUBLIC.preserve_source_format =
go

SET OPTION "PUBLIC"."optimization_goal"='Response-time'
go

SET OPTION "PUBLIC"."prefetch"='On'
go

SET OPTION "PUBLIC"."preserve_source_format"='On'
go

SET OPTION "PUBLIC"."prevent_article_pkey_update"='Off'
go

SET OPTION "PUBLIC"."string_rtruncation"='Off'
go

SET OPTION "PUBLIC"."subsume_row_locks"='Off'
go

SET OPTION "DBA"."max_cursor_count"='100'
go

SET OPTION "DBA"."max_statement_count"='100'
go
