# CODELAB 03 Conditional And Loop

## Practicum 1
### Step 1

```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```
### Step 2

![alt text](img/prac1(1+2).png)

1. Variable Initialization: The variable test is created and assigned the string value "test2".

2. First Condition: The program checks if (test == "test1"). This is false because "test2" does not equal "test1".

3. Second Condition: Since the first condition was false, it moves to the else if (test == "test2"). This is true. The code inside this block runs, printing "Test2". The final else block is then skipped.

3. Third Condition: After the if-else if-else block finishes, the program continues to the next statement: if (test == "test2"). This condition is also true, so its code runs, printing "Test2 again".



### Step 3

![alt text](img/prac1(3).png)
The reason for the error is that an if statement requires a boolean condition (a value that is either true or false). In your code, you provided the String variable test (which contains the text "true") directly into the condition. The program cannot evaluate a string as a condition.

---
## Practicum 2
### Step 1
When we first run the code from Step 1, you get an error. 

The program fails because the variable counter is used in the condition while (counter < 33) before it has been created (declared and initialized). A while loop checks its condition before running the first time, so it immediately spots that it doesn't know what counter is

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```
### Step 2
![alt text](img/prac2(1+2).png)
We need to declare counter as an integer and give it a starting value before the loop begins.

### Step 3
```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
After fixing the first part and adding the do-while loop, the program runs without any new errors.

The do-while loop continues using the same counter variable. By the time the first while loop finished, the value of counter was 33.

The do-while loop then does the following:
- It executes the code block first, printing the current value of counter (which is 33) and incrementing it to 34.

- Then, it checks the condition while (counter < 77). Since 34 is less than 77, it runs the block again.

![alt text](img/prac3(3).png)

---


## Practicum 3
### Step 1

```dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

### Step 2

When we first run the code, it fails with an error. 

There are a few problems in the original for loop:

- Case-Sensitivity: Dart is case-sensitive. The code mixes Index (uppercase I) and index (lowercase i), which the program sees as two different variables.

- Missing Increment: The third part of the for loop, which tells the counter how to change (e.g., index++), is completely missing. Without it, the loop would run forever (an infinite loop) if the other errors were fixed.

- Missing Type Declaration: The index variable was not declared with a type (like int or var).

![alt text](img/prac3(1+2).png)

To fix it, you must declare the variable with a type, use a consistent name, and add the incrementer.

### Step 3
```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```

![alt text](img/prac3(3).png)

The new code has a syntax error: the keywords If and Else If are capitalized. In Dart, they must be lowercase (if and else if).

After fixing the capitalization, a logical issue prevents anything from being printed.

- Loop starts with index = 10.

- The condition if (index > 1 || index < 7) is checked on every loop. Since index will always be greater than 1 (it starts at 10), this condition is always true.

- When that condition is true, the continue; statement runs. continue immediately stops the current iteration and jumps to the next one, skipping any code below it.

- Because of this, the final print(index); line is never reached.

- The loop keeps running (doing nothing visible) until index becomes 21. At that point, the if (index == 21) condition is true, and the break; statement runs, which terminates the loop entirely.