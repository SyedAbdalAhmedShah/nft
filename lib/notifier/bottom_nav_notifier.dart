import 'dart:developer';

import 'package:flutter/material.dart';

class BottomNavNotifier {
  final ValueNotifier<int> count = ValueNotifier<int>(0);

  setBottomNavValue(int index) {
    count.value = index;
    log("value ${count.value}");
  }
}
