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
    var deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: deviceSize.width >= 991
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: deviceSize.height * 0.5,
                  width: deviceSize.width * 0.3,
                  child: Expanded(
                    child: Image(
                      image: (kIsWeb)
                          ? AssetImage(image)
                          : AssetImage('assets/$image'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  height: deviceSize.height * 0.5,
                  width: deviceSize.width * 0.3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15,
                          ),
                          // width: 400,
                          child: Text(description),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(
                  height: 300,
                  child: Expanded(
                    // width: deviceSize.width * 0.75,
                    // height: 500,
                    child: Center(
                      child: Image(
                        image: (kIsWeb)
                            ? AssetImage(image)
                            : AssetImage('assets/$image'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(description),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
