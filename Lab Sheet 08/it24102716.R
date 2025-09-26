setwd('C:\\Users\\it24102716\\Desktop\\it24102716')
getwd()

data<- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Question 1

pop_mn<-mean(Weight)
pop_mn
pop_var<-var(Weight)
pop_var

#Question 2

sample<-c()
n<-c()
for (i in 1:25) {
  s<-sample(Weight,6,replace=TRUE)
  sample<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

#Question 3

samplemean<-mean(s.means)
samplemean
samplevars<-var(s.means)
samplevars

truevar=popvar/6
truevar
samplevars

