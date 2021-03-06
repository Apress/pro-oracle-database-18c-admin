select to_char(begin_time,'MM-DD-YYYY HH24:MI') begin_time
,ssolderrcnt    ORA_01555_cnt, nospaceerrcnt  no_space_cnt
,txncount       max_num_txns, maxquerylen    max_query_len
,expiredblks    blck_in_expired
from v$undostat
where begin_time > sysdate - 1
order by begin_time;
