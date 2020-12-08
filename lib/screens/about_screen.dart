import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  void _handlePress(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    String mobileImage = 'assets/images';
    String desktopImage = 'images/';
    String image = (kIsWeb) ? desktopImage : mobileImage;
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.canvasColor,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.only(
            bottom: 56,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
          width: 500,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: Image(
                              image: AssetImage('$image/about-me-photo.png'),
                            )),
                      ),
                      Text(
                        'I am a freelance artist and visual communicator. I started my own art brand, Good Dog Draws, in 2017 and love seeing how it has evolved and grown. Animals, plants, and shoes are my favorite drawing subjects. Procreate is my go-to software, but I used Adobe Suite all throughout college. As a quick and curious learner, I’m sure I will venture into other softwares at one point or another.\n\nI graduated from the University of Vermont with a B.S. in Public Communication and minored in Studio Art. I currently am accepting personal commissions (portraits, custom illustrations, etc), as well as professional business commissions (logos, signage, pamphlets, etc). I am also open to working with a single company full time if it is the right fit. Please do not hesitate to reach out and start a conversation about how I can be of assistance to you or your company.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => _handlePress(
                          'https://www.instagram.com/gooddoggyboy/'),
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _handlePress(
                          'https://www.linkedin.com/in/lizzie-clarke/'),
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          _handlePress('mailto:elizabeth.clarke.20@gmail.com'),
                      icon: FaIcon(
                        FontAwesomeIcons.envelope,
                      ),
                    ),
                    IconButton(
                      onPressed: () =>
                          _handlePress('https://elizabeth-clarke.medium.com'),
                      icon: FaIcon(
                        FontAwesomeIcons.medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
