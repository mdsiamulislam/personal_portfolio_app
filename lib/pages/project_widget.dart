import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Corrected the import typo for ProductSection
import '../widget/ProjectSection.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Projects Section Header
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 12,
                color: Colors
                    .greenAccent, // Changed icon color for better visibility
              ),
              SizedBox(width: 8), // Added spacing between icon and text
              Text(
                'Projects',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Added space between sections

          // My Work Section
          Text(
            "My Work",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Discover my portfolio, where purposeful interfaces meet captivating design. My work strives to enhance experiences and inspire.',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          SizedBox(height: 20), // More space between sections

          // Projects List
          ProjectSection(), // Your project section widget here
          SizedBox(height: 30), // Added space after project section

          // Your product section widget here
        ],
      ),
    );
  }
}
