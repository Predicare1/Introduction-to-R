###########################################################
###########################################################
## Installing and loading packages in R
###########################################################
###########################################################

## Install the oldest package published in CRAN
install.packages("vioplot")

## Access the description file of the package
packageDescription("vioplot")

## Install the readr package on computer (from CRAN repository)
install.packages("readr")

## Read the documentation of the package
help("readr")

## Load the readr package into the R session for read.csv() function
library(readr)

## Question: Install and load the readxl package
## install.packages("readxl")

## Load the required package into the R session
library(readxl)

##--------------------------------##
## Working directory
##--------------------------------##

## Set working directory (tells R where to import files from/export files to)
## setwd("")

## Get the working directory
getwd()

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
## Importing data sets into R
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##


##---------------------------------------------------------------------------##
## Import .txt with space separated values
##---------------------------------------------------------------------------##

## Import .txt with space separated values and explore it
data1 <- read.table("dataset.txt", header = TRUE)
class(data1)

## See all data
View(data1)

## See first 6 rows
head(data1)
data1[1:6, ]

## See last 6 rows
tail(data1)

## Check the structure of the data 
str(data1)

## Check the summary of the data
summary(data1)

##--------------------------------##
## Changing Column Types
##--------------------------------##

## Change columns type to factor
data1$Quarter <- as.factor(data1$Quarter)

##---------------------------------------------------------------------------##
## Import .txt with comma separated values
##---------------------------------------------------------------------------##

## read.table() function to import .txt files
## I will add a sep= "," for comma separated files
data2 <- read.table("Orange_comma_separated.txt", header = TRUE, sep = ",")
class(data2)

## Check the summary of the data
## Check the structure of the data
## Change the Tree feature to factor

##---------------------------------------------------------------------------##
## Import .csv file
##---------------------------------------------------------------------------##

## Read the NC Dataset
NC_data <- read.csv(file = "NC_Dataset.csv", 
                    header = TRUE, sep = ",")

## Check the names of the columns
names(NC_data)

## Check the structure of the data
str(NC_data)

## (Ex.): Use read.csv() to import .csv files and explore it


## (Ex.): Check the class and internal structure of the data


## Check the data type
## Retrieve the first 6 rows
## Check the number of rows and columns
## Check the summary of the data 

##---------------------------------------------------------------------------##
## Import an excel file
##---------------------------------------------------------------------------##

## Use read_excel() to import xlsx documents
data4 <- read_excel("dataset.xlsx")

## Check the class and internal structure of the data
class(data4)
str(data4)

## Note: We can also use the Rstudio interface

##---------------------------------------------------------------------------##
## Import other file formats
##---------------------------------------------------------------------------##

## Load the bprs.dta data
bprs_data <- read_dta("bprs.dta")

## Print the first eight rows of the data
head(bprs_data, 8)

## Get the dimension of the data
dim(bprs_data)

## Use read_sav() function to read SPSS file 
health_data <- read_sav("health_control.sav")        
health_data

## Import foreign package 
library("foreign")

## Read SPSS file using read.spss() function 
health_df <- read.spss("health_control.sav", to.data.frame = TRUE)  
health_df






