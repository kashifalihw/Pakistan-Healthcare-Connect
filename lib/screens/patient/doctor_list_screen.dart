import 'package:flutter/material.dart';
import 'doctor_detail_screen.dart';

class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({super.key});

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  final List<Map<String, String>> doctors = [
    {
      'name': 'Dr. Rizwana',
      'speciality': 'Cardiologist',
    },
    {
      'name': 'Dr. Muskan',
      'speciality': 'Dermatologist',
    },
    {
      'name': 'Dr. Rubab',
      'speciality': 'Dentist',
    },
  ];

  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final filteredDoctors = doctors.where((doctor) {
      return doctor['name']!
          .toLowerCase()
          .contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctors'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search Doctor",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredDoctors.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(filteredDoctors[index]['name']!),
                    subtitle:
                        Text(filteredDoctors[index]['speciality']!),

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorDetailScreen(
                            name: filteredDoctors[index]['name']!,
                            speciality:
                                filteredDoctors[index]['speciality']!,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}