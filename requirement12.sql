set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
SET hive.auto.convert.join=false; -- Auto join conversion, disabling this allows the script to use other commands
                                     -- other wise disabled due to automatic optimisation 

!echo [ == requirement 12                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
select
avg(case when price=="$" then rating end) as Low,
avg(case when price=="$$" then rating end) as Med,
avg(case when price=="$$$" then rating end) as High
from places inner join reviews
on places.gplusplaceid=reviews.gplusplaceid;
!echo [== COMPLETE: 


