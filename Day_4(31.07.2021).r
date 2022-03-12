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