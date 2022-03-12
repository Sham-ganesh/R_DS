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