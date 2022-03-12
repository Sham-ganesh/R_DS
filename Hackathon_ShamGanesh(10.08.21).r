#Hackathon-Sham Ganesh
car_data<-read.csv("C:\\Program Files\\R\\R-4.1.0\\datasets\\cars.csv",header=TRUE)
head(car_data,n=10)
library(dplyr)
library(naivebayes)

#2.
dim(car_data)
str(car_data)
summary(car_data)
typeof(car_data$Transport)
car_data$Transport=as.factor(car_data$Transport)

#3.
filter(car_data,Transport=="Car")
select(car_data,Age, Gender, Salary, Distance, Transport)
car_data$bonus=car_data$Salary * 0.1
car_data
mean(car_data$Salary)
sd(car_data$Salary)
var(car_data$Salary)

#4.
#Histogram
samp1=car_data$Work.Exp
hist(samp1,main="Work Experience",
     xlab="No of working years",
     ylab="No of employee",
     col=2)

#Bar plot
samp2=table(car_data$Gender)
barplot(samp2,
        main="Gender Chart",
        xlab="Gender of employees",
        ylab="No of employees",
        col=c("Red","Orange"))

samp3=table(car_data$Salary,car_data$Work.Exp)
barplot(samp3,
        main="Work Experience Vs Salary",
        xlab="Work Experience",
        ylab="Salary")

#Box Plot
samp4=car_data$Distance
boxplot(samp4,
        main="Distance Plot")

samp5=car_data$Salary
boxplot(samp5,
        main="Salary Plot")

#1.
#traindata
trainData=select(car_data,Age,Gender,Work.Exp,Salary,Distance,license,Transport) 
print(trainData)
naive_model=naive_bayes(Transport~ Age+Gender+Work.Exp+Salary+Distance+license,
                        data=trainData,type="C-classification")
plot(naive_model)
print(naive_model)
#predict on test Data
test=data.frame(Age=30,Gender="Male",Work.Exp=5,Salary=20,Distance=7,license=1)
result=predict(naive_model,test)
print(result)
