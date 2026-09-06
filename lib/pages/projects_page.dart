import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/portfolio_app_bar.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  // TODO: swap in whichever two or three projects you want to talk about
  static const List<Map<String, String>> projects = [
    {
      'title': 'Dispatch — Scheduled Email Reminder App',
      'description':
          'A full-stack app built with FastAPI, Prisma and React/TypeScript '
          'that schedules email reminders, with live countdown timers and '
          'toast notifications on a dark "console" themed UI.',
    },
    {
      'title': 'Chest X-Ray Classifier',
      'description':
          'A classical machine learning pipeline for chest X-ray image '
          'classification — full feature engineering pipeline feeding a '
          'Random Forest classifier, built without neural networks.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width > 700;

    return Scaffold(
      appBar: const PortfolioAppBar(title: 'My Projects'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isWide ? 80 : 20,
          vertical: 30,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                ...projects.map(
                  (p) => _ProjectCard(
                    title: p['title']!,
                    description: p['description']!,
                  ),
                ),
                const SizedBox(height: 10),
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
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const _ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.4),
          ),
        ],
      ),
    );
  }
}
