import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/ask_anything_page.dart';
import 'package:mi_flash_card/bitcoinPriceTickerApp/coin_price_screen.dart';
import 'package:mi_flash_card/bmi_calculator_app.dart';
import 'package:mi_flash_card/dating_profile_page.dart';
import 'package:mi_flash_card/dice_app.dart';
import 'package:mi_flash_card/general_profile.dart';
import 'package:mi_flash_card/job_profile_page.dart';
import 'package:mi_flash_card/myChatApp/chatApp_screens/chat_welcome_screen.dart';
import 'package:mi_flash_card/myToDoApp/todoScreens/tasks_screen.dart';
import 'package:mi_flash_card/quiz_app.dart';
import 'package:mi_flash_card/unfold_story_app.dart';
import 'package:mi_flash_card/xylophone_app.dart';
import '../myWeatherApp/weatherScreens/weather_loading_screen.dart';

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
              pageTitle: 'Taskery',
              icon: Icons.list,
              page: const TasksScreen(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Parrots Chat',
              icon: Icons.messenger_outlined,
              page: const ChatWelcomeScreen(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Crypto Price',
              icon: FontAwesomeIcons.bitcoin,
              page: const CoinPriceScreen(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Weather',
              icon: FontAwesomeIcons.cloudSunRain,
              page: const WeatherLoadingScreen(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'BMI Calculator',
              icon: FontAwesomeIcons.calculator,
              page: const BmiCalculatorApp(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'General Profile',
              icon: Icons.home_outlined,
              page: const MyApp(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Job Profile',
              icon: Icons.engineering,
              page: const JobProfilePage(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Dating Profile',
              icon: Icons.favorite,
              page: const DatingProfilePage(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Play Dice',
              icon: FontAwesomeIcons.dice,
              page: const DicePage(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Ask Anything',
              icon: FontAwesomeIcons.solidQuestionCircle,
              page: const AskAnything(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Play Xylophone',
              icon: FontAwesomeIcons.music,
              page: const XylophoneApp(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Attempt Quiz',
              icon: FontAwesomeIcons.leanpub,
              page: const QuizApp(),
            ),
            drawerItem(
              context: context,
              pageTitle: 'Unfold Story',
              icon: FontAwesomeIcons.dungeon,
              page: const UnfoldStoryApp(),
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
