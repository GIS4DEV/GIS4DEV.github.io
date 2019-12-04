# script to convert an SPSS statistics file into something useful for a database
# download an SPSS file from DHS Surveys, and use the Import Dataset feature in R to bring it in

install.packages("RPostgres")
install.packages("rccmisc")
library(foreign)
library(DBI)
library(dplyr)
library(rccmisc)
library(RPostgres)

dhshh <- lownames(select(MWHR61FL,HHID,HV001,HV204,HV248,HV246A,HV246D,HV246E,HV246G,HV245,HV271,HV251,HV206,HV226,HV219,HV243A,HV207)) 
# create a new dataframe with only the necessary columns, and switching all field names to lower-case Change the first parameter of select() to the name of your data frame (from importing SPSS file) and then list any of the columns you want to keep

con <- dbConnect(RPostgres::Postgres(), dbname='database name', host='database host', user='user', password='password') #connect to the database. Change the database name, host, user, and password to your own

dbListTables(con) #list the database tables, to check if the database is working

dbWriteTable(con,'dhshh',dhshh, overwrite=TRUE) #import the table to the database and overwrite existing one. con is the database connection, 'dhshh' is the name of the new table, and dhshh is the data frame to be imported

dbDisconnect(con) #disconnect from the database
