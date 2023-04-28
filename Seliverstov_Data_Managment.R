#Task1
data(Orange)
str(Orange)
summary(Orange)
Orange$year <- ifelse(Orange$age < 366, 0,
                      ifelse(Orange$age >= 366 & Orange$age < 732, 1,
                             ifelse(Orange$age >= 732 & Orange$age < 1097, 2,
                                    ifelse(Orange$age >= 1097 & Orange$age < 1463, 3, 4))))
circumference_4<-c()
for(i in 1: nrow(Orange))
{
  if(Orange$year[i] == 4)
  {
    circumference_4<-append(circumference_4, Orange$circumference[i])
  }
}
circumference_4
#Task2
for (i in 1:nrow(mtcars)) 
{
  if (mtcars$carb[i] >= 4 || mtcars$cyl[i] > 6) 
  {
    mtcars$new_var[i] <- 1
  } 
  else 
    {
      mtcars$new_var[i] <- 0
  }
}
mtcars
#Task3
for (i in 1:nrow(mtcars)) 
{
  if (mtcars$carb[i] >= 4 || mtcars$cyl[i] > 6) 
  {
    mtcars$new_var[i] <- 1
  } 
  else 
  {
    mtcars$new_var[i] <- 0
  }
}
mtcars
newvar<-mtcars$new_var
newvar
sernewvar<-mean(newvar)
sernewvar
{
  if (sernewvar>0.7)
  {
    result<- "My mean is great"
  }
  else
  {
    result<- "My mean is not great"
  }
}
result
#Task4
good_months <- c()
index <- 1
for (i in 2: length(AirPassengers))
{
  if(AirPassengers[i]>AirPassengers[i-1])
  {
    good_months[index] <- AirPassengers[i]
    index <- index+1
  }
}
good_months
AirPassengers
#Task5
df <- data.frame(var1=c(11,21,31), var2=c(12,22,32),
                 var3=c(13,23,33), var4=c(14,24,34),
                 row.names = c("case1", "case2", "case3"))
df
#5.1
dfg <- df[c(1), c(1:4)]
dfg
#5.2
dfk <- df[c(2), c(1:4)]
dfk[dfk>22]
#5.3
dfl <- df[c(0), c(1,3)]
#5.4
df['Y'] = c(-1,0,1)
df
#5.5
ds <- df [-2, ]
ds
#5.6
df[,2] = df [,2]^3
df
#Task6
n <- readline(prompt = "Enter number of elements: ")
k <- rep(NA, n)
k
for(i in 1:n) {
  if(i %% 2 == 0) {
    k[i] <- 1
  } 
  else 
  {
    k[i] <- 0
  }
}
k
#Task7
smart_squares <- function(x) 
{
  if (is.numeric(x)) 
  {
    return(x^2)
  } 
  else 
  {
    return(rep(NA, length(x)))
    print("Your vector is not numeric")
  }
}
smart_squares(c(1, 3, 5, 7, 9))
smart_squares(c("phone", "music"))