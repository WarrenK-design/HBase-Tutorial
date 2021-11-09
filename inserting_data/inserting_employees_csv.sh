#!/bin/sh

hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.separator=',' -Dimporttsv.columns='HBASE_ROW_KEY,personal_data:first_name,personal_data:second_name,personal_data:phone_number,professional_data:job_title,professional_data:salary,professional_data:office_location,professional_data:employee_num' employee /home/warren/tutorial/inserting_data/employees_data.csv

