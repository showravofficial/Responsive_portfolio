import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  Future<void> _launcherURL(Uri url) async {
    if (await launchUrl(url)) {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> _projectTitle = [
      "Amar School",
      "WhatsApp",
      "Messenger",
      "Fruit Shop",
      "Coffee Shop",
      "Online Voting System",
      "Student Identifier",
      "Village Scenario",
    ];
    List<String> _projecSubtTitle = [
      "Using Flutter ",
      "Using Flutter",
      "Using Flutter",
      "Using Java",
      "Using Java",
      "Using PHP",
      "Using PHP",
      "openGL Project",
    ];
    List<Uri> _projecurl = [
      Uri.parse('https://github.com/showravofficial/AmarSchool'),
      Uri.parse('https://github.com/showravofficial/WhatsApp'),
      Uri.parse('https://github.com/showravofficial/messenger'),
      Uri.parse('https://github.com/showravofficial/Fruit_Shop'),
      Uri.parse('https://github.com/showravofficial/coffee_Shop'),
      Uri.parse('https://github.com/showravofficial/Online-Voting-System'),
      Uri.parse('https://github.com/showravofficial/Student_Identifier'),
      Uri.parse('https://github.com/showravofficial/Village_Scenario'),
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black87,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.code),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Projects",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18.0, // Added font size
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _projectTitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(_projectTitle[index]),
                        subtitle: Text(_projecSubtTitle[index]),
                        trailing: ElevatedButton(
                          onPressed: () {
                            _launcherURL(_projecurl[index]);
                          },
                          child: Text("View Details"),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15,),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NOTE: I have some more apps in my ",
                      style: GoogleFonts.alegreyaSc(),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        final Uri url =
                            Uri.parse('https://github.com/showravofficial');
                        _launcherURL(url);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                      ),
                      label: Text(
                        "GitHub",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
