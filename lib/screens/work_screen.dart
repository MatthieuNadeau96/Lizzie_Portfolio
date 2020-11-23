import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lizzie_portfolio/model/project_model.dart';
import 'package:lizzie_portfolio/repository/repository.dart';
import 'package:lizzie_portfolio/widgets/project_detail_modal.dart';

class WorkScreen extends StatefulWidget {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<ProjectModel> projects = List<ProjectModel>();

  bool detailOpened = false;
  String titleDetails;
  String descriptionDetails;
  String imageDetails;
  List<String> carouselImagesDetails;

  @override
  void initState() {
    super.initState();
    projects = getProjects();
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    final desktop = deviceSize.width >= 770;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.canvasColor,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: desktop ? deviceSize.width * 0.75 : deviceSize.width,
          margin: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: desktop ? 4 : 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final ProjectModel project = projects[index];
              return Container(
                height: 100,
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Stack(
                  children: [
                    Center(
                      child: Image(
                        image: (kIsWeb)
                            ? AssetImage(project.image)
                            : AssetImage('assets/${project.image}'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          hoverColor: Colors.white10,
                          focusColor:
                              Theme.of(context).textTheme.bodyText1.color,
                          onTap: () {
                            setState(() {
                              showGeneralDialog(
                                barrierColor: Colors.black.withOpacity(0.5),
                                transitionBuilder: (context, a1, a2, widget) {
                                  final curvedValue =
                                      Curves.easeInOutBack.transform(a1.value) -
                                          1.0;
                                  return Transform(
                                    transform: Matrix4.translationValues(
                                      0.0,
                                      curvedValue * 200,
                                      0.0,
                                    ),
                                    child: Opacity(
                                      opacity: a1.value,
                                      child: AlertDialog(
                                        shape: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        content: Container(
                                          height: deviceSize.height * 0.6,
                                          width: desktop
                                              ? deviceSize.width * 0.6
                                              : deviceSize.width * 0.8,
                                          child: ProjectDetailModal(
                                            title: project.title,
                                            description: project.description,
                                            image: project.image,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                transitionDuration: Duration(milliseconds: 200),
                                barrierDismissible: true,
                                barrierLabel: '',
                                context: context,
                                pageBuilder:
                                    (context, animation1, animation2) {},
                              );
                              detailOpened = true;
                              titleDetails = project.title;
                              descriptionDetails = project.description;
                              imageDetails = project.image;
                              carouselImagesDetails = project.carouselImages;
                              print('carouselImagesDetails');
                              print(carouselImagesDetails);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
