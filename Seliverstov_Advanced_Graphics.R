#1. Встановіть пакет vcd. Завантажте таблицю Arthritis, яка є частиною інстальованого пакету. 
#Таблиця містить дані клінічного випробування, що досліджувало нове лікування ревматоїдного артриту.
install.packages("vcd")
library("vcd")
data("Arthritis")
head(Arthritis)

#2. Побудуйте прості стовпчикові вертикальну та горизонтальну діаграми частоти різної реакції.
improved <- table(Arthritis$Improved)
improved
par(mfrow = c(1, 2))
barplot(improved, main = "Вертикальна стовпчикова діаграма",
        xlab = "Покращення", ylab = "Частота", col = "blue")
barplot(improved, main = "Горизонтальна стовпчикова діаграма",
        xlab = "Частота", ylab = "Покращення", col = "yellow", horiz = TRUE)

#3. Побудуйте стовпчикові діаграми з вертикальним та горизонтальним розподілом на підгрупи.
counts<-table(Arthritis$Improved, Arthritis$Treatment)
counts
par(mfrow = c(1,2))
barplot(counts, main = "Стопвчикова діаграма з верт розбиттям",
        xlab = "Лікування", ylab = "Частота", col = c("lightyellow", "lightgreen", "red"),
        legend = rownames(counts))
barplot(counts, main = "Стовпчикова діаграма з гориз розбиттям",
        xlab = "Лікування", ylab = "Частота", col = c("lightyellow", "lightgreen", "red"),
        legend = rownames(counts), beside = TRUE)

#4. Побудуйте спінограми
attach(Arthritis)
counts <- table(Treatment, Improved)
spine(counts, main = "Приклад спінограми")
detach(Arthritis)

#5. Використовуючи  R  команди  для  базової  візуалізації,  відтворіть  такий  графік
head(InsectSprays)
str(InsectSprays)
par(mfrow = c(1, 2))
boxplot(InsectSprays$count, main = "Effectivenes of Spray",
        xlab = "All Sprays", ylab = "Count", col = "lightblue")
boxplot(InsectSprays$count~InsectSprays$spray,
        main = "Effectivenes by Spray", xlab = "Type of Sprays",
        ylab = "Count", col = "lightyellow")

#6. Для  датасету mtcars побудуйте  вдосконалені діаграми  розмахів  (boxplot), 
#порівнявши витрати пального для автомобілів з чотирма, шістьма та вісьмома циліндрами.
mtcars
par(mfrow = c(1,1))
boxplot(mpg ~ cyl, data = mtcars, notch = TRUE, varwidth = TRUE, col = "seagreen",
        main = "Інформація про авто", xlab = "Число циліндрів", ylab = "Витрати пального")

#7. дослідити витрати пального від типу трансмісії автомобіля (механічна чи автоматична).
mtcars$cyl.f <- factor(mtcars$cyl,
                       levels=c(4,6,8),
                       labels=c("4ц", "6ц", "8ц"))
mtcars$am.f <- factor (mtcars$am,
                       levels=c(0,1),
                       labels=c("AT", "MT"))
boxplot(mpg~am.f*cyl.f,
        data=mtcars,
        varwidth = TRUE,
        col=c("lightblue", "lightyellow"),
        main = "Витрати пального",
        xlab = "Тип трансмісії авто")

#8. Побудуйте модифікацію діаграм витрат пального для автомобілів з циліндрами – скрипкові діаграми.
install.packages("vioplot")
library(vioplot)
y1 <- mtcars$mpg[mtcars$cyl==4]
y2 <- mtcars$mpg[mtcars$cyl==6]
y3 <- mtcars$mpg[mtcars$cyl==8]
par(mfrow = c(1,1))
vioplot(y1, y2, y3, names=c("4 циліндра", "6 циліндрів", "8 циліндрів"),
        col = "lightblue")
title("Скрипкові діаграми витрат пального")