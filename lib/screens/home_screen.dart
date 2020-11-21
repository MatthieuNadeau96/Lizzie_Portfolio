import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                alignment: Alignment(0, -0.75),
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
                alignment: Alignment(0, 0.75),
                child: Container(
                  height: deviceSize.height * 0.15,
                  width: deviceSize.width >= 1000
                      ? deviceSize.width * 0.5
                      : deviceSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage('$image/about-me-icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('$image/graphic-design-icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('$image/website-icon.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Image(
                          image: AssetImage('$image/writing-icon.png'),
                          fit: BoxFit.contain,
                        ),
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
