# HBase-Tutorial
This repository is used to hold the commands shown in the Advanced Databases assignment in relation to the HBase tutorial section.

The commands are stored as text files for the most part and are grouped into folders. 
The tutorial refrences a ```employee``` table. 
If you want to get started with the employee table follow the following instructions. 

The version of HBase these commands where written and tested on is HBase version 2.3.6 on Ubuntu 20.04.3 LTS.
HBase is running as a background service. 

## Creating Employee Table 
First the employee table must be created. This can be done using the following command. 

```
$ hbase shell tableCommands/create_employee_table.txt
```
The data for the ```employee``` table is in the file ```inserting_data/employees_data.csv``` and can be inserted by running the command below. 
The command used inside the file to import the data to HBase generates a lot of logs. 
```
$ ./inserting_data/inserting_employees_csv.sh
```
If for whatever reason the table needs to be reset after a few commands are tried out the following commands can be used. 
```
$ hbase shell tableCommands/reset_table.txt
$ ./inserting_data/inserting_employees_csv.sh
```
Some of the files can be used using the ```hbase shell <file_path>``` syntax however some of the files have comments and multiple commands in them.
It is better to view the files in one terminal window and type the commands into a HBase shell prompt. 
