set hive.cli.print.header=true;   -- set the headings to be outputted at the end of the query 
!echo [ == requirement 5                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
SELECT gplusplaceid, COUNT(*)
FROM reviews
GROUP BY gplusplaceid
HAVING COUNT(*) > 3;


!echo [== COMPLETE:                      ==];
