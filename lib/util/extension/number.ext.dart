import 'dart:math';

extension NumberExtension on num {
  String toStringSeparated([String separator = '.']) {
    return toStringAsFixed(0).replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}$separator',
    );
  }

  String percentage(num total, {int digits = 0, bool clamped = true}) {
    // Đưa tỉ lệ thành phần trăm, sau đó nhân với pow để có thể làm tròn xuống,
    // cuối cùng chia cho pow để chuyển lại thành phần trăm.
    final value = (((this / total) * 100) * pow(10, digits)).floor() / pow(10, digits);
    return '${value.toStringAsFixed(digits)}%';
  }

  bool inRange(num min, num max) {
    return this >= min && this <= max;
  }

  bool inRangeExcluded(num min, num max) {
    return this > min && this < max;
  }

  bool inRangeExcludedLeft(num min, num max) {
    return this > min && this <= max;
  }

  bool inRangeExcludedRight(num min, num max) {
    return this >= min && this < max;
  }
}