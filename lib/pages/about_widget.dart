import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/ProjectSection.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 12,
                color:
                    Colors.greenAccent, // Updated color for better visibility
              ),
              SizedBox(width: 8), // Adjust spacing
              Text(
                'About Me',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "It's me, Siam",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            'Product Designer & Software Engineer',
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          SizedBox(height: 20),
          // Image Card
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5, // Added shadow effect for better presentation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Rounded corners
              child: Image.network(
                'https://i.imgur.com/BoN9kdC.png',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
          SizedBox(height: 20),
          // About Section
          Text(
            "More About Me",
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "I'm a product designer and software engineer. I have been working in this field for 5 years and have a lot of experience in creating innovative digital products. My passion lies in building functional yet aesthetically pleasing applications.",
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          SizedBox(height: 20),
          // Side Projects Section
          Text(
            "My Side Projects",
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ProjectSection(), // Added your project section here
          SizedBox(height: 30),
          // Connect Section
          Card(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Colors.grey[200], // Light background for the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let\'s Connect!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.email_outlined, color: Colors.black54),
                      SizedBox(width: 10),
                      Text('siam@example.com',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.phone_outlined, color: Colors.black54),
                      SizedBox(width: 10),
                      Text('+123 456 7890',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
