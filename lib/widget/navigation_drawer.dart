import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/ask_anything_page.dart';
import 'package:mi_flash_card/dating_profile_page.dart';
import 'package:mi_flash_card/dice_app.dart';
import 'package:mi_flash_card/job_profile_page.dart';
import 'package:mi_flash_card/main.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => InkWell(
        onTap: () {},
        child: Container(
          color: Colors.teal[900],
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            bottom: 24,
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              const Text(
                'Md Rafiqul Islam',
                style: TextStyle(
                  fontFamily: 'Arizonia',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 25,
          children: [
            ListTile(
              tileColor: Colors.teal,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              leading: const Icon(
                Icons.home_outlined,
                size: 25,
                color: Colors.white,
              ),
              title: const Text(
                'General Profile',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.teal,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const JobProfilePage()),
                );
              },
              leading: const Icon(
                Icons.engineering,
                size: 25,
                color: Colors.white,
              ),
              title: const Text(
                'Job Profile',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.teal,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DatingProfilePage()),
                );
              },
              leading: const Icon(
                Icons.favorite,
                size: 25,
                color: Colors.white,
              ),
              title: const Text(
                'Dating Profile',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.teal,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DicePage(),
                  ),
                );
              },
              leading: const Icon(
                FontAwesomeIcons.dice,
                size: 25,
                color: Colors.white,
              ),
              title: const Text(
                'Play Dice',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.teal,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AskAnything(),
                  ),
                );
              },
              leading: const Icon(
                FontAwesomeIcons.solidQuestionCircle,
                size: 25,
                color: Colors.white,
              ),
              title: const Text(
                'Ask Anything',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
}
