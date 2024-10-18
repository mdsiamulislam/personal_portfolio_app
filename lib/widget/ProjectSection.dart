import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data/ProjectData.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // White background for top bar
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Darker shadow
            spreadRadius: 0.5,
            blurRadius: 5,
            offset: Offset(0, 3), // Sharp elevation shadow
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.circle, size: 12, color: Colors.grey),
                      SizedBox(width: 10),
                      Text(
                        'Projects',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  projectData['projects'].length, // Get length of project list
              itemBuilder: (context, index) {
                // For each project, create a card
                return Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          projectData['projects'][index]
                              ['image'], // Dynamically fetch image
                        ),
                      ),
                      title: Text(
                        projectData['projects'][index]['title'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        projectData['projects'][index]['tag'],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, size: 14),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
