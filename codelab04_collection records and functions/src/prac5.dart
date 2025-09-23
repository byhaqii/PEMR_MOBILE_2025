// void main() {
//   // A record with positional and named fields
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }


// (int, int) swap((int, int) record) {
//   // destructure positional fields from the record
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var original = (10, 20);
//   var swapped = swap(original);
//   print('original: $original');
//   print('swapped:  $swapped');
// }

// void main() {
//   // Annotate the record type as (String, int) and initialize it
//   (String, int) mahasiswa = ('Muhammad Rizal Al Baihaqi', 2341720225);
//   print(mahasiswa);
// }

void main() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // Access positional fields using $1, $2, ...
  print(mahasiswa2.$1); // prints 'first'
  print(mahasiswa2.$2); // prints 'last'

  // Access named fields using their names
  print(mahasiswa2.a);  // prints 2
  print(mahasiswa2.b);  // prints true
}