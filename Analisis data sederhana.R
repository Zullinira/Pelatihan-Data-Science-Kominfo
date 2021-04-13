#hipotesis nihil (Ho): berlawanan dengan teori
#hipotesis alternatif (Ha) : sesuai teori

#p-value :pelunag terkecil menolak Ho
#alpha : tingkat kesalahan

#Grafik scatter plot untuk melihat arah hubungan, poisitif dan negatif.
#analisis korelasi adalah untuk menguji/konfirmasi hubungan 2 vaiabel

#scatter plot
plot(data$Pendapatan, data$Total)
#hungan positif 

#uji korelasi
cor.test(data$Pendapatan, data$Total)

#chisquare test : melihat hubungan kategori dengan kategori
table(data$Produk, data$Tingkat.Kepuasan)
chisq.test(table(data$Produk, data$Tingkat.Kepuasan))

#t-test : untuk menguji kategorik dan numerik
boxplot(Total~Jenis.Kelamin, data=data)
t.test(Total~Jenis.Kelamin,data=data)
