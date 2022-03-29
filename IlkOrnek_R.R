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
veriseti[!is.na(veriseti$Industry), ] #is na olmayan verilerden yeni bir veri seti oluştur onları dahil etme

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
