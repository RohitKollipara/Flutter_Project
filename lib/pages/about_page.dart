import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/portfolio_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // TODO: adjust this list to whatever you're most comfortable being asked about
  static const List<String> skills = [
    'Python',
    'FastAPI',
    'React & TypeScript',
    'Flutter',
    'PostgreSQL',
    'REST APIs',
    'Git & GitHub',
    'Machine Learning basics',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width > 700;

    return Scaffold(
      appBar: const PortfolioAppBar(title: 'About Me'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isWide ? 80 : 20,
          vertical: 40,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              decoration: BoxDecoration(
                color: kCardBg,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundColor: kPrimaryColor,
                    child: Icon(Icons.person, color: Colors.white, size: 28),
                  ),
                  const SizedBox(height: 20),
                  // TODO: personalize further if you'd like
                  Text(
                    "Hello! I'm Rohit, a software engineering student "
                    "who enjoys building full-stack "
                    "and AI-native applications end to end — from backend "
                    "APIs to polished, production-quality interfaces.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 28),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Skills & Areas of Expertise',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: skills
                        .map(
                          (skill) => Chip(
                            label: Text(skill),
                            backgroundColor: Colors.white,
                            labelStyle: const TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                            side: const BorderSide(color: kPrimaryColor, width: 1),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Back to Home',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
