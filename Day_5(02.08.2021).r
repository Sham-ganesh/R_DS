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
