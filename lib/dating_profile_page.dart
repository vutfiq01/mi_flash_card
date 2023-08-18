import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/custom_appbar.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class DatingProfilePage extends StatelessWidget {
  const DatingProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      appBar: CustomAppBar(title: 'Dating Profile'),
      drawer: MyNavigationDrawer(),
    );
  }
}
