import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            /// Background Image
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("public/images/california.jpeg"),
                    fit: BoxFit.cover, // Makes image responsive
                  ),
                ),
              ),
            ),

            /// Text Content (Right-Top Aligned)
            Positioned(
              top: 20, 
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Muhammad Ahmer Khan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: 4),
                  const Text(
                    "B.S., University of Karachi, 2022",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// GitHub Logo with Link
                  GestureDetector(
                    onTap: () => launchUrl(Uri.parse("https://github.com/mahmerkhan")),
                    child: Image.asset(
                      "public/images/github-mark.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
