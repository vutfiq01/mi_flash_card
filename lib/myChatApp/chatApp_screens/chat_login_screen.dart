import 'package:flutter/material.dart';
import 'package:mi_flash_card/myChatApp/chatApp_screens/chat_screen.dart';
import 'package:mi_flash_card/myChatApp/chat_app_constants.dart';
import '../chatAppComponents/chatapp_rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class ChatLoginScreen extends StatefulWidget {
  const ChatLoginScreen({super.key});

  @override
  State<ChatLoginScreen> createState() => _ChatLoginScreenState();
}

class _ChatLoginScreenState extends State<ChatLoginScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProgressHUD(
        child: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: SizedBox(
                      height: 200.0,
                      child: Image.asset('images/chatlogo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
                TextField(
                  controller: emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kInputDecoration(
                    hintText: 'Enter your email',
                    color: Colors.purpleAccent,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextField(
                  controller: passwordTextController,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kInputDecoration(
                    hintText: 'Enter your password',
                    color: Colors.purpleAccent,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                  title: 'Log In',
                  color: Colors.purpleAccent,
                  onPressed: () async {
                    final progress = ProgressHUD.of(context);
                    progress!.showWithText('Logging In...');
                    try {
                      final loggedUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      // ignore: unnecessary_null_comparison
                      if (loggedUser != null) {
                        if (!mounted) return;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ),
                        );
                        progress.dismiss();
                        emailTextController.clear();
                        passwordTextController.clear();
                      }
                    } catch (e) {
                      // ignore: avoid_print
                      print(e);
                    }
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
