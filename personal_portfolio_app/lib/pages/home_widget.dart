import 'package:flutter/material.dart';

import '../widget/ImageSection.dart';
import '../widget/InfoSection.dart';
import '../widget/ProjectSection.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dim white overlay across the entire screen
        Container(
          color: Colors.white.withOpacity(0.85),
        ),
        SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Main content area (Responsive)
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2), // Softer shadow
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 3), // Light elevation
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 300) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InfoSection(),
                            ImageSection(),
                          ],
                        );
                      } else {
                        return Column(
                          children: [
                            Center(child: ImageSection()),
                            const SizedBox(height: 20),
                            Center(child: InfoSection()),
                          ],
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 20),

                // Project and Product sections
                const ProjectSection(),
                const SizedBox(height: 20),

                // Call to action section
                Column(
                  children: [
                    const Text(
                      'Let\'s work together',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Create custom design for your product',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // CV and Copy Email buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download,
                              size: 16, color: Colors.white),
                          label: const Text('CV',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.copy, size: 16),
                          label: const Text('Copy Email',
                              style: TextStyle(fontSize: 14)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Social media links
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.circle, size: 12, color: Colors.grey),
                              SizedBox(width: 10),
                              Text(
                                'Follow me on',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.facebook,
                                    color: Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.camera_alt,
                                    color: Colors.black), // Instagram Icon
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.code,
                                    color: Colors.black), // GitHub Icon
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.link,
                                    color: Colors.black), // LinkedIn Icon
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Footer section
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "@2021 Siam. All rights reserved",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
