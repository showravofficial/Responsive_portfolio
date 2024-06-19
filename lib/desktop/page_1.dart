import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  final String about =
      "As a computer science student with a passion for software engineering, I am eager to apply my knowledge and skills to real-world projects and make a meaningful impact in the industry. I am highly motivated, detail-oriented, and always looking to learn and improve. I am confident that my technical abilities, problem-solving skills, and team-oriented mindset will make me a valuable asset to any organization. I am excited to take on new challenges and grow as a software engineer.";

  Future<void> _launcherURL(Uri url) async {
    if (await launchUrl(url)) {
      throw 'could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double baseFontSize = 8.0;
    double responsiveFontSize = baseFontSize * (screenWidth / 375);
    return Container(
      // height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        // color: Color(0xffdcdcdc),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              blurStyle: BlurStyle.outer,
              blurRadius: 20.0,
              offset: Offset(2.0, 2.0))
        ],
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, It's Me",
                    style: GoogleFonts.mogra(
                      color: Colors.limeAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    child: FittedBox(
                      child:
                          AnimatedTextKit(repeatForever: true, animatedTexts: [
                        WavyAnimatedText("Mir Md. Mosarof Hossan Showrav",
                            textStyle: GoogleFonts.cinzel(),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "I am passionate about ",
                          style: GoogleFonts.aBeeZee(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Flutter Developer",
                                textStyle: GoogleFonts.cormorant(),
                                speed: Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                "IoT",
                                textStyle: GoogleFonts.cormorant(),
                                speed: Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                "Robotics",
                                textStyle: GoogleFonts.cormorant(),
                                speed: Duration(milliseconds: 100),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    about,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.jost(
                      fontSize: responsiveFontSize >= 16
                          ? responsiveFontSize = 16
                          : responsiveFontSize,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
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
          SizedBox(
            width: 15.0,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              height: MediaQuery.of(context).size.width / 2.5,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(250),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 10,
                      offset: Offset(2.0, 2.0),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
