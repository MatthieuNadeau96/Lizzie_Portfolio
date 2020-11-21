import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String image;
  final List<String> carouselImages;

  ProjectModel({
    @required this.title,
    @required this.description,
    @required this.image,
    this.carouselImages,
  });
}
