import 'package:bookly/core/resources/service_locator.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}