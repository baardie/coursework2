set hive.cli.print.header=true; -- set the headings to be outputted at the end of the query 
SET hive.auto.convert.join=false; -- Auto join conversion, disabling this allows the script to use other commands
                                     other wise disabled due to automatic optimisation 
 
!echo [ == requirement 6                ==];
!echo [== displaying databases == ];
show databases; -- show the databases 
 
!echo [== selected default              ==];
use default; -- select the default database 

!echo [== RESULT:                              ==];
SELECT users.gplususerid, reviews.reviewtext, users.jobs
FROM reviews
INNER JOIN users ON users.gplususerid=reviews.gplususerid
WHERE users.jobs="IT Specialist";

!echo [== COMPLETE:                      ==];
