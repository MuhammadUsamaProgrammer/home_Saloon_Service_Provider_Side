String getDayName(int dayNumber) {
  String dayName = '';
  switch (dayNumber) {
    case 1:
      dayName = 'M';
      break;
    case 2:
      dayName = 'T';
      break;
    case 3:
      dayName = 'W';
      break;
    case 4:
      dayName = 'T';
      break;
    case 5:
      dayName = 'F';
      break;
    case 6:
      dayName = 'S';
      break;
    case 7:
      dayName = 'S';
      break;
    default:
      dayName = 'Invalid day';
      break;
  }
  return dayName;
}
