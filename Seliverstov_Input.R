# Завдання 1

name = readline(prompt = "What is your name? ");
cat("Hello, ", name, "!", sep = "")

# Завдання 2

num1 <- as.numeric(gsub(",", ".", readline("Введіть перше дробове число: ")))
num2 <- as.numeric(gsub(",", ".", readline("Введіть друге дробове число: ")))
cat("Сума:", num1, "+", num2, "=", num1+num2)

# Завдання 3

kmh <- as.numeric(readline("Введіть швидкість в км/год: "))
ms <- kmh / 3.6
cat("Швидкість в м/с: ", ms)

# Завдання 4

my_data = read.csv("C:/Users/Игорь/Desktop/КНТЕУ/4.2 Інструментальні засоби БА (R)/Seliverstov_Input_4.csv", header = TRUE)
print(my_data)

# Завдання 5

product_name <- c("iPhone 13", "Samsung Galaxy S21", "Xiaomi Redmi Note 11 Pro", "Google Pixel 6", "OnePlus 10")
units_sold <- c(100, 75, 120, 50, 80)
unit_price <- c(1200, 1000, 600, 800, 900)

sales_data <- data.frame(Product = product_name, Units_Sold = units_sold, Unit_Price = unit_price)
print(sales_data)

sales_data <- data.frame(Product = character(), Units_Sold = numeric(), Unit_Price = numeric())
sales_data <- edit(sales_data)
print(sales_data)

write.table(sales_data,"C:/Users/Игорь/Desktop/КНТЕУ/4.2 Інструментальні засоби БА (R)/Seliverstov_Input_5.txt" , sep="\t", quote=FALSE, row.names=FALSE)
file.show("sales_data.txt")
write.xlsx(sales_data, "C:/Users/Игорь/Desktop/КНТЕУ/4.2 Інструментальні засоби БА (R)/Seliverstov_Input_5.xlsx" )
