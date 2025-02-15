/* 3. To-Do List App:
Create a to-do list program using a List where each item has a description, due date, and
completion status (as bool). Implement methods to add, remove, and update tasks, including the
use of for-each loops. */

class Task {
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, this.isCompleted);
}

class ToDoList {
  List<Task> tasks = [];
  void addTask(String description, DateTime dueDate) {
    tasks.add(Task(description, dueDate, false));
  }

  void removeTask(String description) {
    tasks.removeWhere((task) => task.description == description);
  }

  void updateTaskStatus(String description, bool isCompleted) {
    var task = tasks.firstWhere((task) => task.description == description);
    task.isCompleted = isCompleted;
  }

  void displayTasks() {
    if (tasks.isEmpty) {
      print("No tasks.");
    } else {
      print("To Do:");
      tasks.forEach((task) {
        print(
            "${task.description} (Due: ${task.dueDate}, Completed: ${task.isCompleted})");
      });
    }
  }
}
