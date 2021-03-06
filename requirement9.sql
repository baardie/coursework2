set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
!echo [ == requirement 9                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
SELECT avg(rating) as AvgScore, catagories
FROM reviews
GROUP BY catagories
limit 10;

!echo [== COMPLETE:                      ==];

