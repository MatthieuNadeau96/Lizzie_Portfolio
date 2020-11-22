import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProjectDetailModal extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final List<String> carouselImages;

  ProjectDetailModal({
    this.title,
    this.description,
    this.image,
    this.carouselImages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          Image(
            image:
                (kIsWeb) ? AssetImage('project.image') : AssetImage('assets/'),
            fit: BoxFit.cover,
          ),
          Text(
            title,
          ),
          Text(
            description,
          ),
        ],
      ),
    );
  }
}
