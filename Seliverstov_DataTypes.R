#task1
vector1 <- c("apple", "banana", "cherry", "date", "elderberry")
vector2 <- c(3, 7, 1, 8, 2)
names(vector2) <- c("A", "B", "C", "D", "E")
cbind(vector1, vector2)
#task2
m<-c ("Kyiv", "Lviv", "Dnipro", "Odesa", "Kharkiv")
n<-c (1, 3, 5, 7, 8, 9, 12, 18, 19, 25, 28, 29, 32)
x<-m
x[length(x)]<-NA
m
x
x<-n
x[length(x)]<-NA
n
x
#task3
g <- c(1, 0, 2, 3, 6, 8, 12, 15, 0, NA, NA, 9, 4, 16, 2, 0)
g[1]
g[length(g)]
g[3:5]
g[g == 2]
g[g > 4]
g[g %% 3 == 0]
g[g > 4 & g %% 3 == 0]
g[g < 1 | g > 5]
which(g == 0)
which(g >= 2 & g <= 8)
which((! g < 2) & (! g > 8))
#task4
d<-rep(c("S", "I", 17, 04), 20)
d
#task5
M <- matrix(3, nrow=3, ncol=4)
M
M[1,3]<-4
M[2,1]<-1
M[3,2]<-NA
M[3,4]<-1
M
#task6
MA <- matrix(sample(1:20, 12), nrow = 3, ncol = 4)
MA
row1 <- 2 * MA[1,]
row2 <- -3 * MA[2,]
row3 <- 5 * MA[3,]
B_vec <- c(row1, row2, row3)
MB <- matrix(B_vec, nrow=3, ncol=4, byrow=TRUE, dimnames=list(c("row1", "row2", "row3"), c("col1", "col2", "col3", "col4")))
MB
#task7
a <- c(1, 3, 4, 9, NA)
b <- c(5, 6, 7, 0, 2)
c <- c(9, 10, 13, 1, 20)
m_cols <- cbind(a, b, c)
m_cols
m_rows<- rbind(a, b, c)
m_rows
M7 <- m_rows 
colnames(M7) <- c("a", "b", "c", "d", "e")
rownames(M7) <- c("r1", "r2", "r3")
M7
#task8
name1 <- c("unsatisfactory", "satisfactory", "good", "excellent")
name2 <- c("Philosophy",	"Jurisprudence",	"Foreign language",	"Office computer", "Technology")
name3 <- c("FIT, Group 1", "FIT, Group 2", "FIT, Group 3")
V <- c(1, 8, 16, 5, 0, 15, 15, 0, 2, 3, 10, 15, 5, 20, 5, 0, 3, 8, 13, 6, 1, 5, 10, 3, 0, 5, 18, 5, 2, 5, 15, 18, 2, 2, 0, 20, 8, 12, 1, 10, 2, 0, 12, 0, 1, 10, 20, 2, 3, 8, 12, 20, 0, 1, 0, 15, 7, 12, 5, 9)
AR <- array(V, dim=c(4, 5, 3), dimnames = list(name1, name2, name3))
AR
#task9
names <- c("Jane", "Michael", "Mary", "George")
ages <- c(8, 6, 28, 45)
gender <- c(0, 1, 0, 1)
info <- list(names = names, ages = ages, gender = gender)
info
info$names[2]
info$gender
names(info) <- c("Name", "Age", "Gender")
info$Name
drinks <- c("juice", "tea", "rum", "coffee")
info$drinks <- drinks
info[[4]]
info[[1]] [5]<-"John"
info[[2]] [5]<-2
info[[3]] [5]<-1
info[[4]] [5]<-"milk"
info
names(info[4])<-"drinks"
info
#task10
mtcars
mini_mtcars <- mtcars[c(3,7,10,12, nrow(mtcars)),]
mini_mtcars