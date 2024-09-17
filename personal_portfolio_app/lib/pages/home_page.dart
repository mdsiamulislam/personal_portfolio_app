import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about_widget.dart';
import 'home_widget.dart';
import 'project_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of widget options corresponding to the icons
  final List<Widget> _pages = [
    const HomeWidget(), // Home Page
    const AboutWidget(), // About Page
    const ProjectWidget(), // Projects Page
  ];

  // Handle icon tap to switch between different screens
  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update selected index when icon is tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Theme mode based on toggle
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left icons (home, person, newspaper)
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home_filled,
                            color: _selectedIndex == 0
                                ? Colors.black
                                : Colors.grey),
                        onPressed: () => _onIconTapped(0), // Go to HomeWidget
                      ),
                      IconButton(
                        icon: Icon(Icons.person,
                            color: _selectedIndex == 1
                                ? Colors.black
                                : Colors.grey),
                        onPressed: () => _onIconTapped(1), // Go to AboutWidget
                      ),
                      IconButton(
                        icon: Icon(Icons.newspaper,
                            color: _selectedIndex == 2
                                ? Colors.black
                                : Colors.grey),
                        onPressed: () =>
                            _onIconTapped(2), // Go to ProjectWidget
                      ),
                    ],
                  ),

                  // Right icons (dark mode, Hire Me button)
                  Row(
                    children: [
                      // IconButton for Dark
                      ElevatedButton.icon(
                        onPressed: () async {
                          final Uri url = Uri.parse('https://google.com/');
                          await launchUrl(url,
                              mode: LaunchMode
                                  .externalApplication); // Opens in browser
                        },
                        icon: const Icon(Icons.add, color: Colors.white),
                        label: const Text(
                          'Hire Me',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body:
            _pages[_selectedIndex], // Display selected page based on icon click
      ),
    );
  }
}
