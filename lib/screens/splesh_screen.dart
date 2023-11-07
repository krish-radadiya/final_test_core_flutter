import 'dart:async';

import 'package:flutter/material.dart';

class splesh_screen extends StatefulWidget {
  const splesh_screen({super.key});

  @override
  State<splesh_screen> createState() => _splesh_screenState();
}

class _splesh_screenState extends State<splesh_screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('home');
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images-platform.99static.com//2TrGtmmxjy_h_uNR5F-DTsaRbOE=/2x0:1502x1500/fit-in/590x590/projects-files/77/7783/778390/6eb8d777-dc60-4b60-b33f-b6ecdf1d0d60.gif"),
          ),
        ),
      ),
    );
  }
}
