create or replace function isdate(p_in varchar2, f_in varchar2)
return varchar is
scrub_dt date;
begin
scrub_dt := to_date(p_in, f_in);
return 'Y';
exception when others then
return 'N';
end;
/

