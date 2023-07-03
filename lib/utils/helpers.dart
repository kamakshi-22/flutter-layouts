import 'package:flutter/foundation.dart';

void printIfDebug(String text) {
  if (kDebugMode) {
    print(text);
  }
}
