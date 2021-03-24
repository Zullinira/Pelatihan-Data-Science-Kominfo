#membuat chart atau grafik bisa dengan menggunakan bawaan R atau dengan package ggplot2

#memanggil package ggplot2
library(ggplot2)

#membuat tabel data yang ingin digunakan
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")

info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa

#membuat chart 
gambar <- ggplot(info_mahasiswa,aes(x=fakultas,y=jumlah_mahasiswa,fill=fakultas))
#aes = untuk mengambil data apa saja
#fill = untuk mengisi kolom dengan warna


gambar <- gambar + geom_bar(width=1, stat="identity")
# tanda (+)untuk menggabungkan objek dengan objek ggplot
#width=lebar tiap bar
#stat =transformasi data yang perlu dilakukan
#identity = menampilkan apa adanya

gambar
                        

#membuka file xls
library(openxlsx)
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")
print(mahasiswa)

print(mahasiswa$Prodi)

#membuat grafik dari file xlx
#membuat kanvas
gambar1 <- ggplot(mahasiswa, aes(x=Fakultas, y=JUMLAH, fill=Fakultas))
gambar1<-gambar1 + geom_bar(width=1,stat="identity")
gambar1

#membuat grafik tiap tahun
#menghitung jumlah data by fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH,by=list(kategori=mahasiswa$Fakultas, tahun=mahasiswa$ANGKATAN),FUN=sum)

summarybyfakultas <- setNames(summarybyfakultas,c("fakultas","tahun","jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun=as.factor(summarybyfakultas$tahun)

ggplot(summarybyfakultas,aes(x=fakultas,y=jumlah_mahasiswa))+geom_bar(stat = "identity",aes(fill=tahun),width =0.8,position = position_dodge(width = 0.8))+theme_light()

#membuat pie chart
piechart<-ggplot(summarybyfakultas,aes(x="",y=jumlah_mahasiswa,fill=fakultas))+geom_bar(width = 1,stat = "identity")

piechart<- piechart+coord_polar("y",start=0)
piechart <-piechart+ggtitle("Distribusi Mahasiswa per Fakultas")
piechart <-piechart+scale_fill_brewer(palette="Greens")+theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title = "Fakultas"))
piechart <- piechart+ylab("Jumlah Mahasiswa")
piechart

#filtering =menambah operator %in%
#hanya tampilkan fakultas ITC dan ilmu komunikasi
ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),], aes(x=fakultas, y=jumlah_mahasiswa)) + geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) +  theme_classic() 
