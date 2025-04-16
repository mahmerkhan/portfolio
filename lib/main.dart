import 'package:flutter/material.dart';
import 'package:portfolio/projects_page.dart';

void main() => runApp(const BrittanyLayout());

class BrittanyLayout extends StatelessWidget {
  const BrittanyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projects Showcase',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      initialRoute: '/',
      routes: { 
        '/': (context) => const MainPage(),
        '/projects': (context) => const ProjectsPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
                          "I’m a developer passionate about crafting accessible, pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development, creating experiences that not only look great but are meticulously built for performance and usability."),
                      SizedBox(height: 60),
                      SectionTitle("Experience"),
                      SectionText("Worked at companies like Avialdo Solutions, Innovative Network..."),
                      SizedBox(height: 60),
                      SectionTitle("Projects"),
                      // SectionText("Spotify Profile, WebGL demos, React apps, Node.js APIs..."),
                      SizedBox(height: 60),
                      SectionTitle("More Projects"),
                      SectionText("Blog, Side Quests, Freelance Work, Open Source..."),
                      SizedBox(height: 60),
                      // SectionTitle("Contact"),
                      // SectionText("Reach me via GitHub, LinkedIn, or Instagram..."),
                      // SizedBox(height: 100),
                      // SectionText("Blog, Side Quests, Freelance Work, Open Source..."),
                      // SizedBox(height: 60),
                      // SectionTitle("Contact"),
                      // SectionText("Reach me via GitHub, LinkedIn, or Instagram..."),
                      // SizedBox(height: 100),
                      SectionText("Blog, Side Quests, Freelance Work, Open Source..."),
                      SizedBox(height: 60),
                      SectionTitle("Contact"),
                      SectionText("Reach me via GitHub, LinkedIn, or Instagram..."),
                      SizedBox(height: 100),
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
      children: const [
        Text(
          "Muhammad Ahmer Khan",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "Mobile Applications Engineer",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 24),
        Text("ABOUT", style: TextStyle(letterSpacing: 2)),
        SizedBox(height: 8),
        Text("EXPERIENCE", style: TextStyle(letterSpacing: 2)),
        SizedBox(height: 8),
        Text("PROJECTS", style: TextStyle(letterSpacing: 2)),
        Spacer(),
        Row(
          children: [
            Icon(Icons.code),
            SizedBox(width: 12),
            Icon(Icons.link),
            SizedBox(width: 12),
            Icon(Icons.photo_camera),
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
    return Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white));
  }
}

class SectionText extends StatelessWidget {
  final String text;
  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontSize: 16, color: Colors.grey));
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
            color: _isHovered ? Colors.white : Colors.grey,
            decoration: _isHovered ? TextDecoration.underline : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}



