import 'package:flutter/material.dart';

class DoctorRegistrationScreen extends StatefulWidget {
  const DoctorRegistrationScreen({super.key});

  @override
  State<DoctorRegistrationScreen> createState() =>
      _DoctorRegistrationScreenState();
}

class _DoctorRegistrationScreenState
    extends State<DoctorRegistrationScreen> {

  final nameController = TextEditingController();
  final specialityController = TextEditingController();
  final cityController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctor Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [

              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Doctor Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: specialityController,
                decoration: const InputDecoration(
                  labelText: "Speciality",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: cityController,
                decoration: const InputDecoration(
                  labelText: "City",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                    String name = nameController.text;
                    String speciality = specialityController.text;
                    String city = cityController.text;
                    String phone = phoneController.text;

                    if (name.isEmpty ||
                        speciality.isEmpty ||
                        city.isEmpty ||
                        phone.isEmpty) {

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            "Please fill all fields",
                          ),
                        ),
                      );

                      return;
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Doctor: $name Registered Successfully",
                        ),
                      ),
                    );

                    nameController.clear();
                    specialityController.clear();
                    cityController.clear();
                    phoneController.clear();
                  },
                  child: const Text(
                    "Register Doctor",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}