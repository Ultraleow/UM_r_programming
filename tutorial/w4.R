a1<- c(3,4,5)

if(a1[1] > a1[2]  && a1[1]>a1[3]){
  sprintf("%i first element is the biggest",a1[1])
}else if(a1[2]>a1[1] && a1[2]>a1[3]){
  sprintf("%i Second element is the biggest",a1[2])
}else {
  sprintf("%i Third element is the biggest",a1[3])
}
install.packages(lubridate)
a2<-c(0:6)
switch(a2[4], "Monday", "Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")

a3<-'f'
if(a3 %in% LETTERS[1:26]){
  print("Upper Case")
}else{
  print("Lower Case")
}

a41<-2000
a42<-1900
leapyear<-function(a){
  if(a%%4==0 || a%%400==0){
    if(a%%100!=0 || a%%400==0){
      return("LEAP YEAR")
    }
    print("Not Leap year")
  }
}
leapyear(a41)
leapyear(a42)

#=======================
#Q2
b1<- -1
n<- 1
while(b1<2000){
  n<-n+1
  b1<-n**3
}
n

b21<-c(1:25)
b22<-c(25:1)
counter<-1
result<-0
for (number in b21){
  result<-result+(b21[counter]/b22[counter])
  counter<-counter+1
}
round(result, 2)

b3<-c(1:10)
prev2<- 0
prev1<- 0
for (i in b3){
  if(i==1){
    print(i)
    prev2<-0
    prev1<-1
  }
  else{
    print(prev1+prev2)
    temp<-prev2
    prev2<-prev1
    prev1<-prev1+temp
  }
} 

#====================
#q3
multiPrint<-function(n,c){
  for (x in c(1:n)){
    print(c)
  }
}
range(3)
multiPrint(3,"a")

check3mul<-function(a=1,b=1,c=1){
  if((a*b)==c){
    return(TRUE)
  }
  return(FALSE)
}
check3mul()
check3mul(3,4,12)
check3mul(2,2,5)

sq<-function(n){
  return((sqrt(n)*sqrt(n))==n)
}
sq(3)
sq(4)

checkDouble<-function(){
  lis<-c()
  while (TRUE){
    n<-round(runif(1, min=1, max=10))
    if (n %in% lis){
      lis<-append(lis,n)
      print(lis)
      return(n)
    }
    lis<-append(lis,n)
  }
  
}
checkDouble()

#===================
#q4
return12<-function(a){
  return(c(a[0],a[-1]))
}
return12(c(2,5,8))

returs<-function(a,b){
  return(head(a,b))
}
i1<- data.frame(
  ProductCode<-c("SK020","SK042","SK013","SK066","SK079"),
  ProductName<-c("Enfagrow A+","Ayamas Nuget Crispy","100 Plus","Ali Cafe","Dettol Natural"),
  Price<-c(36.79,9.99,6.49,8.99,4.99),
  stringsAsFactors = FALSE
)
returs(i1,2)

returerow<-function(a,b){
  return(a[b,])
}
returerow(mtcars,"Volvo 142E")

returecolumn<-function(a,b){
  return(a[,b])
}
returecolumn(mt.Ucars,"mpg")

#=====================
#5
e<- data.frame(
  EID<-c(1:8),
  EXP1<-round(runif(8, min=1, max=1000)),
  EXP2<-round(runif(8, min=1, max=1000)),
  EXP3<- round(runif(8, min=1, max=1000))
)
e<- data.frame(
  EID<-c(1:8),
  EXP1<-sample(1:1000,8),
  EXP2<-sample(1:1000,8),
  EXP3<-sample(1:1000,8)
)
colnames(e)<-c("EID","EXP1","EXP2","EXP3")
setwd("C:/Users/ultra/Desktop/UM/UM DS Sem 1/Programming/Tutorial")
write.csv(e,"numtest.csv")

f<-read.csv("numtest.csv")
f<-f[,-1]
f
for (i in 1:ncol(f)){
  print(mean(f[,i]))
}
#





x<-list(bob=c(2),john=c("a"),mike=c(TRUE))
x$mike
x[3]
x[[3]]
x["mike"]

x<-c(1,2,3)
y<-c(7,8,9)
z<-rbind(x,y)
z
class(c(4,TRUE))

m<-matrix(c(12:1),nrow=3,ncol=4)
m
m[3,2]

aaaa<-aaa
