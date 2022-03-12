#Day1 : 28.07.21
#Assignement and Basic Operartions
x=3
y=3
print(x+y)
z=x*y
print(z)
ls()
class(a)
class(x)
typeof(x)
15->x
x<-15

assign("x",10)
x

assign("s","Hello World")
s
class(s)
typeof(s)

b<-TRUE
b
typeof(b)
class(b)

is.numeric(x)
is.numeric(b)


#Type Casting(Expilicit and temporary)
as.numeric(b)
typeof(b)
typeof(as.numeric(b))
class(as.numeric(b))
class(b)


#inbuilt Functions
a=100.96
b=-16
abs(b)
sqrt(a)
ceiling(sqrt(a))
floor(sqrt(a))
round(sqrt(a),2)
round(sqrt(a),0)
factorial(abs(b))
factorial(abs(b+10))


#Other Functions
#sin,cos,tan,log.exp,etc....

#Extra Learning
ls()
rm(z)
ls()

#String Functions
s
substr(s,start=3,stop=7)
grep("l",s,ignore.case = FALSE)
y="llo"
y
grep(y,s,ignore.case = FALSE)
y="llow"
grep(y,s,ignore.case = FALSE)
grep("llo",s,ignore.case = FALSE)
sub("World","Everyone",s)
s

#Date
w=Sys.time()
x=Sys.info()
x
x=Sys.Date()
x
g=as.Date("2021-02-14")
g
Sys.Date()-g
g+200
w
as.time


#Day 2: 29.07.21
#input from User
a=as.integer(readline("Enter a:"))
a #By default input is a string
typeof(a)
b=readline("Enter name")
c="Hello World"
cat(c,b)


#operators-Arithmetic,Logical,Relational
x<-6
y<-3
x+y
x*y
t<-TRUE
f<-FALSE
n1=c(TRUE,TRUE,FALSE,TRUE)
n2=c(FALSE,TRUE,FALSE,FALSE)
n1&n2
n1&&n2
n1&t
n1&f
n1|n2
!n1
n1 & !n2
x<y
x>=y


#Vector,Sep,Req
ar=c(1,2,9,8,4,5,7,6,3)
ar[5]
ar(4:7)
ar[4:7]
ar[c(1,4,6)]
ar[c(2,4:7)]
s=seq(1,9,2)
s
t=seq(30,3,-3)
t
c=rep(c(1,2,3,4),4)
c
c=c[-16:-8]
c
c=scan(what=integer())
c
d=scan(what=integer())
length(c)
d

#Day3:30.07.2021-Vector Operations
a=c(2,4,6,7,8,9)
min(a)
max(a)
mean(a)
sd(a)
mean(rnorm(50))
b=rnorm(50)
b
mean(b)
sd(b)
d=rnorm(50,10,5)
mean(d)
sd(d)

#Vector Scanning
f=scan(what=integer())
f
c=scan(what=" ")
c
ch=scan(what=character())
ch

#Matrix
m1=matrix(seq(1,9,1),3,3,byrow = TRUE)
m1
diag(m1)
m2=matrix(seq(4:9),3,2)
m2
ta=m1+m2
m3=matrix(seq(1,9,1),3,3)
m1+m3
m1%%m3
m1*m3
t(m1)
m1[,c(1,3)]
m1[1:2,2:3]
m2
col=c(7,8,9)
m2=cbind(m2,col)
m2
m2[1:3,1:3]
colnames(m2)=c("c1","c2","c3")
m2
rownames(m2)=c("r1","r2","r3")
m2
m2=m2[-1,]
m2
row=c(1,2,3)
m2=rbind(m2,row)
m2


#list
li=list(a,c,n1)
li
li[4]=list(m1)
li[4]
li[[4]][2,]
li[[2]][3]
li=li[-2]
li

#Day4:31.07.2021
#Dataframes
a=c(1,2,3);
b=c("Sham","Danush","Jaga")
c=c(18,20,19)
df=data.frame(a,b,c)
df
colnames(df)=c("Sno","Name","Age")
df
d=c("CT","CT","IT")
df=cbind(df,d)
df
colnames(df)=("Dept")
df
colnames(df)=c("Sno","Name","Age","Dept")
df
birthyear=c(2002,2000,2001)
df=cbind(df,birthyear)
df


#Conditional Statements
typeof(df)
if(c[2]==22){
  print("Df is of type list")
}else{
  print("Not a List")
}

ifelse(c>=19,"Greater Number","Smaller Number")

c1=20
c2=30
if(c1==c2){
  print("Equal Numbers")
}else if(c1>c2){
  print("C1 is Greater")
}else if (c1<c2){
  print("C2 is greater")
}

#Switch
x=switch(4,"One","Two","Three","Four")
x
n1=10
n2=2
ch=3
print(switch(ch,n1+n2,n1-n2,n1*n2,n1/n2,n1%%n2))

#Day 5:02.08.2021

v=c(1,3,5,8)
for(i in v){
  print(i)
}

b=c("S","H","A","M")
c=c("Hello","World","From","R")
d=c(TRUE,TRUE,FALSE,TRUE)
for(i in 1:4){
  print(b[i])
}
ls=list(v,b,c,d)
for(i in ls){
  print(i)
}


#Even Number
for(i in 1:7){
  if(i %% 2 ==0) cat(i," : Even Nmber\n")
}

#Centigrate to farenhiet
for(cent in c(3,6,7,9)){
  f=cent*(9/5)+32
  ce=(f-32)*(5/9)
  print(c(cent,f,ce))
}

#Nested Loops
for(i in 1:3){
  for(j in 1:3){
    cat("i :",i," j :",j,"\n")
  }
}

#While
i=5
while(i<100){
  print(i)
  i=i*i
}

n=0
while(n<5){
  print(paste(n,Sys.time()))
  n=n+1
}

#Repeat
count=0
repeat{
  print(count)
  count=count+1
  if(count>3){
    break
  }
}

#Break
for(i in 1:5){
  if(i==4){
    break
  }
  print(i)
}

#Next
for(i in 1:5){
  if(i==4){
    next
  }
  print(i)
}

#Day 6:03.08.2021
#Data Importing and Exporting
#csv
st_data<-read.csv("C:\\Program Files\\R\\R-4.1.0\\datasets\\dropoutmlr.csv",header=TRUE)
print(st_data)
str(st_data)
head(st_data)
head(st_data,n=10)
tail(st_data)
tail(st_data,n=10)

dim(st_data)
length(st_data)
st_data[1:5,1:3]
st_data[,5]
#st_data <- st_data[-(3:17),]
st_data
#st_data <- st_data[,-(3:5)]
st_data
print(st_data$Origin)
print(st_data$GPA)
st_data$Origin <- as.factor(st_data$Origin)
st_data$Age <- as.factor(st_data$Age)
st_data$Gender <- as.factor(st_data$Gender)
st_data$HighSch <- as.factor(st_data$HighSch)
st_data$Dropout <- as.factor(st_data$Dropout)
str(st_data)

names(st_data)

str(st_data)

ls()
dim(st_data)
class(st_data$GPA)
levels(st_data$Origin)
levels(st_data$Age)
levels(st_data$Gender)
levels(st_data$HighSch)

write.csv(st_data,file="D:\\Kirran\\Study Materials\\DataAnalytics using R (Intern Files)\\Sample.csv")

summary(st_data)
print(st_data$GPA)
st_data[1:8,]
st_data$Origin=as.factor(st_data$Origin)
st_data$Age=as.factor(st_data$Age)
st_data$Gender=as.factor(st_data$Gender)
str(st_data)
summary(st_data)

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

#Day 9:06.08.21
library(dplyr)
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header = TRUE,sep =',')
print(emp_data)
head(emp_data)

sample_n(emp_data,10)
sample_frac(emp_data,0.5)
length(emp_data)
dim(emp_data)
select(emp_data,name,satisfaction_level,left)
select(emp_data,ends_with("level"))
select(emp_data,contains("salary"))
select(emp_data,starts_with("time"))

#Filters
filter(emp_data,salary_level==1)
filter(emp_data,salary_level==1 & left=="no")
filter(select(emp_data,name,satisfaction_level,left),left=="no")

#arrange(order by)
arrange(emp_data,satisfaction_level)
arrange(emp_data,desc(satisfaction_level))

#mutate
mutate(emp_data,time_spent=time_spent_company/3)
mut=mutate(emp_data,time_spent_company=time_spent_company/3)
mut

#summary
summary(emp_data)


#Join
df1=data.frame(customer_id=c(3:8),product=c("Oven","TV","Mobile","Light","Fan","Ironbox"))
df1
df2=data.frame(customer_id=c(2,4,6,7,10),state=c("California","Los Angles","Chicago","Washington","Newyork"))
df2
df=df1 %>% inner_join(df2,by="customer_id")
df
df=df1 %>% full_join(df2,by="customer_id")
df
df=df1 %>% left_join(df2,by="customer_id")
df
df=df1 %>% right_join(df2,by="customer_id")
df


#Day10:07.08.2021
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header = TRUE,sep =',')
print(emp_data)
head(emp_data)
emp_data$left=as.factor(emp_data$left)
emp_data$department=as.factor(emp_data$department)
emp_data$salary=as.factor(emp_data$salary)
str(emp_data)

#Bar plot
co=table(emp_data$left)
barplot(co)

#Bar plot-Adding titles,legends,colors
barplot(co,
        main="Employee Info",
        xlab="Turnover of Employee",
        ylab="No of employees",
        legend=rownames(co),ylim=c(0,30),
        col=c("Yellow","orange"))


#Histogram
nproj=emp_data$number_projects
hist(nproj,main="Projects Assigned",
     xlab="No of projects Assigned",
     ylab="No of employee",
     col="light blue")

#Plot
x=c(1,2,3,4,5)
y=c(3,6,10,15,20)
plot(x,y,main="Height and Weight",sub="For kids",
     xlab="Height",ylab="Weight")

lines(x,y,col="red")

#Pie Chart
slices=c(28,22,17,7,15,5)
lbls=c("Chennai","Delhi","Mumbai","Kolkata","Bengaluru","Hyderabad")
pie(slices,labels = lbls,main="Job Analaytics",col=rainbow(6))

#Box Plot
marks=c(25,34,40,45,50,55,58,60,63,65,67,77,79,85,89,95,97)
summary(marks)
boxplot(marks)

#Day11:09.08.2021
library(naivebayes)
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header = TRUE,sep =',')

str(emp_data)
emp_data$left=as.factor(emp_data$left)
emp_data$department=as.factor(emp_data$department)
emp_data$salary=as.factor(emp_data$salary)
summary(emp_data)
ind=sample(2,nrow(emp_data),replace=TRUE,prob=c(0.8,0.2))
#x=sample(2,nrow(emp_data),replace=TRUE,prob=c(0.5,0.5))
#x
emp_data[]
trainData=emp_data[ind==1,] 
testData=emp_data[ind==2,] 
print(trainData)
print(testData)
naive_model=naive_bayes(left ~ satisfaction_level+last_evaluation+number_projects
                        +average_monthly_hours+time_spent_company+work_accident+
                          promotion_last_5_years+department+salary+salary_level,
                        data=trainData,type="C-classification")
print(trainData)
plot(naive_model)
print(naive_model)
#predict on test Data
testData1 = testData[,-c(8)]
testData1
testPred=predict(naive_model,newdata = testData1)
predict()
print(testPred)
print(testData$left)
a=data.frame(name="Aish",satisfaction_level=0.80,last_evaluation=0.86,number_projects=5,
             average_monthly_hours=262,time_spent_company=6,work_accident=0,
             promotion_last_5_years=0,department="sales",salary="medium",salary_level=2)
result=predict(naive_model,a)
print(result)
