import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'screens/about_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  const ProfileCardApp({super.key});

  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleThemeMode() {
    setState(() {
      if (_themeMode == ThemeMode.system) {
        _themeMode = ThemeMode.light;
      } else if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.system;
      }
    });
  }

  String get themeLabel {
    switch (_themeMode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
      default:
        return 'System';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Card App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card App'),
          actions: [
            TextButton(
              onPressed: _toggleThemeMode,
              child: Text(
                themeLabel,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        body: const ProfilePage(),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              ListTile(
                title: const Text('Tentang'),
                leading: const Icon(Icons.info_outline),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutPage()),
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
