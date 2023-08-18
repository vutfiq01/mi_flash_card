import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.teal[900],
    );
  }
}
