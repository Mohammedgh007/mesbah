import 'package:flutter/material.dart';
import 'package:flutter_web/models/project_overview.dart';
import 'package:flutter_web/widgets/cards/project_card.dart';
import 'package:flutter_web/widgets/navigation/nab_bar.dart';

import '../cards/start_action_card.dart';

class HomeLayout extends StatefulWidget {

  List<ProjectOverviewModel> projectsList;

  HomeLayout({required this.projectsList});
  
  @override 
  State<HomeLayout> createState() => _HomeLayoutState();
}


class _HomeLayoutState extends State<HomeLayout> {

  List<Widget> getLetStartSection() {
    return [
      Text(
        "Let's Start",
        style: TextStyle( 
          fontSize: 20,
          color: Theme.of(context).colorScheme.primary
        ),
      ), 
      SizedBox(height: 4,),
      Row(
        children: [
          StartActionCard(
            isFill: true,
            titleStr: "New Project",
          ),
          StartActionCard(
            isFill: false,
            titleStr: "Social Media",
            subTitleStr: "Create a stunning content and converting content",
          ),
          StartActionCard(
            isFill: false,
            titleStr: "Email",
            subTitleStr: "Create a stunning content and converting content",
          ),
          StartActionCard(
            isFill: false,
            titleStr: "Blog",
            subTitleStr: "Create a stunning content and converting content",
          ),
        ],
      )
    ];
  }


  List<Widget> getProjectsSection() {
    return [
      Text(
        "Projects",
        style: TextStyle( 
          fontSize: 20,
          color: Theme.of(context).colorScheme.primary
        ),
      ), 
      SizedBox(height: 4,),
      Wrap(
        spacing: 5,
        runSpacing: 5,
        children: widget.projectsList.map((e) => ProjectCard(titleStr: e.projectname, subTitleStr: e.disc, handleClick: () {})).toList(),
      )
    ];
  }

  @override 
  Widget build(BuildContext context) {

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavBar(constraints: constraints, navIndex: 0,),
          Container(
            height: double.infinity,
            width: constraints.maxWidth * 0.85,
            color: Theme.of(context).colorScheme.surface,
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...getLetStartSection(),
                SizedBox(height: 30),
                ...getProjectsSection()
              ],
            ),
          )
        ]
        );
      },),
    );
  }
}