import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/ask_anything_page.dart';
import 'package:mi_flash_card/dating_profile_page.dart';
import 'package:mi_flash_card/dice_app.dart';
import 'package:mi_flash_card/job_profile_page.dart';
import 'package:mi_flash_card/main.dart';
import 'package:mi_flash_card/quiz_app.dart';
import 'package:mi_flash_card/xylophone_app.dart';

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
            drawerItem(
              context: context,
              pageTitle: 'General Profile',
              icon: Icons.home_outlined,
              page: const MyApp(appBarTitle: 'General Profile'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Job Profile',
              icon: Icons.engineering,
              page: const JobProfilePage(appBarTitle: 'Job Profile'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Dating Profile',
              icon: Icons.favorite,
              page: const DatingProfilePage(appBarTitle: 'Dating Profile'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Play Dice',
              icon: FontAwesomeIcons.dice,
              page: const DicePage(appBarTitle: 'Play Dice'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Ask Anything',
              icon: FontAwesomeIcons.solidQuestionCircle,
              page: const AskAnything(appBarTitle: 'Ask Anything'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Play Xylophone',
              icon: FontAwesomeIcons.music,
              page: const XylophoneApp(appBarTitle: 'Play Xylophone'),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Attempt Quiz',
              icon: FontAwesomeIcons.leanpub,
              page: const QuizApp(appBarTitle: 'Attempt Quiz'),
            ),
          ],
        ),
      );

  Widget drawerItem(
      {required context,
      required String pageTitle,
      required IconData icon,
      required Widget page}) {
    return ListTile(
      tileColor: Colors.teal,
      onTap: () {
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      leading: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
      title: Text(
        pageTitle,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: 'Poppins',
          color: Colors.white,
        ),
      ),
    );
  }
}
