import 'package:carousel_slider/carousel_slider.dart';
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
    return deviceSize.width >= 991
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: deviceSize.width * 0.3,
                  child: carouselImages == null
                      ? Image.asset(
                          (kIsWeb) ? image : 'assets/$image',
                          fit: BoxFit.contain,
                        )
                      : CarouselSlider(
                          options: CarouselOptions(
                            height: 800.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 850),
                            autoPlayInterval: Duration(milliseconds: 1800),
                          ),
                          items: carouselImages.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Image.asset(
                                    (kIsWeb) ? i : 'assets/$i',
                                    fit: BoxFit.contain,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                ),
              ),
              Expanded(
                child: Container(
                  width: deviceSize.width * 0.3,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 30,
                          ),
                          // width: 400,
                          child: Text(description),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Colors.grey[600],
                  onPressed: Navigator.of(context).pop,
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Expanded(
                child: Container(
                  height: 400,
                  child: Center(
                    child: carouselImages == null
                        ? Image(
                            image: (kIsWeb)
                                ? AssetImage(image)
                                : AssetImage('assets/$image'),
                            fit: BoxFit.contain,
                          )
                        : CarouselSlider(
                            options: CarouselOptions(
                              height: 800.0,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 850),
                              autoPlayInterval: Duration(milliseconds: 1800),
                            ),
                            items: carouselImages.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Image(
                                      image: (kIsWeb)
                                          ? AssetImage(i)
                                          : AssetImage('assets/$i'),
                                      fit: BoxFit.contain,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 400,
                  child: SingleChildScrollView(
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
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Colors.grey[600],
                  onPressed: Navigator.of(context).pop,
                  child: Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          );
  }
}
