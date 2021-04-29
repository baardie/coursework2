set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
!echo [ == requirement 7                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];

SELECT count(*) as places_, closed as Is_Closed
FROM places
GROUP BY closed;

!echo [== COMPLETE:                      ==];


