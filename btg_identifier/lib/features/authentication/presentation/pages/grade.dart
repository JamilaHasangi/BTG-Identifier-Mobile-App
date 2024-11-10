import 'package:flutter/material.dart';

class GradesSection extends StatelessWidget {
  const GradesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[800],
      child: const Column(
        children: [
          Text(
            'Grades Section',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          // Add more content here as needed
        ],
      ),
    );
  }
}
