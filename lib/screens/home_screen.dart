import 'package:flutter/material.dart';
import 'package:lizzie_portfolio/screens/about_screen.dart';
import 'package:lizzie_portfolio/screens/work_screen.dart';
import 'package:lizzie_portfolio/widgets/home_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    ThemeData theme = Theme.of(context);
    final desktop = deviceSize.width >= 770;

    String mobileImage = 'assets/images';
    String desktopImage = 'images/';
    String image = desktop ? desktopImage : mobileImage;

    return Scaffold(
      body: Center(
        child: Container(
          height: deviceSize.height * 0.5,
          // width: deviceSize.width * 0.75,
          color: theme.canvasColor,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment(0, 0.5),
                child: Container(
                  height: deviceSize.height * 0.40,
                  child: Image(
                    image: AssetImage('$image/title-icon.png'),
                    width: deviceSize.width,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -1.00),
                child: Container(
                  height: deviceSize.height * 0.2,
                  width: deviceSize.width >= 1000
                      ? deviceSize.width * 0.5
                      : deviceSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeIconButton(
                          image: '$image/about-me-icon.png',
                          tooltip: 'About Me',
                          tapped: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutScreen(),
                              ),
                            );
                          }),
                      HomeIconButton(
                        image: '$image/graphic-design-icon.png',
                        tooltip: 'Graphic Design',
                        tapped: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WorkScreen(),
                            ),
                          );
                        },
                      ),
                      HomeIconButton(
                        image: '$image/website-icon.png',
                        tooltip: 'My Website',
                        tapped: () => _handlePress('https://gooddogdraws.com'),
                      ),
                      HomeIconButton(
                        image: '$image/writing-icon.png',
                        tooltip: 'My Writing',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
