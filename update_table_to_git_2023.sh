#!/bin/bash
echo "this script is run as root and unix plugin of mysql" 
echo "give database name:"
read d
mysqldump  -d $d > "$d"_blank.sql 

tnames='
master_child
record_tables
table_field_specification
'

mysqldump  $d $tnames > "$d"_data.sql

git add *
git commit -a
git push https://github.com/nishishailesh/table main
