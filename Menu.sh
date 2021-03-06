#!/bin/bash
while : # a loop to ensure that the menu is always shown, and when the button is pressed it will re-appear after
do      # doing the command
clear   # clear the screen 
echo "==== REQUIREMENTS MENU ====" #echo is a command used to display outpu
echo "1) Requirement 1"
echo "2) Requirement 2 - FAILURE (DOESN'T WORK)"
echo "3) Requirement 3"
echo "4) Requirement 4"
echo "5) Requirement 5"
echo "6) Requirement 6"
echo "7) Requirement 7"
echo "8) Requirement 8"
echo "9) Requirement 9"
echo "10) Requirement 10"
echo "11) Requirement 11"
echo "12) Requirement 12"
echo "13) Requirement 13"
echo "14) Requirement 14"
echo "15) Requirement 15"
echo "q) quit"
echo " "

read -p "Enter your option: " option # the read command allows the shell to be interactive
				     # the -p command allows the shell to create a variable withe the value input

if [ $option -eq 1 ]; then           # the if statement will decide what menu option is chosen
	clear
	echo " " 
	read -p "Please enter a rating: " rating # read input for rating then using hive, run the file with the first
						 # argument being rating, then locate the file using hdfs 
	hive -hiveconf my_rating=$rating  -f <(hdfs dfs -cat my_hdfs_directory/requirement1.sql)
					         # creating a variable my_rating allows the argument to be passed
						 # into the sql file
elif [ $option -eq 2 ]; then
	clear
	sparkhell   <(hdfs dfs -cat my_hdfs_directory/requirement2.scala)

elif [ $option -eq 3 ]; then
	clear
	hive  -f    <(hdfs dfs -cat my_hdfs_directory/requirement3.sql)

elif [ $option -eq 4 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement4.sql)

elif [ $option -eq 5 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement5.sql)

elif [ $option -eq 6 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement6.sql)

elif [ $option -eq 7 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement7.sql)

elif [ $option -eq 8 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement8.sql)

elif [ $option -eq 9 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement9.sql)

elif [ $option -eq 10 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement10.sql)

elif [ $option -eq 11 ]; then
	clear
	hive  -f  <(hdfs dfs -cat my_hdfs_directory/requirement11.sql) 

elif [ $option -eq 12 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement12.sql)

elif [ $option -eq 13 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement13.sql)

elif [ $option -eq 14 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement14.sql)

elif [ $option -eq 15 ]; then
	clear
	hive  -f   <(hdfs dfs -cat my_hdfs_directory/requirement15.sql)
	
fi
sleep 5
done

