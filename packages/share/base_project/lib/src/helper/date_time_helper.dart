class DateTimeHelper {
  /// Trả về tên tháng bằng tiếng Việt của một đối tượng DateTime.
  ///
  /// [dateTime] Đối tượng DateTime cần lấy tên tháng.
  ///
  /// Kết quả trả về là một chuỗi chứa tên tháng bằng tiếng Việt.
  ///
  /// Ví dụ:
  /// ```dart
  /// DateTime date = DateTime(2023, 1, 1);
  /// String monthName = getVietnameseMonth(date);
  /// print(monthName); // Xuất ra: Tháng Một
  /// ```
  static String getVietnameseMonth(DateTime dateTime) {
    final List<String> vietnameseMonths = [
      'Tháng Một',
      'Tháng Hai',
      'Tháng Ba',
      'Tháng Tư',
      'Tháng Năm',
      'Tháng Sáu',
      'Tháng Bảy',
      'Tháng Tám',
      'Tháng Chín',
      'Tháng Mười',
      'Tháng Mười Một',
      'Tháng Mười Hai'
    ];
    return vietnameseMonths[dateTime.month - 1];
  }

  /// Trả về khoảng thời gian chênh lệch giữa hai thời điểm [from] và [to].
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một đối tượng [Duration] đại diện cho khoảng thời gian chênh lệch.
  static Duration getTimeDifference(DateTime from, DateTime to) {
    return to.difference(from);
  }

  /// Trả về số ngày còn lại giữa hai thời điểm [from] và [to].
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một số nguyên đại diện cho số ngày còn lại.
  static int getRemainingDays(DateTime from, DateTime to) {
    return getTimeDifference(from, to).inDays;
  }

  /// Trả về số giờ còn lại giữa hai thời điểm [from] và [to].
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một số nguyên đại diện cho số giờ còn lại.
  static int getRemainingHours(DateTime from, DateTime to) {
    return getTimeDifference(from, to).inHours;
  }

  /// Trả về số phút còn lại giữa hai thời điểm [from] và [to].
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một số nguyên đại diện cho số phút còn lại.
  static int getRemainingMinutes(DateTime from, DateTime to) {
    return getTimeDifference(from, to).inMinutes;
  }

  /// Trả về số giây còn lại giữa hai thời điểm [from] và [to].
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một số nguyên đại diện cho số giây còn lại.
  static int getRemainingSeconds(DateTime from, DateTime to) {
    return getTimeDifference(from, to).inSeconds;
  }

  /// Trả về khoảng thời gian chênh lệch giữa hai thời điểm [from] và [to] dưới dạng chuỗi.
  ///
  /// [from]: Thời điểm bắt đầu.
  /// [to]: Thời điểm kết thúc.
  ///
  /// Trả về một chuỗi đại diện cho khoảng thời gian chênh lệch theo định dạng "X ngày Y giờ Z phút W giây".
  static String getFormattedDuration(DateTime from, DateTime to) {
    Duration duration = getTimeDifference(from, to);
    int days = duration.inDays;
    int hours = duration.inHours.remainder(24);
    int minutes = duration.inMinutes.remainder(60);
    int seconds = duration.inSeconds.remainder(60);

    return '$days ngày $hours giờ $minutes phút $seconds giây';
  }
}
