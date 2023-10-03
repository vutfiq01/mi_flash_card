import 'package:flutter/material.dart';
import '../chatAppComponents/chatapp_rounded_button.dart';
import '../chat_app_constants.dart';

class ChatRegistrationScreen extends StatefulWidget {
  const ChatRegistrationScreen({super.key});

  @override
  State<ChatRegistrationScreen> createState() => _ChatRegistrationScreenState();
}

class _ChatRegistrationScreenState extends State<ChatRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/chatlogo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputDecoration(
                hintText: 'Enter your email',
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kInputDecoration(
                  hintText: 'Enter your password',
                  color: Colors.deepPurpleAccent),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.deepPurpleAccent,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
