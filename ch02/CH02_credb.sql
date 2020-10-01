CREATE DATABASE o18c
   MAXLOGFILES 16
   MAXLOGMEMBERS 4
   MAXDATAFILES 1024
   MAXINSTANCES 1
   MAXLOGHISTORY 680
   CHARACTER SET AL32UTF8
DATAFILE
'/u01/dbfile/o18c/system01.dbf'
   SIZE 500M REUSE
   EXTENT MANAGEMENT LOCAL
UNDO TABLESPACE undotbs1 DATAFILE
'/u01/dbfile/o18c/undotbs01.dbf'
   SIZE 800M
SYSAUX DATAFILE
'/u01/dbfile/o18c/sysaux01.dbf'
   SIZE 500M
DEFAULT TEMPORARY TABLESPACE TEMP TEMPFILE
'/u01/dbfile/o18c/temp01.dbf'
   SIZE 500M
DEFAULT TABLESPACE USERS DATAFILE
'/u01/dbfile/o18c/users01.dbf'
   SIZE 20M
LOGFILE GROUP 1
        ('/u01/oraredo/o18c/redo01a.rdo',
         '/u02/oraredo/o18c/redo01b.rdo') SIZE 50M,
        GROUP 2
        ('/u01/oraredo/o18c/redo02a.rdo',
         '/u02/oraredo/o18c/redo02b.rdo') SIZE 50M,
        GROUP 3
        ('/u01/oraredo/o18c/redo03a.rdo',
         '/u02/oraredo/o18c/redo03b.rdo') SIZE 50M
USER sys    IDENTIFIED BY foo
USER system IDENTIFIED BY foo; 
