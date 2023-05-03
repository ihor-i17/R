#1
#Відтворіть графік, який складено за даними датасету women з базової інсталяції R.
data("women")
head(women)
str(women)
plot(x = women$height, y = women$weight, main = "American Women-weight vs Height",
     xlab = "Height", ylab = "Weight", col = "blue", pch = 19, cex = 1)

#2
#В R є вбудований датасет Nile. Цей датасет містить річний потік води в річці Ніл з 1871 до 1971 року. 
#З використанням функції plot та її параметрів:
data("Nile")
#1) зобразити графік залежності величини річкового потоку за роками;
#2) додати заголовок для графіка: «Nile River Annual Flow», підпис осі x: «Year» і підпис осі y: «Flow»;
plot(Nile, col = 'blue', xlab = "Year", ylab = "Flow")
#3) обчислити середнє значення річкового потоку додати на графік горизонтальну лінію, яка відображає 
#середній потік за всі роки і підпис «Average Flow» з підрахованим середнім потоком.
mean(Nile)
abline(h = mean(Nile))
title(main = "Nile River Annual Flow", sub = "Average Flow: 919.35", line = 2)

#3
#В датасеті cars наведено швидкість і гальмівну відстань. 
#Зобразіть дані на точковому графіку і проведіть аналіз отриманих результатів.
data(cars)
plot(x = cars$speed, y = cars$dist, main = "Speed vs. Stopping Distance", 
     xlab = "Speed", ylab = "Stopping Distance",
     col = "black", pch = 20, col.lab = "blue", col.main = "red", tck = 1)

#4
#Використайте датасет rivers (R Base). Створіть графік, який містить зображення річок щодо їх індексу 
#в даних. Додайте підпис осі Y: «Length in miles». Додайте заголовок червоним кольором у два рядки: 
#«Length of Major N. American Rivers». Точки зобразіть зеленим кольором.
data(rivers)
plot(rivers, col = "green", pch = 20, xlab = "River index", ylab = "Length in miles")
title("Length of \n Major N. American Rivers\n", adj = 0.5, col.main = "red")

#5
#Створіть вектор з таких чисел: 60 85 72 59 37 75 93 7 98 63 41 90 5 17 97
#і побудуйте для такого вектору гістограму та стовпчикову діаграму, розмістивши їх в один ряд. 
#В чому буде полягати відмінність?
vec <- c(60, 85, 72, 59, 37, 75, 93, 7, 98, 63, 41, 90, 5, 17, 97)
par(mfrow = c(1,2))
hist(vec, main="Histogram of Vector", col.main="green", 
     xlab="Value", ylab="Frequency", font.main = 3, col = rainbow(length(vec)))
barplot(vec, col.main="blue", main="Barplot of Vector", font.main = 3, 
        col = rainbow(length(vec)), xlab="Index", ylab="Value")
#6
#З допомогою команди rnorm(100) згенеруйте 100 випадкових чисел з нормальним розподілом. 
#Створіть дві гістограми з двома різними наборами чисел по 100 елементів з нормального розподілу, 
#використавши команду наведену вище. Чи гістограми будуть однаковими?
par(mfrow = c(1,2))
x <- rnorm(n = 100, mean = 10, sd = 5)
hist(x, breaks = 20, col = "green", main = "Histogram 1")
y <- rnorm(n = 100, mean = 10, sd = 5)
hist(y, breaks = 20, col = "lightblue", main = "Histogram 2")

#7
#Завантажте дані з файлу firtree.csv. Побудуйте стовпчикову діаграму розподілу кількості хвойних 
#дерев у числовому та відсотковому форматі з різними відтінками зеленого кольору.
tree <- read.csv("C:/Users/Игорь/Desktop/КНТЕУ/4.2 Інструментальні засоби БА (R)/П-9/firtree.csv")
tree <- na.omit(tree)
View(tree)
View(unique(tree$ftype))
par(mfrow = c(1,1))
barplot(table(tree$ftype))
par(mfrow = c(1,2))
barplot(table(tree$ftype), main = "Хвойні дерева", xlab = "Види дерев", ylab = "Частота",
        col = c("forestgreen", "green4", "springgreen3", "springgreen4"))
tab <- table(tree$ftype)/sum(table(tree$ftype))*100
tab
barplot(tab, main = "Хвойні дерева", xlab = "Види дерев", ylab = "Частота, %",
        col = c("forestgreen", "green4", "springgreen3", "springgreen4"))

#8
#Побудуйте гістограму для висоти дерев. Додайте до гістограми заголовок, змініть 
#колір і підпишіть осі координат.
par(mfrow = c(1,1))
hist(tree$height, col = "lightgreen", main = "Histogram of height",
     xlab = "Height (in cm)", ylab = "Counts")

#9
#Побудуйте кругову діаграму розподілу типів хвойних дерев. Змініть кольори діаграми на власні.
perc <- round(tab, 2)
perc
pie(perc, col = c("lightblue", "lightgreen", "lightyellow", "pink"), main = "Хвойні дерева")

#10
#Додайте до кругової діаграми значення розподілу дерев у відсотках. Додати легенду.
lbls <- paste(perc, "%", sep = "")
pie(perc, col = c("forestgreen", "darkolivegreen1", "springgreen3", 
                  "lightseagreen"), main = "Хвойні дерева",
    labels = lbls)
legend(x = 0.5, y = 1.1, as.character(unique(tree$ftype)),
       fill = c("forestgreen", "darkolivegreen1", "springgreen3", 
                "lightseagreen"), cex = 0.6)