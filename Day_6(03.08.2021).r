#Session 6
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