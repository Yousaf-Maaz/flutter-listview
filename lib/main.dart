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
        backgroundColor: Colors.green, // Set app bar color
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.white, // Set background color
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Team Players:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green, // Set text color
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: pakistanTeamPlayers.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.lightGreenAccent, // Set light green color
                    child: Card(
                      elevation: 2.0, // Add elevation to cards
                      child: ListTile(
                        title: Text(
                          pakistanTeamPlayers[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black, // Set text color
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
