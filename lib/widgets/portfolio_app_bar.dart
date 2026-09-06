import 'package:flutter/material.dart';
import '../main.dart' show kPrimaryColor;

/// A shared app bar so every page has the same header style
/// (color, title style, centered text) with an automatic back
/// arrow on any page that isn't the home page.
class PortfolioAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const PortfolioAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
