import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

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

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        // color: Colors.redAccent,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.code,
                  size: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Project",
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: _projectTitle.length,
              itemBuilder: (context, index) {
                return ListTile(
                  selected: true,
                  title: Text(
                    _projectTitle[index],
                    style: GoogleFonts.sen(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    _projecSubtTitle[index],
                    style: GoogleFonts.itim(
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      _launcherURL(_projecurl[index]);
                    },
                    child: Text("View Details"),
                  ),
                );
              },
            ),
          ),
          Row(
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
          
        ],
      ),
    );
  }
}
