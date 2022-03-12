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
