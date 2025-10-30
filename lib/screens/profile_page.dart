import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Tekno';
  String email = 'tekno@test.com';
  String phone = '+62 812 3456 7890';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = name;
    emailController.text = email;
    phoneController.text = phone;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Image.asset(
              'assets/logo.jpg',
              width: 100,
              ),

              const SizedBox(height: 16),
              Text(name, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8),
              Text('Email: $email'),
              Text('Telepon: $phone'),
              const Divider(height: 30),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Telepon'),
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text('Simpan Perubahan'),
                onPressed: () {
                  setState(() {
                    name = nameController.text;
                    email = emailController.text;
                    phone = phoneController.text;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Data berhasil diperbarui!')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
