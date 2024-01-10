import 'package:flutter/foundation.dart';

extension MapExtensions on Map {
  String toPathParam() {
    String pathParam = '?';

    forEach((key, value) {
      for (var element in entries) {
        pathParam += '${element.key}=${element.value}&';
      }
    });

    if (kDebugMode) {
      print('toPathParam: ${pathParam.substring(0, pathParam.length - 1)}');
    }

    return pathParam.substring(0, pathParam.length - 1);
  }
}
