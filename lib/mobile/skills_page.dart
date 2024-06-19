import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  List proImg = [
    "assets/images/C++.png",
    "assets/images/Python.png",
    "assets/images/java.png",
    "assets/images/Dart_logo.png",
    "assets/images/Flutter_logo.png",
    "assets/images/api.png",
    "assets/images/logo.png",
    "assets/images/cp.png",
    "assets/images/DS.png",
    "assets/images/lx.png",
    "assets/images/oop.png",
    "assets/images/mysql.png",
    "assets/images/firebase.png",
    "assets/images/git.png",
    "assets/images/iot.png",
  ];

  List proLanguage = [
    "C++",
    "Python",
    "Java",
    "Dart",
    "Flutter",
    "REST API",
    "MVVM Architecture",
    "Competitive Programming",
    "Data Structure Algorithm",
    "Linux",
    "Object Oriented Programming",
    "MySQL Database",
    "Firebase",
    "Git & GitHub",
    "IoT"
  ];

  List WORK_EXPERIENCEimg = [
    "assets/images/basis.png",
    "assets/images/agl.jpg",
  ];
  List WORK_EXPERIENCEtitle = [
    "Executive, BASIS Student's Forum UITS.",
    "Flutter Apprenticeship."
  ];
  List WORK_EXPERIENCEsubtitle = [
    "UITS Computer Club.",
    "Algorithm Generation LTD."
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Skill And Experience",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
                    Icon(
                      Icons.settings,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "SKILLS",
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
                    itemCount: proLanguage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.asset(
                            proImg[index],
                            height: 50,
                            width: 50,
                          ),
                          title: Text(proLanguage[index]),
                        ),
                      );
                    }),
              ),
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
                    Icon(
                      Icons.workspace_premium,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "WORK EXPERIENCE ",
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
                    itemCount: WORK_EXPERIENCEtitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          WORK_EXPERIENCEimg[index],
                          height: 50,
                          width: 50,
                        ),
                        title: Text(WORK_EXPERIENCEtitle[index]),
                        subtitle: Text(WORK_EXPERIENCEsubtitle[index]),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
