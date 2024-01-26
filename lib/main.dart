import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pakistan Cricket Team',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> pakistanTeamPlayers = [
    'Babar Azam',
    'Mohammad Rizwan',
    'Fakhar Zaman',
    'Imam-ul-Haq',
    'Shadab Khan',
    'Haris Rauf',
    'Shaheen Afridi',
    'Mohammad Hafeez',
    'Sarfaraz Ahmed',
    'Asif Ali',
    'Hasan Ali',
    'Shoaib Malik',
    'Usman Qadir',
    'Faheem Ashraf',
    'Mohammad Nawaz',
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pakistan Cricket Team'),
      ),
      body: ListView.builder(
        itemCount: pakistanTeamPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pakistanTeamPlayers[index]),
          );
        },
      ),
    );
  }
}
