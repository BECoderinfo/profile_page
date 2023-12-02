import 'package:flutter/material.dart';
import 'package:product_detalis/page/detailpage.dart';
import 'package:product_detalis/page/profilepage.dart';

void main() {
  runApp(
    myapp(),
  );
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: profilepage(),
    );
  }
}
