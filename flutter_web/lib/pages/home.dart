
import 'package:flutter/material.dart';
import 'package:flutter_web/models/project_overview.dart';

import '../widgets/layouts/home_layout.dart';

class Home extends StatefulWidget {

  @override 
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ProjectOverviewModel> projectsList = [
    ProjectOverviewModel(projectID: 0, projectname: "Yamama Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 1, projectname: "Elm Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 2, projectname: "Vectara Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 3, projectname: "Tuwaiq Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 4, projectname: "Sdaia Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 5, projectname: "Hackathon Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
    ProjectOverviewModel(projectID: 6, projectname: "STC Compagin", disc: "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum"),
  ];

  @override
  Widget build(BuildContext context) {

    return HomeLayout(
      projectsList: projectsList
    );
  }
}