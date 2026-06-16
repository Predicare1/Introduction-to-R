#############################################################
#############################################################
## Getting Started with R
#############################################################
#############################################################

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
## R Overview & Preliminaries
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##

## Print Hello World


##---------------------------------------------##
## Basic R Commands - Variable Assignments in R
##---------------------------------------------##

## Assign x to 4, y to 5 and z to 6


##------------------------------##
## Computations
##------------------------------##

## Add 20 to 5
20 + 5

## Add 9 to x
x + 9

## Add 19 to 5 and store it in a variable called y
y <- 19 + 5

## Find the square root of 225 and store it in a variable called y
y = sqrt(225)  #Square root function

## Find the square root of 225
sqrt(225)

##------------------------------##
## Calling variable in R
##------------------------------##

## Call y, see y value in console
y

## Call x, see x value in console
x

##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##
## Basic Data Types in R
##---------------------------------------------------------------------------##
##---------------------------------------------------------------------------##

## Set the variable x to 6 (Numeric Type)
x <- 6

## Set the variable w to "Hello" (Character Type)
w <- "Hello"
w

##---------------------------------------------##
## Note: R is case sensitive. 
## The variables 'z' and 'Z' can coexist
## in R environment and have different values.
##---------------------------------------------##

## Store z to the character 'World'
z <- "World"

## Store the value in a variable Z
Z <- 8

##------------------------------##
## Call Variables
##------------------------------##

## Call small z
print(z)
z

## Call capital Z
Z

### Adding Object Together
add <- x + Z
add

add1 <- x + y
add1


## What do you think will be the result of this?
c <- w + z
c

##------------------------------##
## Numeric
##------------------------------##

## Check the data type of the variable add
class(add)

## Set a variable num to 7.2
num <- 7.2

## Call the variable num
num

class(num)    ## This is used to check the data type of a variable

##------------------------------##
## Characters
##------------------------------##

## Check the data type of the variable w
class(w)

## Create a character variable from a numeric variable
char <- "12345"

## Call the char variable/string/text
char
class(char)

##------------------------------##
## Boolean/Logical
##------------------------------##

## Create a logical variable and set it as FALSE
logvariable <- FALSE

## Check the data type of log variable
class(logvariable)

##------------------------------##
## Factors
##------------------------------##

## Store university level in a variable called uni_fac
uni_fac <- factor(c("100L", "200L", "300L", "400L", "500L", "600L")) 
print(uni_fac)
uni_fac

## Check the data type
class(uni_fac)

## Check how many levels and the data type of the levels
levels(uni_fac)
nlevels(uni_fac)
class(levels(uni_fac))

##---------------------------------##
## Listing and removing variables
##---------------------------------##

## Check all variables and objects that have been defined
ls()

## Remove a variable 
rm(x)
