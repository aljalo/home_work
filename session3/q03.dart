/* 3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops. */

class Task {
  String description;
  String day;
  bool isCompleted;

  Task(this.description, this.day, this.isCompleted);
}

class ToDoList {
  List<Task> tasks = [];
  void addTask(String description, String day) {
    tasks.add(Task(description, day, false));
  }

  void updateTaskStatus(String description, bool isCompleted) {
    var task = tasks.firstWhere((task) => task.description == description);
    task.isCompleted = isCompleted;
  }

  void displayTasks() {
    tasks.forEach((task) {
      print({task.description, task.day, 'Complete ${task.isCompleted}'});
    });
  }
}

void main() {
  var toDoList = ToDoList();
  toDoList.addTask("Buy food", "Monday");
  toDoList.addTask("Make Homework", "Sunday");
  toDoList.displayTasks();

  toDoList.updateTaskStatus('Buy food', false);
  toDoList.displayTasks();
}
