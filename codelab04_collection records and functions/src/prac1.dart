// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main() {
  final list = List<String?>.filled(5, null); // list with 5 elements, all null
  list[0] = "Muhammad Rizal Al Baihaqi";
  list[1] = "2341720225";

  print(list);
}