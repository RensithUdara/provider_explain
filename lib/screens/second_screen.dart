import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_explain/providers/counter_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (context, val, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Second Screen"),
        ),
        body: Center(
          child: Text(
            "${val.value}",
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            val.decrementtValue();
          },
          child: const Icon(Icons.remove),
        ),
      );
    });
  }
}
