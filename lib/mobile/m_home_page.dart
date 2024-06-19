import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:showrav_dev/mobile/about_page.dart';
import 'package:showrav_dev/mobile/contact_page.dart';
import 'package:showrav_dev/mobile/projects_page.dart';
import 'package:showrav_dev/mobile/skills_page.dart';
import 'package:url_launcher/url_launcher.dart';

class MHomePage extends StatelessWidget {
  const MHomePage({super.key});

  Future<void> _launcherURL(Uri url) async {
    if (await launchUrl(url)) {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imagList = [
      "assets/images/Flutter_logo.png",
      "assets/images/Dart_logo.png",
      "assets/images/firebase.png",
      "assets/images/java.png",
      "assets/images/Python.png",
      "assets/images/C++.png",
    ];

    final String about =
        "As a computer science student with a passion for software engineering, I am eager to apply my knowledge and skills to real-world projects and make a meaningful impact in the industry. I am highly motivated, detail-oriented, and always looking to learn and improve. I am confident that my technical abilities, problem-solving skills, and team-oriented mindset will make me a valuable asset to any organization. I am excited to take on new challenges and grow as a software engineer.";

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: DefaultTextStyle(
          style: const TextStyle(
            letterSpacing: 10,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.blueGrey,
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FadeAnimatedText("Welcome"),
              FadeAnimatedText("W"),
              FadeAnimatedText("We"),
              FadeAnimatedText("Wel"),
              FadeAnimatedText("Welc"),
              FadeAnimatedText("Welco"),
              FadeAnimatedText("Welcom"),
            ],
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
          side: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        shadowColor: Colors.black,
        elevation: 20,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent[200],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 180.0,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                  ),
                  items: imagList
                      .map(
                        (item) => Container(
                          margin: EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              FittedBox(
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      // height: height / 2.5,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.white10.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white10,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 10.0,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 180.0, left: 15.0, right: 15.0, bottom: 20.0),
                        child: Text(
                          about,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.jost(
                            fontSize: isPortrait ? width / 30 : width / 40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: isPortrait ? -150 : -100,
                      child: Container(
                        height: isPortrait ? 200 : 150,
                        width: isPortrait ? 200 : 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/profile.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white12, width: 2.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: DefaultTextStyle(
                            style: TextStyle(
                              fontSize: isPortrait ? width / 15 : width / 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                WavyAnimatedText(
                                  "Mir Md. Mosarof Hossan Showrav",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Flutter_logo.png"),
                                ),
                              ),
                            ),
                            DefaultTextStyle(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: isPortrait ? width / 20 : width / 25,
                                fontWeight: FontWeight.bold,
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    "Flutter Developer",
                                    textStyle: GoogleFonts.cormorant(),
                                    speed: Duration(milliseconds: 100),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      final Uri url = Uri.parse(
                          'https://www.facebook.com/themir.official/');
                      _launcherURL(url);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        final Uri url = Uri.parse(
                            'https://www.linkedin.com/in/the-showrav/');
                        _launcherURL(url);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      final Uri url =
                          Uri.parse('https://github.com/showravofficial');
                      _launcherURL(url);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white54,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mir Md Mosarof Hossan Showrav"),
              accountEmail: Text("showravofficial@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                radius: 30,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("About"),
                trailing: FaIcon(FontAwesomeIcons.arrowRight),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SkillsPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Skills"),
                trailing: FaIcon(FontAwesomeIcons.arrowRight),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProjectsPage(),
                    ));
              },
              child: ListTile(
                leading: Icon(Icons.laptop),
                title: Text("Projects"),
                trailing: FaIcon(FontAwesomeIcons.arrowRight),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactPage(),
                  ),
                );
              },
              child: ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                trailing: FaIcon(FontAwesomeIcons.arrowRight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
