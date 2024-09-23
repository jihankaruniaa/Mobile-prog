/*void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings'; // mengubah nilai 'fifth' menjadi string

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon'; // mengubah nilai 18 menjadi string

  print(gifts);
  print(nobleGases);
}*/

void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'nama': 'Jihan Karunia Putri',
  'nim': '2241720031',
  };

  var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  19: 'Jihan Karunia Putri',
  20: '2241720031',
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  mhs1['nama'] = 'Jihan Karunia Putri';
  mhs1['nim'] = '2241720031';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  mhs2[1] = 'Jihan Karunia Putri';
  mhs2[2] = '2241720031';

  print(mhs1);
  print(mhs2);
}