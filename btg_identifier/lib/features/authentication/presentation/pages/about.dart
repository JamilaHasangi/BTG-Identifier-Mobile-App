import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[900],
      child: const Column(
        children: [
          Text(
            'About Section',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          // Add more content here as needed
        ],
      ),
    );
  }
}
