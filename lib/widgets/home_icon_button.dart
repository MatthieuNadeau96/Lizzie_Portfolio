import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  final String image;
  final Function tapped;

  HomeIconButton({this.image, this.tapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: InkWell(
          onTap: tapped,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
