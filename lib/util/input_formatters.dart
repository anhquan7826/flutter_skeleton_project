import 'package:flutter/services.dart';
import 'package:flutter_skeleton_project/util/extension/number.ext.dart';

class NumberInputFormatter extends TextInputFormatter {
  NumberInputFormatter([this.separator = '.']);

  final String separator;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue;
    }
    final value = int.tryParse(newValue.text.replaceAll(separator, ''));
    if (value == null) {
      return oldValue;
    }
    return TextEditingValue(
      text: value.toStringSeparated(separator),
    );
  }
}