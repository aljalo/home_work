/* 6. Working with Maps - Student Details:
- Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair. */

void main() {
  var student = {'name': 'Ali', 'age': 30, 'grade': 'F'};
  print(student);

  student['city'] = 'Istanbul';
  print(student);

  student['grade'] = 'A';
  print(student);

  student.remove('age');
  print(student);

  print("\nStudent Details:");
  student.forEach((key, value) {
    print("$key: $value");
  });
}
