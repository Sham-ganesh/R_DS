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