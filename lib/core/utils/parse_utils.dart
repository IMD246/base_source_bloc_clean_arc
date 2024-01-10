import 'package:intl/intl.dart';

import '../constants/constants.dart';
import '../exceptions/parse_exception.dart';

class ParseUtils {
  const ParseUtils._();

  static int parseStringToInt(String value) {
    try {
      return int.parse(value);
    } on FormatException catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }

  static double parseStringToDouble(String value) {
    try {
      return double.parse(value);
    } on FormatException catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }

  static DateTime parseDateTime(String value) {
    try {
      return DateTime.parse(value).toLocal();
    } on FormatException catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }

  static DateTime? tryParse(String value) {
    return DateTime.tryParse(value)?.toLocal();
  }

  static DateTime parseUtc(String dateUtc) {
    try {
      final dateTime = DateFormat(DateTimeFormatConstants.defaultFormat).parse(dateUtc, true);

      return dateTime.toLocal();
    } catch (e) {
      throw ParseException(ParseExceptionKind.invalidSourceFormat, e);
    }
  }

  static DateTime? tryParseUtc(String dateUtc) {
    try {
      final dateTime = DateFormat(DateTimeFormatConstants.defaultFormat).parse(dateUtc, true);

      return dateTime.toLocal();
    } catch (e) {
      return null;
    }
  }

  static String cleanHtmlTags(String value) {
    value = value.replaceAll(RegExp(r'<\/?p>'), '\n');

    return value.replaceAll(RegExp(r'<[^>]*>'), '').trim();
  }

  static String dateTimeToServerString(DateTime date) {
    return DateFormat(DateTimeFormatConstants.defaultFormat).format(date);
  }

  static DateTime? tryParseLocal(String dateUtc) {
    try {
      final dateTime = DateFormat(DateTimeFormatConstants.defaultFormat).parse(dateUtc, true);

      return dateTime;
    } catch (e) {
      return null;
    }
  }
}
