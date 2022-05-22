import 'package:flutter/material.dart';

import './step_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matemática Fácil',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: StepForm(),
    );
  }
}
