#1
a <-c(3 , 4)
a<- 3+5
a<- a+100

#2
b<-100
print("Calculate the price after discount")
sprintf("The price of item is %d", b)
sprintf("The price of item after 50%% discount is %.2f", (b*0.5))
sprintf("The price of item after 30%% discount is %.2f", (b*0.3))
sprintf("The price of item after 10%% discount is %.2f", (b*0.9))

#3
c1<-c(157:164)
c2<-seq(from=10,by=-1,length.out=10)
c3<-append(seq(from=-1071,by=-1,length.out=5),seq(from=-1074,by=1,length.out=4))
#(-1071:-1075,-1074:-1071)
c4<-seq(from=1.5,by=1,length.out=5)

#4
d<-c(0.15, 1.30, 3.45, 5.75)
d1<-as.integer(d)
d2<-as.character(d)

#5
e1 <- c("Ali","Abu","Ahmad","Bala","Chong",15,17,10,8,19)
e2 <- c("Ali","Abu","Ahmad","Bala","Chong",5,4,3,5,4)
mat1 <- matrix(e1,nrow=2,ncol=5,byrow=TRUE)
mat2 <- matrix(e2,nrow=2,ncol=5,byrow=TRUE)
total_mark_abu <- as.integer(mat1[2,2])+as.integer(mat2[2,2])
total_mark_abu
total_mark_perc_abu <- (as.integer(mat1[2,2])+as.integer(mat2[2,2]))/30
total_mark_perc_ali <- (as.integer(mat1[2,1])+as.integer(mat2[2,1]))/30
total_mark_perc_ahmad <- (as.integer(mat1[2,3])+as.integer(mat2[2,3]))/30
total_mark_perc_Bala <- (as.integer(mat1[2,4])+as.integer(mat2[2,4]))/30
total_mark_perc_Chong <- (as.integer(mat1[2,5])+as.integer(mat2[2,5]))/30
format(round(total_mark_perc_ali, 2), nsmall = 2)
format(round(total_mark_perc_abu, 2), nsmall = 2)
format(round(total_mark_perc_ahmad, 2), nsmall = 2)
format(round(total_mark_perc_Bala, 2), nsmall = 2)
sprintf(total_mark_perc_Chong, fmt = '%#.2f')  
#cat(paste0(sprintf("%s: %.2f", names(Mtut1), (Mtut1+Mtut2)/30*100),"%"), sep = "\n")

#6
f1<-seq(from=11,by=1,length.out=10)
f2<-seq(from=11,by=2,length.out=5)
f3<-seq(from=20,by=-2,length.out=5)
f4<-seq(from=1,by=1,length.out=11)^2

#7
g1<-rep("W", times = 1, length.out = 10, each = 1)
g2<-rep(c("R","S"), times = 1, length.out = 5, each = 3)
g3<-letters[1:5]
paste0("Player",seq(from=1,by=1,length.out=10))

#8
sprintf(24.12*2.54, fmt = '%#.2f')  

#9
h<-sample(51:100,10)
h_result<-c()
for (val in h){
  if(val %% 2 == 0)
    h_result <- c(h_result, val)
}
h_result
even = num[i=num%%2 ==0]
vec <- num[which(num%%2==0)]

