// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class Eformatter {
  static String formatDate(DateTime? date, String format) {
    if (date == null) {
      throw ArgumentError('Date cannot be null');
    }
    final dateFormat = DateFormat(format);
    return dateFormat.format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)})${phoneNumber.substring(3,6)}${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11)
    {
      return '(${phoneNumber.substring(0,4)})${phoneNumber.substring(4,7)}${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }  

  static String internationalPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '';
    if (digitsOnly.startsWith('+')) {
      countryCode = digitsOnly.substring(0, 4);
      digitsOnly = digitsOnly.substring(4);
    } else {
      countryCode = '+1';
    }

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 3;

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }

      i = end;
    }

    return formattedNumber.toString();
  }
}
