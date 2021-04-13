
#statistik : ilmu pengumpulan data, menganalisa data,mendapatkan informasi
# statistik : estimasi karakteristik populasi
# parameter : nilai karakteristik populasi/karakteristik sebenarnya

#jenis2 skala pengukuran data : kualitatif(nominal, ordinal), kuantitatif (inteval, rasio)

#read csv
data <- read.csv("data_intro.csv", sep=";")
data

#cek tipe data 
str(data)

#mengubah tipe data
data$ID.Pelanggan <- as.character(data$ID.Pelanggan)
#cek perubahan
str(data$ID.Pelanggan)

data$Jenis.Kelamin <- as.factor(data$Jenis.Kelamin)
str(data$Jenis.Kelamin)
data$Produk <- as.factor(data$Produk)
data$Tingkat.Kepuasan <- as.factor(data$Tingkat.Kepuasan)
data$Nama<-as.factor(data$Nama)
str(data)

#Modus
library(pracma)
Mode(data$Produk)

#median
median(data$Pendapatan)

#mean
mean(data$Harga)

# mean sebaiknya digunakan jika tidak ada outlier. Sebaliknya jika ada outlier, maka sebaiknya menggunakan Median

#ukuran sebaran data
#range
max(data$Jumlah)-min(data$Jumlah)

#varians
#Varians merupakan simpangan kuadrat data dari nilai rata-ratanya.  
var(data$Pendapatan)

#simpangan baku/standar deviasi (sd)
#Simpangan baku adalah simpangan data dari nilai rata-ratanya
#SD unutk melihat keakuratan estimasi, semakin kecil semakin akurat
sd(data$Jumlah)

#analisis deskriptif
summary(data)

#visualisasi
plot(data$Jenis.Kelamin) #plot untuk factor
hist(data$Pendapatan)#untuk int
