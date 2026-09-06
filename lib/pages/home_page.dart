import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/portfolio_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width > 700;

    return Scaffold(
      appBar: const PortfolioAppBar(title: 'My Portfolio'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: isWide ? 100 : 60,
                  horizontal: 24,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: isWide ? 60 : 50,
                      backgroundColor: kAvatarBg,
                      child: Icon(
                        Icons.person,
                        size: isWide ? 60 : 50,
                        color: kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // TODO: edit to your full name / preferred display name
                    const Text(
                      'Rohit Kollipara',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // TODO: edit to your year/branch if you'd like it more specific
                    Text(
                      'Computer Science Student, Btech 3rd year',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 34),
                    _NavButton(
                      label: 'About Me',
                      onTap: () => Navigator.pushNamed(context, '/about'),
                    ),
                    const SizedBox(height: 16),
                    _NavButton(
                      label: 'Projects',
                      onTap: () => Navigator.pushNamed(context, '/projects'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 2,
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
