
###########################################################
###########################################################
## Data Structures in R
###########################################################
###########################################################

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
## Data Structures in R
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##

##---------------------------------------------------------------------------##
## VECTORS
##---------------------------------------------------------------------------##

## Create a vector of the grade of 6 students
## use c() to store several values in one variable

grade <- c(72, 76, 88, 55, 64, 99)

## Check the data type of the vector
class(grade)

## Check the length of the variable
length(grade)

## Sort the grades in ascending and descending order
sort(grade)
sort(grade, decreasing = T)

## Create a character vector vec1
vec1 <- c("a","b","c","d", "e", "f")
print(vec1)

## (Ex.): Check the data type and length of the vector


##------------------------------##
## Indexing and Slicing
##------------------------------##

## Returns the 3rd grade
grade[3]     

## Returns the 1st, 2nd, and 3rd grades
grade[1:3]    

## (Ex.): What do you think the result will be?
grade[-1]

## Replace the 3rd grade
grade[3] <- 87 

## (Ex.): Create a character vector vec1


## (Ex.): Check the data type and length of the vector


## (Ex.): Retrieve the 1st, 2nd and 3rd characters in the vec1 vector


## Create the variable char_num_vec to take numeric and character types
char_num_vec <- c(10,20,30,"a")
print(char_num_vec)

## (Ex.): What do you think will be the data type of the vector?
class(char_num_vec)


##------------------------------##
## Operators in Vectors
##------------------------------##

## Create a vector of odd numbers using seq() 
seq(from = 1, to = 14, by = 2)

## (Ex.): What do you think will be the result of this? 
seq(5, 10, by = 0.5)

## Case One: Repeat x = 2 four times using rep()
rep(x = 2, times = 4)

## Case 2: Repeat a vector three times using rep()
rep(x = c(2,3,4), times = 3)

## (Ex.): What will be the result of this?
rep(grade, times = 2)

## Case 3: Repeat each element of a vector two times using rep()
rep(x = c(2,3,4), each = 2)

## Case 4: 
rep(x = c(2,3,4), times = 3, each = 2)

## Relational Operators
num1 <- c(2, 6.5, 8, 11)
num2 <- c(8, 1.5, 9, 11)

## Print the following operators
print(num1 > num2)
print(num1 < num2)
print(num1 >= num2)
print(num1 <= num2)
print(num1 == num2)
print(num1 != num2)

## Special Operators

## Create a vector of numbers from 1 to 10
num3 <- 1:10
num3

## Assign 3 to a variable value
value <- 3

## Check if value is in num3
value %in% num3

##---------------------------------------------------------------------------##
## MATRICES
##---------------------------------------------------------------------------##

## Create matrix with values from grade, 3 rows and 2 columns
mat1 <- matrix(grade, nrow = 3, ncol = 2)

## Call the matrix created
mat1

## Change byrow to TRUE
mat2 <- matrix(grade, nrow = 3, ncol = 2, byrow = TRUE)

## Call the matrix created
mat2

## (Ex.): Create vector with 9 integers from 1 to 9


## (Ex.): Create a matrix called mat3


##------------------------------##
## Sub-setting in Matrices
##------------------------------##

## Access value on second row, second column
mat2[2,2]

## Access second row
mat2[2,]

## Access second column
mat2[,2]

## Access sub-matrix with components on both 
## first 2 rows and first 2 columns
mat2[1:2,1:2]

## Access sub-matrix with components that are 
## not on 3rd row and 2nd column
mat2[-3,-2]

## (Ex.): What will be the result of this?
## Exclude the first row, print out the second 
## and third values of the other rows.


## Exclude the first row and the second column.
mat3[-1,-2]

## This deletes the first row and also the second and third column.
mat3[-1, -c(2,3)] 

## What will this do?
mat3[-1, 1]

## Access the third and the first row and 
## returns its second and third values.
mat3[c(3,1),2:3]

##--------------------------------##
## Matrix Operations
##--------------------------------##

## Scalar multiplication
2 * mat3

## Arithmetic Operations
mat3 - t(mat3)
mat3 + t(mat3)
mat3 * t(mat3)
mat3 %*% t(mat3)

## Get the Identity matrix
## Get the inverse of the matrix
solve(mat3)
mat3%*%solve(mat3)

##---------------------------------------------------------------------------##
## DATA FRAMES
##---------------------------------------------------------------------------##

## METHOD ONE
## Create data frame with 2 columns: grade and vec1
df <- data.frame(vec1, grade)
df

## This produces the record on the second row 
## and second column of the data frame.
df[2, 2] 

## ## This produces records on row 3 to 5 
## that is only on the second column.
df[3:5, 1:2] 

## Call a column in a data frame
df$grade 

# OR
df[, 2]

## Look at columns' data types
class(df$grade)
class(df$vec1)

## Return the third grade
df$grade[3] 

## Create sub data frame with first 3 rows only
df1 <- df[1:3,]
df1

## METHOD TWO
## Create a new data frame with 3 rows and explore it
data <- data.frame(
  Name = c("Olayinka", "Eunice", "Imisioluwa"),
  Age = c(28, 22, 24),
  Height = c(1.67, 1.60, 1.66),
  Salary = c(125000, 120000, 100000)
)

##--------------------------------##
## Data frame Operators
##--------------------------------##

## Call a column in a data frame
df$grade 

## Call the data frame 
print(data) 

## Check the data type 
class(data)  

## Return the number of rows in the data frame
nrow(data)

## Return the number of columns in the data frame
ncol(data)  

## Check the dataframe and its structure
str(data)

## Return the names of the columns
names(data)

## OR
colnames(data)

## Returns the first 6 rows of a data
head(data, 2)  

## Returns the last 2 rows of a data
tail(data, 2)  

## Check the dimension of the data
dim(data)

## Understand summary statistics of the data frame
summary(data)

##--------------------------------##
## Appending data frames
##--------------------------------##

## Create another data frame with 2 rows
data1 <- data.frame(
  Name = c("Danie", "Abiodun"),
  Age = c(23, 26),
  Height = c(1.68, 1.69),
  Salary = c(75000, 110000)
)

## Use rbind and cbind to append new data

## rbind - A row bind appends new values in row fashion
df2 <- rbind(data, data1)
df2

## Create two new columns; Gender and LastName
Gender <- c("Male", "Female", "Female", "Male", "Male")
Gender <- factor(x = Gender, levels = c("Male","Female"))
LastName <- c("Arimoro", "Isijola", "James", "Akinola", "Sanni")

## cbind - A column bind appends new values in column fashion
df3 <- cbind(df2, Gender, LastName)
df3

## Renaming a column
colnames(df3)[1] <- "FirstName"

## OR
names(df3)[names(df3) == "Height"] <- "Height (Cm)"


##---------------------------------------------------------------------------##
## WORKING DIRECTORY
##---------------------------------------------------------------------------##

## Set working directory (tells R where to import files from/export files to)
## setwd("")

## Get the working directory
getwd()

## Save the data as a .csv file
write.csv(df3, "Employee-data.csv")


##---------------------------------------------------------------------------##
## LISTS
##---------------------------------------------------------------------------##

## Create a list with 4 objects
my_list <- list(grade, mat1, df, vec1)
my_list

## Accessing each object in the list

## Access the first and second objects
my_list[[1]]

my_list[[2]]

## (Ex.): Access the third and fourth objects


## Call the first row of 3rd list's objects.
my_list[[3]][1,]

## Change the names of the list
names(my_list) <- c("Vector", "Matrix", "Dataframe", "String")
my_list

## Access the vector object of the list
my_list$Vector

## What will be the output for this line of code?
my_list$Matrix[2, 1] 

## Add a new object to the list
my_list$Logical <- c(T, F, F, T, F, T)
my_list

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
## Missing Values
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##

## Create a new vector 
vec2 <- c(1, 2, NA, 10, 3)

## Check for missing values
is.na(vec2)
is.nan(vec2)

## Create a new vector
vec3 <- c(1, 2, NaN, NA, 4, 0/0)

## Check for missing values
is.na(vec3)
is.nan(vec3)

## Check for number of missing values
anyNA(vec3)
sum(is.na(vec3))

