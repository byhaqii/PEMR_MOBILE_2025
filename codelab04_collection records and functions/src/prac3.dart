// void main() {
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

// var nobleGases = {
//   2: 'helium',
//   10: 'neon',
//   18: 2,
// };

// print(gifts);
// print(nobleGases);
// }

void main() {

  var gifts = {
    // Key : Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print("Step 1: Initial Maps");
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Add Name and NIM
  gifts['name'] = "Muhammad Rizal Al Baihaqi";
  gifts['nim'] = "2341720225";

  nobleGases[99] = "Muhammad Rizal Al Baihaqi";
  nobleGases[100] = "2341720225";

  mhs1['name'] = "Muhammad Rizal Al Baihaqi";
  mhs1['nim'] = "2341720225";

  mhs2[99] = "Muhammad Rizal Al Baihaqi";
  mhs2[100] = "2341720225";

  print("\nStep 3: After updating and adding Name & NIM");
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");
  print("mhs1: $mhs1");
  print("mhs2: $mhs2");
}