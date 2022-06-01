class Utils {
  static String displayTime(DateTime date, {bool withNumber = false}) =>
      "${date.day}/${date.month}/${date.year} - ${date.hour}:${date.minute}";
}
