import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lizzie_portfolio/model/project_model.dart';
import 'package:lizzie_portfolio/repository/repository.dart';

class WorkScreen extends StatefulWidget {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<ProjectModel> projects = List<ProjectModel>();

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
                  child: Image(
                    image: (kIsWeb)
                        ? AssetImage(project.image)
                        : AssetImage('assets/${project.image}'),
                    fit: BoxFit.cover,
                  ));
            },
          ),
        ),
      ),
    );
  }
}
