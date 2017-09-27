//20th Sep 2014. Sl No deletion
if exists(select trigger_name from systrigger where trigger_name='insert_slno_invoice_product') then
    drop trigger insert_slno_invoice_product
end if;
go
if exists(select 0 from SYSCONSTRAINT where constraint_name='slno_id') then
    alter table seq_no drop constraint slno_id
end if;
go