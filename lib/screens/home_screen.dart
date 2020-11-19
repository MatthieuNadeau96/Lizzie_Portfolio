import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: deviceSize.height,
        color: theme.canvasColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: Container(
                height: deviceSize.height * 0.7,
                width: deviceSize.width * 0.75,
                padding: EdgeInsets.all(0),
                child: Image(
                  image: AssetImage('images/title-icon.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.5),
              child: Container(
                height: deviceSize.height * 0.25,
                width: deviceSize.width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('images/about-me-icon.png'),
                    ),
                    Image(
                      image: AssetImage('images/graphic-design-icon.png'),
                    ),
                    Image(
                      image: AssetImage('images/website-icon.png'),
                    ),
                    Image(
                      image: AssetImage('images/writing-icon.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
