import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatelessWidget {
  final String name;
  final String speciality;

  const DoctorDetailScreen({
    super.key,
    required this.name,
    required this.speciality,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Speciality: $speciality",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Hospital: City Care Hospital",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "City: Khairpur",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Timing: 5 PM - 9 PM",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Phone: 0300-1234567",
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Book Appointment",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}