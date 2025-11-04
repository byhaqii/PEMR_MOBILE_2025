# Prakticum 1
1. Explain the purpose of Step 4 in the practicum! Why is it done that way?
```dart
export 'plan.dart';
export 'task.dart';
```
This step is done to bundle all model exports into a single file.
That way, instead of importing each model separately, other files can simply import one file

2. Why is the plan variable needed in Step 6? Why is it declared as a constant?

The plan variable acts as the main state holder that stores the plan’s name and its list of tasks.
Because this practicum uses StatefulWidget, we need a variable to manage and update the data when the UI changes.

3.  Capture the result of Step 9 as a GIF and explain what you created!

![alt text](images/hasil-prak1.png)
Step 9 demonstrates how Flutter handles state management using setState() to dynamically update the view when the data changes.

4. What is the purpose of the methods in Step 11 and 13 within the lifecycle state?

- Step 11 – ***initState()***
This method is called once when the widget is first created.
Here, it’s used to initialize the ScrollController and add a listener that removes focus from text fields when the user scrolls — preventing keyboard overlap issues on iOS.

- Step 13 – ***dispose()***
This method is called when the widget is removed from the widget tree.
It’s used to release resources such as controllers to avoid memory leaks.

# Practicum 2
1. Explain what is meant by InheritedWidget in Step 1. Why is InheritedNotifier used instead?

- ***InheritedWidget*** is a special type of widget in Flutter that allows data to be passed down the widget tree to its child widgets.
It helps widgets.

2. Explain the purpose of the methods in Step 3 of this practicum! Why is it done that way?

    •	***completedCount*** is a getter that calculates how many tasks have been marked as completed.

	•	***completenessMessage*** creates a formatted progress message (for example: “2 out of 5 tasks”).


3. Capture the result of Step 9 as a GIF, then explain what you have made!

![alt text](images/hasil-prak2.png)

# Practicum 3
1. Based on Practicum 3, explain the meaning of the diagram below!

![alt text](images/table.png)

The diagram illustrates how state (data) is shared and accessed across multiple screens in the Flutter widget tree using InheritedNotifier (through PlanProvider).

2. Capture the result from Step 14 as a GIF and explain what you’ve built!

	1.	Display a list of multiple “Master Plans.”
	2.	Add new plans through a text field.
	3.	Tap a plan to open a new screen showing its list of tasks.
	4.	Add, edit, or complete tasks — while progress updates automatically.
    ![alt text](images/hasil-prak3(1).png)
    ![alt text](images/hasil-prak3(2).png)
    ![alt text](images/hasil-prak3(3).png)

3. 