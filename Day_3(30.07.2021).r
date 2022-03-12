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