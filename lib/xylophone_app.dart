import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: const MyNavigationDrawer(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
