// Question 5: What is the difference between var and dynamic in Dart? Provide an example of each.

void main() {
  dynamic name = 'Ali'; // The initial type will be String.
  name = 15; // We can change the type after that.

  var age = 15; // The initial type will be Integer.
  age = "Ali"; //We can't change the type after that.

  var name1; // If we dosn`t gave it value in initial we can use it like dynamic
  name1 = 15;
  name1 = 15.5;
  name1 = true;
  name1 = 'Ali';
}
