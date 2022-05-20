void main(List<String> arguments) {
  print("------soal pertama------");
  cekKata();
  print("------soal kedua------");
  penjumlahanDiagonal();
}

//soal pertama
void cekKata() {
  String kata = 'Katak';
  List k = kata.split('');
  List d = [];
  int o = k.length - 1;
  for (var i = 0; i < k.length; i++) {
    if (k[i] == k[o]) {
      d.add(k[i]);
    }
    o--;
  }
  print('kata yang di maksud : $kata');
  if (k.join() != d.join()) {
    print('kata Sama: false');
  } else {
    print('Kata Sama: true');
  }
}

//soal kedua
void penjumlahanDiagonal() {
  List data = [
    ['11', '2', '4'],
    ['4', '5', '6'],
    ['10', '8', '12']
  ];
  print('Jumlahkan diagonal kekanan, A = ${penjumlahanKana(data)}');
  print('Jumlahkan diagonal kekiri, B = ${penjumlahanKiri(data)}');
  print(
      'Jumlahkan kedua hasil diagonal A + B = ${penjumlahanKana(data) + penjumlahanKiri(data)}');
}

int penjumlahanKana(List value) {
  int data = 0;
  List da = [];
  for (var i = 0; i < value.length; i++) {
    da = value[i];
    for (var o = 0; o < da.length; o++) {
      if (i == o) {
        data = data + int.parse(da[o]);
      }
    }
  }
  return data;
}

int penjumlahanKiri(List value) {
  int data = 0;
  List da = [];
  int values = value.length - 1;
  for (var i = 0; i < value.length; i++) {
    da = value[i];
    data = data + int.parse(da[values]);
    values--;
  }
  return data;
}
