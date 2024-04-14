import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocationPageExample(),
    );
  }
}

class LocationPageExample extends StatefulWidget {
  const LocationPageExample({super.key});

  @override
  State<LocationPageExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<LocationPageExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      backgroundColor: Colors.blueGrey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}