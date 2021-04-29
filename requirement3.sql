set hive.cli.print.header=true;  -- set the headings to be outputted at the end of the query
!echo [ == requirement 3                ==];
!echo [== displaying databases == ];
show databases; --show the databases
 
!echo [== selected default              ==];
use default; --select the default database

!echo [== RESULT:                              ==];
SELECT jobs,username FROM users WHERE jobs="IT Specialist";

!echo [== COMPLETE:                      ==];
