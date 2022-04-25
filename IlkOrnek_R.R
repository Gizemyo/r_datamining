veriseti <- read.csv("fin500.csv", na.strings = c(""))
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

amelia #missing valueler için program. Install'dan yüklenecek ama sorun var benim pcde.
head(veriseti, 25)

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
veriseti$Industry <- as.factor(veriseti$Industry)
str(veriseti)
summary(veriseti)

veriseti$Inception <- as.factor(veriseti$Inception)
summary(veriseti)

veriseti$State <- as.factor(veriseti$State)
str(veriseti)
summary(veriseti)

complete.cases(veriseti) #veri seti tamsa true, değil ve na'lar varsa false dönüyor.
dim(veriseti) #verinin boyutunu gösterir, kaç satır kaç sütun var.500 saır 11 sütun

veriseti[3,] #sadece 3.satırı göster demek.
veriseti[,2] #sadece2.sütun
veriseti[complete.cases(veriseti),] #başına ! koyarsan tersi anlamına geliyor. Tüm sütunu göster oldu incorelate olduüundan

veriseti$Revenue == 9746272 #geliri 9 milyon... olanları göster, doğruysa true yanlışsa false dönecek. Ama na'da döndü çünü na baskın

veriseti[veriseti$Revenue == 9746272, ] #ikinci satır üçüncü sütun getir der gibi kullanıyoruz bu fomülü. öyle olanları getirecek satır olarak

which(veriseti$Revenue == 9746272) #indis döner, hangi data satırındaki 9746272dir diyoruz onu getiriyor. Na sorunundan kaçınmak için. Naları göz ardıe diyor bu koşulu sağlayan satırı veriyor
veriseti[which(veriseti$Revenue == 9746272), ]
is.na(veriseti$Expenses) #sadece na olaraı görmek için
veriseti[is.na(veriseti$Expenses), ]

 #missing dataları içeren rowları kaldıracağız
backup <- veriseti #veriseti için ayrı dosya oluşturduk yedekledik yani verileri kaldırmadan önce.

veriseti[!complete.cases(veriseti), ]
veriseti[is.na(veriseti$Industry), ]
veriseti[!is.na(veriseti$Industry), ] #is na olmayan verilerden yeni bir veri seti oluştur onları dahil etme

veriseti <- veriseti[complete.cases(veriseti),]  #verisetinde complete olanlarla tekrar veri oluşturuyor

veriseti <- backup #sildiğimizi geri aldık
veriseti[!is.na(veriseti$Industry), ] # industryde is na olmayan verilerden yeni bir veri seti oluştur onları dahil etme

veriseti <- read.csv("fin500.csv", na.strings = c(""))
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

amelia #missing valueler için program. Install'dan yüklenecek ama sorun var benim pcde.
head(veriseti, 25)

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
veriseti$Industry <- as.factor(veriseti$Industry)
str(veriseti)
summary(veriseti)

veriseti$Inception <- as.factor(veriseti$Inception)
summary(veriseti)

veriseti$State <- as.factor(veriseti$State)
str(veriseti)
summary(veriseti)

complete.cases(veriseti) #veri seti tamsa true, değil ve na'lar varsa false dönüyor.
dim(veriseti) #verinin boyutunu gösterir, kaç satır kaç sütun var.500 saır 11 sütun

veriseti[3,] #sadece 3.satırı göster demek.
veriseti[,2] #sadece2.sütun
veriseti[complete.cases(veriseti),] #başına ! koyarsan tersi anlamına geliyor. Tüm sütunu göster oldu incorelate olduüundan

veriseti$Revenue == 9746272 #geliri 9 milyon... olanları göster, doğruysa true yanlışsa false dönecek. Ama na'da döndü çünü na baskın

veriseti[veriseti$Revenue == 9746272, ] #ikinci satır üçüncü sütun getir der gibi kullanıyoruz bu fomülü. öyle olanları getirecek satır olarak

which(veriseti$Revenue == 9746272) #indis döner, hangi data satırındaki 9746272dir diyoruz onu getiriyor. Na sorunundan kaçınmak için. Naları göz ardıe diyor bu koşulu sağlayan satırı veriyor
veriseti[which(veriseti$Revenue == 9746272), ]
is.na(veriseti$Expenses) #sadece na olaraı görmek için
veriseti[is.na(veriseti$Expenses), ]

#missing dataları içeren rowları kaldıracağız
backup <- veriseti #veriseti için ayrı dosya oluşturduk yedekledik yani verileri kaldırmadan önce.

veriseti[!complete.cases(veriseti), ]
veriseti[is.na(veriseti$Industry), ]
veriseti[!is.na(veriseti$Industry), ] #is na olmayan verilerden yeni bir veri seti oluştur onları dahil etme

veriseti <- veriseti[complete.cases(veriseti),]  #verisetinde complete olanlarla tekrar veri oluşturuyor

veriseti <- backup #sildiğimizi geri aldık başka yolla yapmak için. <- bu eşittir demek
veriseti <- veriseti[!is.na(veriseti$Industry), ] # veri seti üzerinde is na olmayan verilerden yeni bir veri seti oluştur onları dahil etme

row.names(veriseti) #3. satırı sildik program kendi IDsindeki sıralamada 2den 4e mi atladı bakıcaz
row.names(veriseti) <- 1:nrow(veriseti) #sıralamayı düzelttik 1,2,3,4 diye

#kayıp verilerin değiştirilmesi

head(veriseti, 25) #verinin 25 sütununa baktık incelemek için

veriseti[is.na(veriseti$State) & veriseti$City == "New York", ] #statei na olan ve şehri new york olanları getir. Her iki koşulun da sağlanması lazım & ile
veriseti[is.na(veriseti$State) & veriseti$City == "New York", "State"] <- "NY" #state ismini gördüğün data table'a NY yaz demek.
veriseti[11, ]
veriseti[is.na(veriseti$State) & veriseti$City == "San Francisco", ]
veriseti[is.na(veriseti$State) & veriseti$City == "San Francisco", "State"] <- "CA"
veriseti[82, ]

#employeesdeki eksik verieri dolduracağız. Bunu yaparken endüstriye göre yapacağız.
summary(veriseti$Employees) #employees sütununundaki verileri özetliyor.

median(veriseti[ ,"Employees"]) #içinde na olduğu için medianı na gösterdi
median(veriseti[ ,"Employees"], na.rm = T) #na olanalrı katmadan medianı hesaplattık. T yerine TRUE yazılabilir
med_emp_ret <- median(veriseti[veriseti$Industry == "Retail" ,"Employees"], na.rm = T) #med_emp_ret employeelerden retailer olanların medyanı demek öyle kısalttık 
veriseti[is.na(veriseti$Employees) & veriseti$Industry == "Retail", ]
veriseti[is.na(veriseti$Employees) & veriseti$Industry == "Retail", "Employees"]<- med_emp_ret
veriseti[3, ]
med_emp_finanservices <- median(veriseti[veriseti$Industry == "Financial Services", "Employees"], na.rm = T)
veriseti[is.na(veriseti$Employees) & veriseti$Industry == "Financial Services", "Employees"] <- med_emp_finanservices

#revenue ve growth için sektör ortalaması ile doldurabilirsin. exp rev pro. üçü de yoksa sektör medyan ortalamasından bulursun. yoksa birbirinden çıkar. Sektör geliri benzerse aritmetik ortalama

summary(veriseti)
summary(veriseti$Growth)
median(veriseti[ ,"Growth"])#bunun na çıkması gerekimiyor mu neden hesapladı????
median(veriseti[ ,"Growth"], na.rm = T)

med_grow_cons <- median(veriseti[veriseti$Industry == "Construction" ,"Growth"], na.rm = T)

veriseti[is.na(veriseti$Growth) & veriseti$Industry == "Construction", ]
veriseti[is.na(veriseti$Growth) & veriseti$Industry == "Construction", "Growth"]<- med_grow_cons

head(veriseti, 25)
summary(veriseti$Revenue)
median(veriseti[ ,"Revenue"])
median(veriseti[ ,"Revenue"], na.rm = T)
med_rev_cons <- median(veriseti[veriseti$Industry == "Construction" ,"Revenue"], na.rm = T)
veriseti[is.na(veriseti$Revenue) & veriseti$Industry == "Construction", ]
veriseti[is.na(veriseti$Revenue) & veriseti$Industry == "Construction", "Revenue"]<- med_rev_cons
veriseti[8, ]
veriseti[44, ]
veriseti[42, ]

veriseti[is.na(veriseti$Expenses) & !is.na(veriseti$Revenue),] # expensei na olan revenuesi na olmayan veriler
veriseti[is.na(veriseti$Expenses) & !is.na(veriseti$Revenue),"Expenses"] <- veriseti[is.na(veriseti$Expenses) & !is.na(veriseti$Revenue),"Revenue"] - veriseti[is.na(veriseti$Expenses) & !is.na(veriseti$Revenue),"Profit"] #revenue-profit yapıp expensi bulduk
veriseti[15, ] #bu rowun expensini yazmış mı baktık gördük
veriseti[8, ] # baktım ama bunun profiti dolu olmadığı için expensei hesaplamamış
veriseti[42, ] #baktım ama bunun profiti dolu olmadığı için expensei hesaplamamış

#Normal Dağılım
#caret package indirilerek devam edildi. Ben indiremiyorum
#[ , 3:5] böyle yazarsak 3,4,5 i alır, yani c(3:5), istediğimizi de yazabiliriz > c(1,3,5)
#  alt alta ikişer $$ içine yazdığın şeyler matematiksel formülasyon olarak görülür

getwd()
library(caret) #load caret package
#Load the dataset
data(iris)
str(iris)
#summarize dataset from between the 1th and 4th column
summary(iris[,1:4])
#calculate the pre-process parameters from the dataset
?preProcess
#defines what are the benefits of preProcess package

preprocessParams <- preProcess(iris[,1:4], method=c("scale")) 

#scale fonksiyonu her bir gözlemi o serinin standart sapmasına göre oranlar.

print(preprocessParams)

#transform the dataset using the parameters

scaled <- predict(preprocessParams, iris[, 1:4])

#summarized the transformed dataset
summary(scaled)

#calculate the pre-process parameters from the dataset
#center fonksiyonu her bir değişkenin ortalamalarından çıkartılmış halini bize verir.

preProcessparams <- preProcess(iris[, 1:4] , method=c("center","scale"))

normalized <- predict(preprocessParams, iris[, 1:4])

#calculate the pre-process parameters from the dataset
preprocessParams <- preProcess(iris[, 1:4], method=c("YeoJohnson"))
print(preprocessParams)
yeojohnson <- predict(preProcessparams, iris[, 1:4])
#summarize the transformed dataset

summary(yeojohnson)

# resampling yapacağız
library(caret) #load caret package
data(iris) #Load the dataset
train_control <- trainControl(method="boot", number = 100) # Boolstrap yöntemi ile 100 örneklem oluştur.

#load the libraries
library(caret)
# load the iris dataset
data(iris)
# define an 80%/20% train/test split of the dataset
split=0.80
trainIndex <- createDataPartition(iris$Species, p=split, list=FALSE)
data_train <- iris[trainIndex,]#80e 20 böldü bu 80lik kısım. 5 fold olmuş yani. en uygun test datası nerden onu hesaplamaya çalışıyor. Veriyi her taraftan inceliyor
data_test <- iris[-trainIndex,] #başına eksi koyunca onun dışındakileri getiriyor. [2, ] [-2, ] aynı mantık. Bu 20lik kısım o yüzden


# Leave One Out Cross Validation (LOOCV)
library(caret)
#load the iris dataset
data(iris)
#define training control
train_control <- trainControl(method="LOOCV")

#k-Fold Cross Validation

#load the library
library(caret)
#load the iris dataset
data(iris)
#define training control
#k fold number => number
train_control <- trainControl(method="cv", number=10)

#Repeated Cross Validation

library(caret)
#load the iris dataset
data(iris)
train_control <- trainControl(method="repeatedcv", number=10, repeats=3)
library(caret)
data(iris)
str(iris)
summary(iris[,1:4]) #tüm satırların ve 1 ve 4 arasındakileri aldık C(1,3,5) 1. 3. ve 5. sütunları aldık
#calculate fotoğraf çektim bak
preProcessParams <- preProcess(iris[,1:4], method=c("scale")) #preProcess altındaki scale'i çağırdık, herbir gözlemi oraki 
#standart sapmaya oranlıyor. $$ $$ arasına matematik yani latex kodları yazılır. 
print(preProcessParams)

#herbir değeri standart sapmaya oranlayarak buluyor
scaled <- predict(preProcessParams, iris[,1:4]) #predict fonskiyonunu iris 1:4 e yaz dedik
summary(scaled)

preProcessParams <- preProcess(iris[,1:4], method=c("center")) #xi-xmü yapıyor
print(preProcessParams)

centered <-  predict(preProcessParams, iris[,1:4])
summary(centered)

preProcessParams <- preProcess(iris[,1:4], method=c("center", "scale")) #standardizasyon yaptık
print(preProcessParams)

standardized <- predict(preProcessParams, iris[,1:4])
summary(standardized)

preProcessParams <- preProcess(iris[,1:4], method=c("range")) #normalizasyon yaptık formuülleri yaz
print(preProcessParams)

normalized <- predict(preProcessParams, iris[,1:4])
summary(normalized)

preProcessParams <- preProcess(iris[,1:4], method=c("BoxCox"))
print(preProcessParams)

boxcox <- predict(preProcessParams, iris[,1:4])
summary(boxcox)

preProcessParams <- preProcess(iris[,1:4], method=c("YeoJohnson"))
print(preProcessParams)

yeojohnson <- predict(preProcessParams, iris[,1:4])
summary(yeojohnson)
getwd()
library(caret) #load caret package
#Load the dataset
data(iris)
str(iris)
#summarize dataset from between the 1th and 4th column
summary(iris[,1:4])
#calculate the pre-process parameters from the dataset
?preProcess
#defines what are the benefits of preProcess package

preprocessParams <- preProcess(iris[,1:4], method=c("scale")) 

#scale fonksiyonu her bir gözlemi o serinin standart sapmasına göre oranlar.

print(preprocessParams)

#transform the dataset using the parameters

scaled <- predict(preprocessParams, iris[, 1:4])

#summarized the transformed dataset
summary(scaled)

#calculate the pre-process parameters from the dataset
#center fonksiyonu her bir değişkenin ortalamalarından çıkartılmış halini bize verir.

preProcessparams <- preProcess(iris[, 1:4] , method=c("center","scale"))

normalized <- predict(preprocessParams, iris[, 1:4])

#calculate the pre-process parameters from the dataset
preprocessParams <- preProcess(iris[, 1:4], method=c("YeoJohnson"))
print(preprocessParams)
yeojohnson <- predict(preProcessparams, iris[, 1:4])
#summarize the transformed dataset

summary(yeojohnson)

# resampling yapacağız
library(caret) #load caret package
data(iris) #Load the dataset
train_control <- trainControl(method="boot", number = 100) # Boolstrap yöntemi ile 100 örneklem oluştur.

#load the libraries
library(caret)
# load the iris dataset
data(iris)
# define an 80%/20% train/test split of the dataset
split=0.80
trainIndex <- createDataPartition(iris$Species, p=split, list=FALSE)
data_train <- iris[trainIndex,]#80e 20 böldü bu 80lik kısım. 5 fold olmuş yani. en uygun test datası nerden onu hesaplamaya çalışıyor. Veriyi her taraftan inceliyor
data_test <- iris[-trainIndex,] #başına eksi koyunca onun dışındakileri getiriyor. [2, ] [-2, ] aynı mantık. Bu 20lik kısım o yüzden


# Leave One Out Cross Validation (LOOCV)
library(caret)
#load the iris dataset
data(iris)
#define training control
train_control <- trainControl(method="LOOCV")

#k-Fold Cross Validation

#load the library
library(caret)
#load the iris dataset
data(iris)
#define training control
#k fold number => number
train_control <- trainControl(method="cv", number=10)

#Repeated Cross Validation
