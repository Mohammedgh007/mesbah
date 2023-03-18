
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {


  String titleStr;
  String? subTitleStr;
  Function handleClick;

  ProjectCard({
    required this.titleStr,
    required this.subTitleStr,
    required this.handleClick
  });

  Widget getTitle(BuildContext context) {
    return Text(
      this.titleStr,
      style: TextStyle(
        fontSize: 25,
        color: Theme.of(context).colorScheme.primary,
        overflow: TextOverflow.fade
      ),
    );
  }

  Widget getSubTitle(BuildContext context) {
    return Flexible(
        child: Text(
        subTitleStr!,
        style: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.onBackground,
          overflow: TextOverflow.fade
        ),
      )
    );
  }

  @override 
  Widget build(BuildContext context) {

    return Card(
      child: Container(
        color: Colors.white,
        width: 330,
        height: 140,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 15
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getTitle(context),
            SizedBox(height: 12),
            getSubTitle(context)
          ],
        ),
      )   
    );
  }
}