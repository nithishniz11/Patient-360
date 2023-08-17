import 'dart:math';

import 'package:intl/intl.dart';

validateEmail(String email) {
  final emailReg = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return emailReg.hasMatch(email);
}

final _emailMaskRegExp = RegExp('^(.)(.*?)([^@]?)(?=@[^@]+\$)');
final _phoneMaskRegExp = RegExp(r'\d(?<=\d{2})\d(?=\d{2})');

String maskEmail(String input, [int minFill = 4, String fillChar = '*']) {
  return input.replaceFirstMapped(_emailMaskRegExp, (m) {
    var start = m.group(1);
    var middle = fillChar * max(minFill, m.group(2)!.length);
    var end = m.groupCount >= 3 ? m.group(3) : start;
    return start! + middle + end!;
  });
}

String maskPhone(String input, [int minFill = 4, String fillChar = '*']) {
  return input.replaceAll(_phoneMaskRegExp, fillChar);
}

String convertToMyFormat(String datestr) {
  try {
    ///2023-04-02
    DateTime tempDate =
        DateFormat("yyyy-MM-dd").parse(datestr.substring(0, 10));
    String date = DateFormat("MMM dd, yyyy").format(tempDate);
    return date;
  } catch (e) {
    ///02 APR 2023
    try {
      DateTime tempDate = DateFormat("dd MMM yyyy").parse(datestr);
      String date = DateFormat("MMM dd, yyyy").format(tempDate);
      return date;
    } catch (e) {
      ///APR 02,2023
      try {
        DateTime tempDate = DateFormat("MMM dd,yyyy").parse(datestr);
        String date = DateFormat("MMM dd, yyyy").format(tempDate);
        return date;
      } catch (e) {
        return "";
      }
    }
  }
}
