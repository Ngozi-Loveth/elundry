import 'package:elundry/dynamicbox.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ELUNDRY HOME"),
        centerTitle: true,
      ),
      body: const DynamicBox(),
    );
  }
}
