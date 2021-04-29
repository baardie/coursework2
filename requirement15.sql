set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
SET hive.auto.convert.join=false; -- Auto join conversion, disabling this allows the script to use other commands
                                   --  other wise disabled due to automatic optimisation 

!echo [ == requirement 15                 ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
SELECT Count(reviews.rating) as reviews, places.gplusplaceid, name  
from reviews
join places
on reviews.gplusplaceid=places.gplusplaceid
group by places.gplusplaceid, name
sort by reviews DESC
limit 10;
!echo [== COMPLETE: 
