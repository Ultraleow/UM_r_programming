#q1
a = list(1:10,"R Programming","HTML")
a1 = length(a)
a_row1_length = length(a[[1]])
a_row2_length = nchar(a[[2]])
print(a_row1_length)
print(a_row2_length)
install.packages(lubridate)

#q2
b1 = list("x", "y", "z")
b2 =  list("x", "y", "z", "X", "Y", "Z")
b3 <- setdiff(b2,b1)
b3

#q3
c1 = list("G022", "G003", "G013", "G007", "G012")
c_temp = unlist(c1)
c_number<-substr(c_temp, nchar(c_temp[1])-1, nchar(c_temp[1]))
c_second = c1[[2]]
c2<-append(c1,"G018")
c3<-list(sort(unlist(c2)))

#y <- c("G022", "G003", "G013", "G007", "G012")
#print(length(y))
#print(y[2])
#y <- append(y,"G018")
#sort(unlist(y))

#q4
d1<-c(33,55,66)
d2<-c(11,32,62)
d3<-c(86,12,32)
d4<-c(90,21,43)
dm<-matrix(c(d1,d2,d3,d4),4,3)
d5<-seq(from=1,length.out=4)
#wrong dm2<-cbind(dm,d5)
dm2<-rbind(dm,d5)
dm2<-t(dm2)

#q5
e1 <- matrix(c(1:12),3,4)
e2 <- matrix(c(13:24),3,4)
e3 <- e1 %*% t(e2)
e3

#q6
f1 <- matrix((1:20),10,2)
f1[c(6:10),]
f1[max((nrow(f1)-4),1)::nrow(Q6),]
tail(f1, 5)

#7
g1<-matrix(c(2,4,2,2),2,2)
g2<-g1
g2_d<- ((g1[1,1]*g1[2,2])-g1[1,2]*g1[2,1])
g2[1,2]<- g2[1,2]*-1
g2[2,1]<- g2[2,1]*-1
g2[2,2]<- g1[1,1]
g2[1,1]<- g1[2,2]
g2<- (g2)/g2_d
g3 <- g1%*%g2
g3

A <- matrix(c(2,4,2,2),2,2)
B <- solve(A)
B %*% A

#8
h1<-nrow(mtcars)
h2<-ncol(mtcars)
h3<-mtcars[3,5]
h3
h4<-mtcars[3,"drat"]
h4
h5<-mtcars["Volvo 142E",]
h5
h6<-mtcars[,"mpg"]
h6
h7<-mtcars[,c("hp","qsec")]
h7

#9
i1<- data.frame(
  ProductCode<-c("SK020","SK042","SK013","SK066","SK079"),
  ProductName<-c("Enfagrow A+","Ayamas Nuget Crispy","100 Plus","Ali Cafe","Dettol Natural"),
  Price<-c(36.79,9.99,6.49,8.99,4.99),
  stringsAsFactors = FALSE
  )
i2<-i1[order(i1$ProductName),]
i2
i3<-summary(i1$Price)["Min."]
i3
i4<-summary(i1$Price)["Max."]
i4


#df1=df[order(df$Price),][,2:3]
#df2=df1[c(1,dim(df1)[1]),]



i5<- rbind(i1,c("SK023", "Johnson PH", 5.99))
i5
i6 <- i1[with(i1,Price>8.00),]
i6
i7 <- i1[substr(i1$ProductName, 1,1)=="A", ]
i7

print(sum(startsWith(i5$ProductName, "A")))
#print(nrow(df[startsWith(i5$ProductName, "A")]))
