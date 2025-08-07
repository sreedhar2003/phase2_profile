import 'dart:typed_data';

import 'package:flutter/material.dart';

class Phase2ProfileController with ChangeNotifier {
  // city selection dummy
  String selectednativeCity = 'Bengaluru';

  final List<String> cities = [
    'Bengaluru',
    'Mumbai',
    'Delhi',
    'Hyderabad',
    'Chennai',
    'Kolkata',
    'Pune',
    'Ahmedabad',
    'Jaipur',
    'Lucknow',
  ];
  String selectedcurrentCity = 'Mumbai';
  // profile image changing
  String? imagepath;
  Uint8List? imagebytes;
}
