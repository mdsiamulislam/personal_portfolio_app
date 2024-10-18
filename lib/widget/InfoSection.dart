import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart'; // For getting local file path
import 'package:open_filex/open_filex.dart'; // For opening the downloaded file

class InfoSection extends StatefulWidget {
  @override
  _InfoSectionState createState() => _InfoSectionState();
}

class _InfoSectionState extends State<InfoSection> {
  bool isCopied = false;

  // Method to download the PDF file from assets and save it locally
  Future<void> downloadCv() async {
    try {
      // Load the PDF from assets
      final ByteData data = await rootBundle.load('assets/cv.pdf');
      final List<int> bytes = data.buffer.asUint8List();

      // Get the application documents directory
      final Directory directory = await getApplicationDocumentsDirectory();
      final String filePath = '${directory.path}/cv.pdf';

      // Write the PDF file to the local file system
      final File file = File(filePath);
      await file.writeAsBytes(bytes, flush: true);

      // Open the file (optional)
      OpenFilex.open(filePath);

      // Show success message (optional)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('CV downloaded: $filePath')),
      );
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error downloading CV: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.circle, size: 7, color: Colors.grey),
            TextButton(
              onPressed: () {},
              child: Text(
                'Software Engineer',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
          ],
        ),
        Text(
          "I'm Siam",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Product Designer',
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Clipboard.setData(
                    ClipboardData(text: "mdsiamulislamsoaib@gmail.com"));
                setState(() {
                  isCopied = true;
                });

                // Reset the icon after a short delay
                Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    isCopied = false;
                  });
                });
              },
              icon: Icon(
                isCopied ? Icons.check : Icons.copy,
                size: 12,
              ),
              label: Text(
                isCopied ? 'Copied' : 'Copy Email',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
              style: ElevatedButton.styleFrom(
                iconColor: Colors.black,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(width: 10),
            ElevatedButton.icon(
              onPressed: downloadCv, // Call the downloadCv method when clicked
              icon: Icon(Icons.download, size: 12, color: Colors.white),
              label: Text(
                'CV',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
