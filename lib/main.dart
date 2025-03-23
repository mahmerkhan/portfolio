import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      home: const PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF001F3F), Color.fromARGB(255, 1, 48, 96)], // Navy blue gradient
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Text(
                    "MUHAMMAD",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                      fontWeight: FontWeight.normal,
                      color: Colors.white, // Adjusted for better contrast
                    ),
                  ),
                  Text(
                    "AHMER",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                      fontWeight: FontWeight.normal,
                      color: Colors.white, // Adjusted for better contrast
                    ),
                  ),
                  const SizedBox(height: 5), // Space between AHMER and Khan
                  Transform.rotate(
                    angle: -1.57, // Rotates "Khan" vertically
                    child: Text(
                      "Khan",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white, // Adjusted for better contrast
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30), // More space before links
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildLink("GitHub", "https://github.com/mahmerkhan"),
                  _buildSeparator(),
                  _buildLink("LinkedIn", "https://linkedin.com"),
                  _buildSeparator(),
                  _buildLink("Resume", "https://resume.com"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLink(String text, String url) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse(url)),
      child: Text(
        text,
        style: GoogleFonts.bebasNeue(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white, // Adjusted for better contrast
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        "•",
        style: GoogleFonts.inter(fontSize: 16, color: Colors.white), // Adjusted for better contrast
      ),
    );
  }
}
