import 'package:intl/intl.dart';

/// [TimeAgo] - A custom time ago class used for showing days ago
///
/// By default, it uses `yyyy-MM-dd'T'HH:mm:ss` date format to
/// parse the date and convert it into `UTC` date format
class TimeAgo {
  static String timeAgoSinceDate(String dateString,
      {bool numericDates = true}) {
    print('DATE STRING: $dateString');
    const dateFormat = "yyyy-MM-dd'T'HH:mm:ss";
    final convertedDate = DateFormat(dateFormat).parse(dateString);
    final utcTime = DateTime.utc(
      convertedDate.year,
      convertedDate.month,
      convertedDate.day,
      convertedDate.hour,
      convertedDate.minute,
      convertedDate.second,
    );
    print('UTC DATE STRING: $utcTime');

    final localTime = utcTime.toLocal();
    print('LOCAL DATE STRING: $localTime');
    final currentTime = DateTime.now();
    final difference = currentTime.difference(localTime);

    if (difference.inDays > 8) {
      final newDate = DateFormat('yyyy-MM-dd').format(utcTime);
      return newDate.toString();
    } else if ((difference.inDays / 7).floor() >= 1) {
      return (numericDates) ? '1 week ago' : 'Last week';
    } else if (difference.inDays >= 2) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays >= 1) {
      return (numericDates) ? '1 day ago' : 'Yesterday';
    } else if (difference.inHours >= 2) {
      return '${difference.inHours} hours ago';
    } else if (difference.inHours >= 1) {
      return (numericDates) ? '1 hour ago' : 'An hour ago';
    } else if (difference.inMinutes >= 2) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inMinutes >= 1) {
      return (numericDates) ? '1 minute ago' : 'A minute ago';
    } else if (difference.inSeconds >= 3) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}
