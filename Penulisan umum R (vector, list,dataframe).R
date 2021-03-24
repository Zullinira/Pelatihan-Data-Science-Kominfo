
print("Hallo")
print(1+5)

#menulis angka
9*3
print(9*3)

01 #keluar jadi 1 
"01"

#membuat function pada R
#function pada R merupak wadah untuk membuat urutan angka maupun teks
c(10:40)

#membuat variabel
santi <- 68
santi

x <-5
y<-2
c <- x+y
c

#vector = jenis data dengan tipe data sama
c(4,5,6)
angka <- c(4:8)
angka
angka1 <-c(2,3,4)
angka1

nama <-c("Zulli", "ya","dwi")
print(nama)

#index pada vector
a <- c(2:7)
print(a[3])

#vektor lain
nilai <-c(statistik =89, fisika=95, ilkom=100)
print(nilai)

#list=dapat menyimpan lebih dari 1 jenis data
list1<-list(2,"budi,3")
list1

kota<- c(nama_kota="makassar", provinsi="Sulawesi Selatan",luas_km=199.3)
kota

#dataframe =untuk representasi table
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)
info_mahasiswa

#Buat vectorbaru sebagai representasi akreditasi
akreditasi<-c("A", "A", "B", "A","A")
info_mahasiswa<-data.frame(fakultas,jumlah_mahasiswa,akreditasi)

#Buat data frame dari ketiga vector di atas
info_mahasiswa

#Menampilkan kolom jumlah_mahasiswa pada dataframe
info_mahasiswa$jumlah_mahasiswa

#Menampilkan kolom fakultas
info_mahasiswa$fakultas
