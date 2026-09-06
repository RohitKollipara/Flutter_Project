import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';

// Shared brand color used across the app bar, buttons and accents.
const Color kPrimaryColor = Color(0xFF3F4DA6);
const Color kAvatarBg = Color(0xFFE7E1FA);
const Color kCardBg = Color(0xFFEDEAF9);
const Color kPageBg = Color(0xFFFAFAFC);

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rohit | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kPageBg,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}
