import 'package:flutter/material.dart';
import 'package:mi_flash_card/profile_page.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color(0xFF0A0D22),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.teal[900],
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
    ),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Profile'),
      ),
      backgroundColor: Colors.teal,
      drawer: const MyNavigationDrawer(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: const Hero(
                tag: 'image-hero',
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
            ),
            const Text(
              'Md Rafiqul Islam',
              style: TextStyle(
                fontFamily: 'Arizonia',
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'SOFTWARE ENGINEER',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  size: 25,
                  color: Colors.teal,
                ),
                title: Text(
                  '+88017-000-00000',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  size: 25,
                  color: Colors.teal,
                ),
                title: Text(
                  'rafiqul@abcd.com',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    color: Colors.teal[900],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
