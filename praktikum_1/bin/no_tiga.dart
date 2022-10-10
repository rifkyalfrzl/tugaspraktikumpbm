void main(List<String> args) {
  List<String> list = [];
  List<int> myList = [1, 2, 3, 4, 5];
  // mengganti elemen dalam list
  // myList[0] = 10;

  // // menambah elemen dalam list
  // list.add(5);

  // // memasukan kumpulan data kedalam list
  // list.addAll(myList);

  // //menyisipkan elemen kedalam list (index, element)
  // list.insert(2, 50);

  // // menyisipkan elemen kedalam list di index tertentu
  // list.insertAll(3, [100, 200]);

  // //menghapus element dalam list
  // list.remove(200);

  // //menghapus element tertentu dalam list
  // list.removeWhere((number) => number % 2 != 0);

  // //mengecek element dalam list
  // if (list.contains(5)){
  //   print("Ada");
  // } else {
  //   print("Tidak ada");
  // }

  // menampilkan semua elemen dalam list
  myList.forEach((bilangan) {
    print(bilangan);
  });

  //map
  list = myList.map((number) => "angka" + number.toString()).toList();

  // menampilkan hasil mapping
  list.forEach((str) {
    print(str);
  });

  //Set
  var setKota = <String> {};
  setKota.add('Jakarta');
  setKota.add('Bandung');
  setKota.add('Karawang');
  print(setKota);
  
}
