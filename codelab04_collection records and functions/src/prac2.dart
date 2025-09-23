// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }

void main() {
  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = <String, String>{}; 

  // Using add()
  names1.add("Muhammad Rizal Al Baihaqi");
  names1.add("2341720225");

  // Using addAll()
  names2.addAll({"Muhammad Rizal Al Baihaqi", "2341720225"});

  print(names1); 
  print(names2); 
  print(names3); 
}