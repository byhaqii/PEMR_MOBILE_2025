# CODELAB 04 Conditional Records and Functions in Dart

## Practicum 1
### Step 1

```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```
### Step 2

![alt text](../img/prac1(1).png)

What happens when i run the code?

	•	A list with elements [1, 2, 3] is created.
	•	assert(list.length == 3) → passes, since the list length is indeed 3.
	•	assert(list[1] == 2) → passes, since index 1 has the value 2.
	•	print(list.length) → prints 3.
	•	print(list[1]) → prints 2.
	•	Then, list[1] = 1; changes the value at index 1 from 2 to 1.
	•	assert(list[1] == 1) → passes, since the value was successfully changed.
	•	print(list[1]) → prints 1.


### Step 3

![alt text](../img/prac1(3).png)

	•	The list is created with 5 elements: [null, null, null, null, null].
	•	After inserting the values, it becomes:
["YourName", "YourNIM", null, null, null].
	•	Printing shows the updated list with your data at index 0 and 1.

---
## Practicum 2
### Step 1

```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```
### Step 2

What happens when i run it?

	•	Dart recognizes {} with values inside as a Set (not a List).
	•	A Set contains unique elements and is unordered.
	•	The program prints all elements in halogens.
	•	Example output (order may vary because Sets are unordered):

```dart
{fluorine, chlorine, bromine, iodine, astatine}
```

### Step 3
![alt text](../img/prac2(3).png)

	1.	Dart’s {} can mean Set or Map depending on context:
	•	With values → Set.
	•	Empty {} → Map by default.
	2.	To make an empty Set, you must declare the type (<String>{}).
	3.	Elements can be added to a Set with .add() (single value) or .addAll() (multiple values).
	4.	Sets do not allow duplicates, so repeated values will only appear once.


---


## Practicum 3
### Step 1

```dart
var gifts = {
  // Key:    Value
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
```

### Step 2

![alt text](../img/prac3(1).png)

What happened when running Step 1 code?

	•	The program ran successfully without errors.
	•	Both variables (gifts and nobleGases) were recognized as Maps.
	•	Maps store data in key–value pairs, so accessing values must be done with their key.

✅ No error occurred, so nothing needed to be fixed.



To fix it, you must declare the variable with a type, use a consistent name, and add the incrementer.

### Step 3

![alt text](../img/prac3(3).png)

	•	The gifts map was updated: key 'fifth' now stores "golden rings", and two new keys ('name' and 'nim') were added.
	•	The nobleGases map was updated: key 18 changed from 2 to "argon", and two new integer keys (99 and 100) were added.
	•	mhs1 and mhs2 are new Maps created specifically to store "name" and "NIM".

✅ No errors occurred. All maps printed correctly with new values.

---
## Practicum 3
### Step 1

```dart
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

### Step 2
Just run the code from Step 1.

	•	No error happens since list is not null.
	•	If list were null, an error would occur. To fix it, you’d use ...?list.

### Step 3
![alt text](../img/prac4(3).png)

	•	Using ...?list1 avoids errors if list1 is null.
	•	The new list copies all values, including null.
	•	Spread operator can also copy other lists, e.g., a student ID.

### Step 4
![alt text](../img/prac4(4).png)

	•	if inside a list allows adding an item conditionally.
	•	'Outlet' only appears when promoActive == true.

### Step 5
![alt text](../img/prac4(5).png)

	•	The case pattern in if (login case 'Manager') adds 'Admin Menu' only when login equals 'Manager'.

### Step 6
![alt text](../img/prac4(6).png)

	•	Collection For allows generating a new list directly from another list with a for loop.
	•	Here, listOfInts = [1,2,3] produces ['#0','#1','#2','#3'].
	•	This makes building lists concise and dynamic.


## Practicum 6
### Step 1
```dart
var record = ('first', a: 2, b: true, 'last');
print(record)
```

### Step 2
Dart prints the record as shown above. No error occurs.

### Step 3
![alt text](../img/prac5(3).png)
swap destructures the input record (int, int) and returns a new record with positions exchanged.

### Step 4
![alt text](../img/prac5(4).png)

### Step 5
![alt text](../img/prac5(5).png)

---
## Task 
1. Done
2. A **function** in Dart is a block of reusable code that performs a specific task.  It helps in making programs more organized, readable, and avoids code duplication. 
3. Function

    1. Positional Parameter
    ```dart
    void tambah(int a, int b) => print(a + b);
    tambah(3, 4); // 7
    ```
    2. Optional Positional Parameter
    ``` dart
    void sapa(String nama, [String? pesan]) {print("Halo $nama, ${pesan ?? 'apa kabar?'}");}
    ```
    3. Named Parameter
    ```dart
    void buatUser({required String nama, int umur = 18}) {print("Nama: $nama, Umur: $umur");} buatUser(nama: "Rizal", umur: 20);
    ```

4. Functions di Dart adalah first-class objects, artinya:

	•	Dapat disimpan dalam variabel.

	•	Dapat dijadikan parameter.

	•	Dapat direturn dari fungsi lain.
    ```dart
    void cetakPesan(String pesan) => print(pesan);

    void main() {
    var fungsi = cetakPesan;
    fungsi("Halo!");

    void jalankan(void Function(String) f) {
        f("Pesan dari fungsi lain");
    }

    jalankan(cetakPesan);
    }
    ```

5. Anonymous Functions adalah fungsi tanpa nama, biasanya digunakan sebagai callback atau fungsi sekali pakai.

    ```dart
    void main() {
    var angka = [1, 2, 3];
    angka.forEach((n) {
        print(n * n);
    });
    }
    ```
6. Perbedaan Lexical Scopes dan Lexical Closures

	•	Lexical Scope: variabel hanya dapat diakses dalam lingkup (scope) tempat ia dibuat.
    ```dart
    void main() {
    var x = 10;
    void tampil() {
        print(x);
    }
    tampil(); // 10
    }
    ```
    •	Lexical Closure: fungsi dapat “mengingat” variabel di luar scope-nya, bahkan setelah scope asalnya selesai.
    ```dart
        Function buatCounter() {
    var count = 0;
    return () {
        count++;
        return count;
    };
    }

    void main() {
    var counter = buatCounter();
    print(counter()); // 1
    print(counter()); // 2
    }
    ```

7. Di Dart 3.0+, kita bisa mengembalikan beberapa nilai sekaligus dengan Records.
    ```dart
    (String, int) getUser() {
    return ("Rizal", 21);
    }

    void main() {
    var (nama, umur) = getUser();
    print("Nama: $nama, Umur: $umur");
    }
    ```