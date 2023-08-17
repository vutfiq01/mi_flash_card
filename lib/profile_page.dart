import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Hero(
                    tag: 'image-hero',
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
