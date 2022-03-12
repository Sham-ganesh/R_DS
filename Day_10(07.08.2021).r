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