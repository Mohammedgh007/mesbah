import 'package:flutter/material.dart';

class TemplateCard extends StatelessWidget {

  String titleStr;
  String? subTitleStr;
  Function handleClick;

  TemplateCard({
    required this.titleStr,
    required this.subTitleStr,
    required this.handleClick
  });

  Widget getTitle(BuildContext context) {
    return Text(
      this.titleStr,
      style: TextStyle(
        fontSize: 25,
        color: Theme.of(context).colorScheme.primary
      ),
    );
  }

  Widget getSubTitle(BuildContext context) {
    return Flexible(
        child: Text(
        this.subTitleStr!,
        style: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      )
    );
  }

  Widget getCreateBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => this.handleClick(),
      child: Container(
        alignment: Alignment.centerRight,
        width: double.infinity,
        child: Text(
          "Create",
          style: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.primary
          ),
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
        height: 190,
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 15
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getTitle(context),
            SizedBox(height: 12),
            getSubTitle(context),
            Spacer(),
            getCreateBtn(context)
          ],
        ),
      )   
    );
  }
}