set hive.cli.print.header=true; --set the headings to be outputted at the end of the query
!echo [== requirement 1                ==];
!echo [== displaying databases == ];
show databases; --show the databases
 
!echo [== selected default              ==];
use default; --select the default database

!echo [== setting substitutes        ==];
set hive.variable.substitute=true; -- allow external arguments via -hiveconf

!echo [== RESULT:                              ==];
Select count(*) from (SELECT rating FROM reviews WHERE (rating= ${hiveconf:my_rating})) AS reviews;

!echo [== COMPLETE:                      ==];
