// import 'dart:convert';

// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

extension IterableExtension<T> on Iterable<T> {
  Iterable<T> distinctBy(Object Function(T e) getCompareValue) {
    var result = <T>[];
    for (var element in this) {
      if (!result.any((x) => getCompareValue(x) == getCompareValue(element))) {
        result.add(element);
      }
    }

    return result;
  }
}

class FormatHelper {
  static String getMoneySymbol() {
    return '₫';
  }

  // static String cryptoSHA256(String input) {
  //   var bytes = utf8.encode(input);
  //   var output = sha256.convert(bytes);
  //   return output.toString();
  // }

  /// Formats a given input string as a SHA256 hash.
  ///
  /// The input string is first encoded as UTF-8 bytes, then hashed using the SHA256 algorithm.
  /// The resulting hash is returned as a string.
  static String cryptoSHA256(String input) {
    return sha256.convert(utf8.encode(input)).toString();
  }

  static String formatNumber(num number, {int decimalDigits = 2}) {
    final oCcy = NumberFormat("#,##0.${'0' * decimalDigits}", "en_US");
    return oCcy.format(number);
  }

  static String numberToMoney(num? number) {
    if (number == null) return "0";
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    // ignore: prefer_function_declarations_over_variables
    final matchFunc = (Match match) => '${match[0]},';
    String numResult = number.round().toString().replaceAllMapped(reg, matchFunc);
    return numResult;
  }
 
  static Future<String> convertFileToStringBase64(File file) async {
    // Uint8List imagebytes = await file.readAsBytes();
    List<int> fileInByte = file.readAsBytesSync();
    String fileInBase64 = base64Encode(fileInByte);
    return fileInBase64;
    // return base64.encode(imagebytes);
  }
}
