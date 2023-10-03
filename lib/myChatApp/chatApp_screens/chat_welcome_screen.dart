import 'package:flutter/material.dart';
import 'package:mi_flash_card/myChatApp/chatApp_screens/chat_login_screen.dart';
import 'package:mi_flash_card/myChatApp/chatApp_screens/chat_registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../chatAppComponents/chatapp_rounded_button.dart';

class ChatWelcomeScreen extends StatefulWidget {
  const ChatWelcomeScreen({super.key});

  @override
  State<ChatWelcomeScreen> createState() => _ChatWelcomeScreenState();
}

class _ChatWelcomeScreenState extends State<ChatWelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = ColorTween(
      begin: Colors.purple[100],
      end: Colors.white,
    ).animate(controller!);

    controller!.forward();

    controller!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset('images/chatlogo.png'),
                  ),
                ),
                AnimatedTextKit(
                  totalRepeatCount: 7,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Parrots Chat',
                      speed: const Duration(milliseconds: 300),
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              color: Colors.purpleAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatLoginScreen(),
                  ),
                );
              },
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.deepPurpleAccent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatRegistrationScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
