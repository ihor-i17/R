#Task1.1
insurance <- dbinom(x = 0:500, size = 500, prob = 0.002)
names(insurance) <- c (0:500 * 40000) 
View(round(insurance, 10))
#Task1.2
plot(c(0:500 * 40000), y = insurance, type = "l", xlab = "Величина виплат", 
     ylab = "Ймовірність величини виплат страхової компанії")
#Task1.3
pbinom(q = 2, size = 500, prob = 0.002)
#Task2
rbinom(n = 100, size = 100, prob = 0.25)
hist(rbinom(n = 100, size = 100, prob = 0.25),
  main = "Біномаільний закон розподілу")
#Task3
rpois(n = 100, lambda = 10)
plot(rpois(n = 100, lambda = 10), type = "s", col = "green", 
     ylab = "розподіл", main = "Закон розподілу Пуассона")
#Task4
rm(list = ls())
ppois(10, lambda = 7) - ppois(5, lambda = 7)
#Task5
ru = runif(n = 100, max = 100)
ru
hist(ru, main = "Гістограма", col = "lightblue")
plot(dunif(ru, min = 15, max = 25), type = "h", main = "Щільність розподілу")
plot(punif(ru, min = 15, max = 25), type = "h", main = "Функція розподілу")
#Task6
a = runif(n = 0:500, min = 50, max = 100)
names(a) = c(0:500)
a
hist(a, main = "Розподіл випадкових величин", col = "yellow")
#Task7
s = dexp(x = 0:500, rate = 105)
plot(s, type = "o", col = "orange",
  main = "Експоненційний закон розподілу")
#Task8
pexp(7, 0.1)
#Task9
m <- rnorm(200, mean = 0, sd = 1)
m
#Task10
w = seq(14, 70, by = 1)
plot(w, dnorm(w, 20, 87), type = "s", col = "blue",
     main = "Нормальний закон розподілу")
plot(w, dnorm(w, 20, 87))