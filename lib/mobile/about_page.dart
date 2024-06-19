import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  List edulogo = [
    "assets/images/uits.png",
    "assets/images/fgc.png",
    "assets/images/fgphs.png",
  ];
  List eduName = [
    "University of Information Technology and Sciences (UITS).",
    "Feni Government College.",
    "Feni Govt. Pilot High School.",
  ];
  List eduDept = [
    "BSc. in Computer Science and Engineering.",
    "Department of science.",
    "Department of science.",
  ];
  List eduDuration = [
    "2020 - 2023",
    "HSC: 2018",
    "SSC: 2016",
  ];

  final List<Widget> achIcon = [
    Icon(
      Icons.error,
      size: 50,
    ),
    Image.asset(
      "assets/images/NASA.png",
      width: 50,
      height: 50,
    ),
    Icon(Icons.code, size: 50),
    Icon(Icons.security, size: 50),
    Icon(Icons.security, size: 50),
    Image.asset(
      "assets/images/Flutter_logo.png",
      width: 50,
      height: 50,
    ),
    Icon(Icons.security, size: 50),
  ];

  List achtitle = [
    "Solved 600+ problems in different Online Judges.",
    "NASA International Space Apps Challenge.",
    "Intra Virtual Fest Programming Contest.",
    "UITS CSE Day CTF Competition",
    "UITS CTF Competition.",
    "Flutter App Development Course For Android & IOS.",
    "MIST LeetCon."
  ];

  List achSubtitle = [
    "Codechef,Codeforces,Beecrowd etc. ",
    "2021",
    "2020",
    "2022",
    "2022",
    "Pondit 2nd Batch",
    "2023"
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
                  "About",
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
                      Icons.school,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "EDUCATION",
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
                    itemCount: eduName.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.asset(
                          edulogo[index],
                          height: 50,
                          width: 50,
                        ),
                        title: Text(eduName[index]),
                        subtitle: Text(eduDept[index]),
                        trailing: Text(
                          eduDuration[index],
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
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
                      Icons.emoji_events,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "ACHIEVEMENTS",
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
                    itemCount: achtitle.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: achIcon[index],
                        title: Text(achtitle[index]),
                        subtitle: Text(achSubtitle[index]),
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
