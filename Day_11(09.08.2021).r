#Day11:09.08.2021
library(naivebayes)
emp_data<- read.table("C:\\Program Files\\R\\R-4.1.0\\datasets\\emp1.txt",header = TRUE,sep =',')

str(emp_data)
emp_data$left=as.factor(emp_data$left)
emp_data$department=as.factor(emp_data$department)
emp_data$salary=as.factor(emp_data$salary)
summary(emp_data)
ind=sample(2,nrow(emp_data),replace=TRUE,prob=c(0.8,0.2))
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
print(testPred)
print(testData$left)
a=data.frame(name="Aish",satisfaction_level=0.80,last_evaluation=0.86,number_projects=5,
             average_monthly_hours=262,time_spent_company=6,work_accident=0,
             promotion_last_5_years=0,department="sales",salary="medium",salary_level=2)
result=predict(naive_model,a)
print(result)