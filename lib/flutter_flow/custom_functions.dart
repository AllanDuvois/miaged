import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import '../../auth/auth_util.dart';

double total(double prix) {
  double sum = 0;
  sum += prix;
  return sum;
}

double sum(
  List<PanierRecord> data,
  int index,
) {
  // Todo:  replace <FlutterCollectionRecord> with the name of your record

  int maxIndex = index;
  if (maxIndex == -1 || index >= data.length) {
    // Pass index of -1 if you want a grand total across all indexes
    int test = data.length - 1;
    maxIndex = test;
  }

  double total = 0;
  for (var i = 0; i <= maxIndex; i++) {
    total += data[i]
        .prix; // Todo: replace "test" with the field you want to do a running total on
  }

  return total;
}
