bool isPrime(int n) {
  // Bilangan prima harus lebih besar dari 1
  if (n <= 1) {
    return false;
  }
  // Cek pembagi dari 2 sampai akar kuadrat dari n
  for (int i = 2; i * i <= n; i++) {
    // Jika n bisa dibagi oleh i, maka n bukan bilangan prima
    if (n % i == 0) {
      return false;
    }
  }
  // Jika tidak ditemukan pembagi, maka n adalah bilangan prima
  return true;
}

void main() {
  // Ganti dengan nama dan NIM Anda
  String namaLengkap = "Muhammad Rizal Al Baihaqi";
  String nim = "2341720225";

  print("Mencari bilangan prima dari 0 sampai 201ﬁ");
  print("===========================================");

  // Loop dari angka 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    // Panggil fungsi isPrime untuk mengecek setiap angka
    if (isPrime(i)) {
      // Jika hasilnya true, tampilkan angka, nama, dan NIM
      print('$i adalah bilangan prima: $namaLengkap - $nim');
    }
  }
}