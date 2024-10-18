import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ImageSection() {
  return Column(
    children: [
      Row(
        children: [
          Icon(Icons.circle, size: 7, color: Colors.grey),
          TextButton(
            onPressed: () {},
            child: Text(
              'Available for hire',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
        ],
      ),
      CircleAvatar(
        radius: 55,
        backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/29775873?v=4'),
      ),
    ],
  );
}
