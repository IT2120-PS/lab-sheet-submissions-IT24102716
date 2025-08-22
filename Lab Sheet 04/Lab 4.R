setwd("C:/Users/it24102716/Desktop/IT24102716")
getwd()

data<- read.table("DATA 4.txt", header=TRUE,sep = " ")
fix(data)
attach(data)

str(data)
sapply(data, class)

boxplot(data$X1, main = "Boxplot of sales", ylab = "sales", col = "lightblue", border = "darkblue")

fivenum(data$X2)


get.outliers <- function(x){
  q1 <- quantile(x)[2]
  q3 <- quantile(x)[4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  lb <- q1 - 1.5*iqr
  
  print(paste("Upper bound = ", ub))
  print(paste("Lower bound = ", lb))
  print(paste("Outliers: ", paste(sort(x[x<lb | x>ub]), collapse = ",")))
  
}

get.outliers(data$X3)

