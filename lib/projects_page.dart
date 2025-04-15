import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SafeArea(
        child: SingleChildScrollView(
          // 👈 Enable vertical scrolling
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "← Muhammad Ahmer Khan",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "All Projects",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 40, // 👈 Adjust spacing here
                      columns: const [
                        DataColumn(
                          label: Text(
                            "Year",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Project",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Made at",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Built with",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            "Link",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                      rows: _projectRows,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List<DataRow> _projectRows = [
  // projectRow(
  //   year: "2023",
  //   project: "Emerson Collective",
  //   company: "Upstatement",
  //   tools: ["Next.js", "TypeScript", "SCSS", "Contentful"],
  //   link: "emersoncollective.com",
  // ),
  // projectRow(
  //   year: "2023",
  //   project: "Harvard Business School Next.js Site",
  //   company: "Upstatement",
  //   tools: ["React", "TypeScript", "Next.js", "Contentful"],
  //   link: "hbs.edu",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Threadable",
  //   company: "Upstatement",
  //   tools: ["React Native", "Ruby on Rails", "Firebase"],
  //   link: "apps.apple.com",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Pratt",
  //   company: "Upstatement",
  //   tools: ["WordPress", "Timber", "WordPress Multisite", "Gutenberg", "JavaScript"],
  //   link: "pratt.edu",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "Upstatement",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  // projectRow(
  //   year: "2022",
  //   project: "Harvard Business School Design System",
  //   company: "",
  //   tools: ["Storybook", "React", "TypeScript"],
  //   link: "",
  // ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
];

DataRow projectRow({
  required String year,
  required String project,
  required String company,
  required List<String> tools,
  required String link,
}) {
  return DataRow(cells: [
    DataCell(Text(year, style: _cellStyle)),
    DataCell(Text(project, style: _boldStyle)),
    DataCell(Text(company, style: _cellStyle)),
    DataCell(Wrap(
      spacing: 30,
      runSpacing: 6,
      
      children: tools
          .map((tool) => Chip(
                label: Text(tool),
                backgroundColor: Colors.teal[700],
                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
              ))
          .toList(),
    )),
    DataCell(
      link.isNotEmpty
          ? InkWell(
              onTap: () {
                // Open link with url_launcher or leave as is
              },
              child: Text(
                link,
                style: const TextStyle(color: Colors.blueAccent),
              ),
            )
          : const Text(""),
    ),
  ]);
}

const TextStyle _cellStyle = TextStyle(color: Colors.white70);
const TextStyle _boldStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14);
