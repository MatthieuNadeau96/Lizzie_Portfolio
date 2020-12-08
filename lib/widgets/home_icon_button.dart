import 'package:flutter/material.dart';

class HomeIconButton extends StatelessWidget {
  final String image;
  final String tooltip;
  final Function tapped;

  HomeIconButton({this.image, this.tooltip, this.tapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Tooltip(
          message: tooltip,
          verticalOffset: 80,
          child: InkWell(
            onTap: tapped,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
