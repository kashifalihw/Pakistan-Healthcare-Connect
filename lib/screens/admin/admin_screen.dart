import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  List<Map<String, dynamic>> doctors = [
    {
      "name": "Dr. Rizwana",
      "speciality": "Cardiologist",
      "approved": false,
    },
    {
      "name": "Dr. Muskan",
      "speciality": "Dermatologist",
      "approved": false,
    },
    {
      "name": "Dr. Rubab",
      "speciality": "Dentist",
      "approved": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(doctors[index]["name"]),
              subtitle: Text(doctors[index]["speciality"]),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    doctors[index]["approved"] = true;
                  });
                },
                child: Text(
                  doctors[index]["approved"]
                      ? "Approved"
                      : "Approve",
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}