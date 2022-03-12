#Day8:05.08.21
#User Defined Functions from different files
xyz=function(x){
  k=abc(x)+1
  return (k)
}

#This abc function can be placed in different file.
#But the source must be given in calling file.
abc=function(a){
  k=a+5
  return (k)
}

xyz(40)

#Apply
m=matrix(c(2,3,4,5),2,2)
print(m)
m1=apply(m,1,sum)
print(m1)
m1=apply(m,2,sum)
print(m1)

#Lapply
list=list(a=c(1,2),b=c(3,4),c=c(5,6))
ls=lapply(list,sum)
print(ls)
ls=lapply(list,max)
print(ls)
ls=lapply(list,mean)
print(ls)
ls=lapply(list,min)
print(ls)

sw=c("SAS","R","Python","SPSS")
sww=lapply(sw,tolower)
sww
sww=lapply(sw,toupper)
sww

lapply(list,sort)
lapply(list,range)

vapply(list,sum,FUN.VALUE=double(1))


#Kirran
#Function in different fie

source("C:\\Users\\PLK\\Documents\\fun1.R")

XYZ <- function(x){
  k<- ABC(x)+1
  return(k)
}

XYZ(40)


#apply
m<- matrix(c(2,4,5,8),2,2)
m
apply(m,1,sum)
apply(m,2,sum)
apply(m,1,mean)
sd
var

#Lapply
list<- list(a=c(2,3), b=c(4,5), c=c(6,7))
lapply(list,sum)
lapply(list,mean)
lapply(list,min)
lapply(list,max)

sw <- c("SAS","R","PYTHON","SPSS")
sw_lower <- lapply(sw, tolower)
sw_lower
sw_upper <- lapply(sw,toupper)
sw_upper
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header= TRUE,sep =',')
print(emp_data)
min_val<-(lapply(emp_data[,c(3,4,5)],min))
print(min_val)

#sapply
list<-list(a=c(1,1),b=c(2,2),c=c(3,3))
sapply(list, sum)
list<-list(a=c(1,2), b=c(1,2,3),c=c(1,2,3,4))
sapply(list,range)
list<-list(a=c(5,3),b=c(5,4,1),c=c(6,8,2,4))


#Tapply
age <-c(23,33,28,21,20,19,34)
gender<-c("m","m","m","f","f","f","m")
f<-factor(gender)
f
tapply(age, f, mean)

#vapply
list<-list(a=c(1,1),b=c(2,2),c=c(3,3))
vapply(list,sum,FUN.VALUE = double(1))


emp_data<-read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header=TRUE,sep=',')
print(emp_data)
str(emp_data)
emp_data<-emp_data[,2:7]
emp_data
apply(emp_data,2,max)
apply(emp_data,2,FUN=min)
apply(emp_data,2,FUN=range)