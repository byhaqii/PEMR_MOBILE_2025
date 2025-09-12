// void main () {
//   for (int index = 10; index < 27; index++) {
//   print(index);
// }
// }

void main() {
  for (int index = 1; index <= 30; index++) {
    if (index == 21) {
      break; // stop loop when index is 21
    } else if (index > 1 && index < 7) {
      continue; // skip numbers 2–6
    }
    print(index);
  }
}