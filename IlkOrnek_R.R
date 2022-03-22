veriseti <- read.csv("fin500.csv")
head(veriseti,15) #verisetinin ilk 15 satırını göster(# bu işaret ile yorum yazabilirsin, program çalıştırmaz).
tail(veriseti,15) #verisetinin son 15 satırını göster.
str(veriseti)
summary(veriseti)

veriseti$Industry <- as.factor(veriseti$Industry)
str(veriseti)
summary(veriseti)

veriseti$Inception <- as.factor(veriseti$Inception)
summary(veriseti)

veriseti$State <- as.factor(veriseti$State)
summary(veriseti)

veriseti$Expenses <- gsub(" Dollars", "", veriseti$Expenses)
veriseti$Expenses <- gsub(",", "", veriseti$Expenses)
veriseti$Expenses <- as.numeric(veriseti$Expenses)
summary(veriseti)
veriseti$Growth <- gsub("%", "", veriseti$Growth)
veriseti$Growth <- as.numeric(veriseti$Growth)

veriseti$Growth <- as.numeric(gsub("%", "", veriseti$Growth)) #üstteki iki işlemi bir kerede böyle parantez içinde de yapabiliriz.
summary(veriseti)

veriseti$Revenue <- gsub("\\$", "", veriseti$Revenue)  #dolar işaretinin r karakteri değil normal dolar işareti oldğunu tanımladık.
str(veriseti)
summary(veriseti)
veriseti$Revenue <- as.numeric(gsub(",", "", veriseti$Revenue))
str(veriseti)
summary(veriseti)

veriseti$City <- as.factor(veriseti$City)
summary(veriseti)
str(veriseti)
