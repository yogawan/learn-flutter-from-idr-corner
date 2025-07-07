import 'package:flutter/material.dart';

class CardAndParshingDataScreen extends StatefulWidget {
  const CardAndParshingDataScreen({super.key});

  @override
  State<CardAndParshingDataScreen> createState() => _CardAndParshingDataScreenState();
}

class _CardAndParshingDataScreenState extends State<CardAndParshingDataScreen> {
  final List<Map<String, String>> people = [
    {"name": "Yogawan", "role": "Flutter Developer"},
    {"name": "Agil", "role": "Backend Developer"},
    {"name": "Sultan", "role": "UI Designer"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card & Parsing")),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          final name = person["name"] ?? "Tidak diketahui";
          final role = person["role"] ?? "Tidak diketahui";

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(name),
              subtitle: Text(role),
            ),
          );
        },
      ),
    );
  }
}
