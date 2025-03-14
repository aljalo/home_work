/* Switch Case with Seasons
Objective: Use switch for multiple cases.
Instructions:
- Create an integer variable month with a value between 1 and 12.
- Use a switch statement to print the season based on the month. */

void main() {
  int month = 9;
  String season;

  switch (month) {
    case 12:
    case 1:
    case 2:
      season = 'Winter';
      break;
    case 3:
    case 4:
    case 5:
      season = 'Spring';
      break;
    case 6:
    case 7:
    case 8:
      season = 'Summer';
      break;
    case 9:
    case 10:
    case 11:
      season = 'Autumn';
      break;
    default:
      season = 'Invalid month';
  }

  print('Season: $season');
}
