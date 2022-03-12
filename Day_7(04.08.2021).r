#Day7:04.08.21
emp_data=read.table("C:\\Users\\rani\\Downloads\\emp.txt",header=TRUE,sep=",")
head(emp_data)
str(emp_data)
head(emp_data)
head(emp_data,n=8)
tail(emp_data)
tail(emp_data,n=10)

dim(emp_data)
length(emp_data)
emp_data[1:4,]
emp_data[,5]
summary(emp_data)
emp_data$left=as.factor(emp_data$left)
emp_data$salary=as.factor(emp_data$salary)
emp_data$department=as.factor(emp_data$department)
left=subset(emp_data,left="yes")
reside=subset(emp_data,left="no")
write.table(left,file="D:\\left.txt")

a=c(1,2,3)
b=c("One","Two","Three")
x=data.frame(a,b)
dput(x,file="D:\\data.r")
z=dget("D:\\data.r")
print(r)

#Kirran
#Text Files
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header = TRUE,sep =',')
print(emp_data)
head(emp_data)
head(emp_data,n=7)
tail(emp_data)
tail(emp_data,n=7)
dim(emp_data)
str(emp_data)
length(emp_data)
emp_data[1:4,]
emp_data[1:5,1:5]
emp_data[,4]
print(emp_data$name[10:14])
summary(emp_data)
emp_data$left = as.factor(emp_data$left)
emp_data$department= as.factor(emp_data$department)
emp_data$salary =as.factor(emp_data$salary)
emp_data$salary_level= as.factor(emp_data$salary_level)
str(emp_data)
summary(emp_data)
dim(emp_data)
left <- subset(emp_data,left=="yes")
left
reside <- subset(emp_data,left="no")
reside
dim(left)
dim(reside)
left = subset(emp_data,left=="no", select = c(name,left))
print(left)
write.table(left,file = "D:\\Kirran\\Study Materials\\DataAnalytics using R (Intern Files)\\left.txt")

a<-c(1,2,3)
b<-c("one","two","three")
x<-data.frame(a,b)
print(x)
dput(x,file = "D:\\Kirran\\Study Materials\\DataAnalytics using R (Intern Files)\\data.r")
z<-dget("D:\\Kirran\\Study Materials\\DataAnalytics using R (Intern Files)\\data.r")
print(z)



#User Defined Functions
fun <-function(a,b)
{
  a=a+b;
  return(a)
}

y<-fun(2,3)
print(y)

power<- function(x){
  y <-x^2
  print(y)
  return(y)
}

power(6)
y
x

#Return more than one value
fun<-function(a,b){
  r1 = a+b;
  r2 = a-b;
  return(list(r1,r2))
}


fun(2,3)
