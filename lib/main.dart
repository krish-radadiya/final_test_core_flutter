import 'package:final_test_core_flutter/screens/home_page.dart';
import 'package:final_test_core_flutter/screens/pdf.dart';
import 'package:final_test_core_flutter/screens/splesh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const splesh_screen(),
        'home': (context) => const homepage(),
        'pdf': (context) => const Pdf(),
      },
    ),
  );
}
