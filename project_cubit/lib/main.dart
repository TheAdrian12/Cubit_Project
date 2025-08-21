import 'package:flutter/material.dart';
import 'package:project_cubit/Presentation/loading_view.dart';
import 'Presentation/initial_view.dart';
import 'Presentation/failure_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoadingView(),
    );
  }
}
