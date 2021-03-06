set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
SET hive.auto.convert.join=false; -- Auto join conversion, disabling this allows the script to use other commands
                                     other wise disabled due to automatic optimisation 
!echo [ == requirement 10                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database lt;

!echo [== RESULT:                              ==];
SELECT avg(rating) As AvgScore, catagories 
FROM reviews
GROUP by catagories
ORDER BY AvgScore DESC
LIMIT 5;

!echo [== COMPLETE:                      ==];



