class DateTimeUtils {

  static String formatDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String oneDigit(int n) {
      return "$n";
    }

    String oneDigitMinutes = oneDigit(duration.inMinutes.remainder(60));
    String twoDigitsMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    if (duration.inMinutes >= 10) {
      return "$twoDigitsMinutes:$twoDigitSeconds";
    } else {
      return "$oneDigitMinutes:$twoDigitSeconds";
    }
  }
}
