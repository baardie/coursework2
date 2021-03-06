set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
SET hive.auto.convert.join=false; -- Auto join conversion, disabling this allows the script to use other commands
                                     --other wise disabled due to automatic optimisation 
!echo [ == requirement 13                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
select sum(case when price=="$" then 1 else 0 end) as Low,
       sum(case when price=="$$" then 1 else 0 end) as Med,
       sum(case when price=="$$$" then 1 else 0 end) as High
from places 
join reviews 
on places.gplusplaceid=reviews.gplusplaceid;

!echo [== COMPLETE:                      ==];
