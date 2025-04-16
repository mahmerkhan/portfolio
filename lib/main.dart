import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/projects_page.dart';

void main() => runApp(const BrittanyLayout());

class BrittanyLayout extends StatelessWidget {
  const BrittanyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmer Khan',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final tools = ["flutter", "android", "ios"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              // LEFT FIXED PANEL
              Expanded(
                flex: 2,
                child: Container(
                  // width: 300,
                  height: constraints.maxHeight,
                  padding: const EdgeInsets.all(100),
                  color: const Color(0xFF0F172A),
                  child: const LeftSidebar(),
                ),
              ),
              // RIGHT SCROLLABLE CONTENT
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SectionTitle("About"),
                      SectionText(
                          "I’m a developer passionate about crafting accessible, pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development, creating experiences that not only look great but are meticulously built for performance and usability.\n\nCurrently, I'm a Senior Mobile App Developer at Reactree, specializing in accessibility. I contribute to the creation and maintenance of UI components that power, ensuring our platform meets web accessibility standards and best practices to deliver an inclusive user experience.\n\nIn the past, I've had the opportunity to develop software across a variety of settings from advertising agencies and large corporations to start-ups and small digital product studios. I’m usually climbing, reading, hanging out with friends"),
                      SizedBox(height: 60),
                      SectionTitle("Experience"),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 11, 22, 45),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2024--PRESENT",
                                      style: TextStyle(fontSize: 16), // Optional
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Senior Mobile App Developer, Reactree Pvt. Ltd",
                                      style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 6,
                                      children: tools
                                          .map((tool) => Chip(
                                                label: Text(tool),
                                                backgroundColor: Colors.teal[700],
                                                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 11, 22, 45),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2023-—2023",
                                      style: TextStyle(fontSize: 16), // Optional
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Flutter Mobile App Developer, Innovative Network Pvt. Ltd",
                                      style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 6,
                                      children: tools
                                          .map((tool) => Chip(
                                                label: Text(tool),
                                                backgroundColor: Colors.teal[700],
                                                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 11, 22, 45),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2022—-2023",
                                      style: TextStyle(fontSize: 16), // Optional
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Junior Flutter Engineeer, Avialdo Solutions",
                                      style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 6,
                                      children: tools
                                          .map((tool) => Chip(
                                                label: Text(tool),
                                                backgroundColor: Colors.teal[700],
                                                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 60),

                      SectionTitle("Projects"),
                      // SectionText("Spotify Profile, WebGL demos, React apps, Node.js APIs..."),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 11, 22, 45),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "2022—-2023",
                                      style: TextStyle(fontSize: 16), // Optional
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Junior Flutter Engineeer, Avialdo Solutions",
                                      style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Wrap(
                                      spacing: 10,
                                      runSpacing: 6,
                                      children: tools
                                          .map((tool) => Chip(
                                                label: Text(tool),
                                                backgroundColor: Colors.teal[700],
                                                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      SizedBox(height: 60),
                      HoverText(
                        text: "View Full Projects",
                        onTap: () {
                          Navigator.pushNamed(context, '/projects');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ahmer Khan",
          style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 8),
        Text(
          "Mobile Application Engineer",
          style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 24),
        Text("ABOUT", style: GoogleFonts.inter(letterSpacing: 2)),
        SizedBox(height: 8),
        Text("EXPERIENCE", style: GoogleFonts.inter(letterSpacing: 2)),
        SizedBox(height: 8),
        Text("PROJECTS", style: GoogleFonts.inter(letterSpacing: 2)),
        Spacer(),
        Row(
          children: [
            GestureDetector(
              onTap: (){},
              child: SvgPicture.asset("images/github.svg")),
            
          ],
        )
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white));
  }
}

class SectionText extends StatelessWidget {
  final String text;
  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.inter(fontSize: 16, color: Colors.grey));
  }
}

class HoverText extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const HoverText({super.key, required this.text, required this.onTap});

  @override
  _HoverTextState createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 16,
            color: _isHovered ? Colors.cyan : Colors.grey,
            // decoration: _isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
