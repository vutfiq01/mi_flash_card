import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/custom_appbar.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class UnfoldStoryApp extends StatelessWidget {
  final String appBarTitle;
  const UnfoldStoryApp({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 51, 43),
      appBar: CustomAppBar(title: appBarTitle),
      drawer: const MyNavigationDrawer(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Placeholder(),
        ),
      ),
    );
  }
}
