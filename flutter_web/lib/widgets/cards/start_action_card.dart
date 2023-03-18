
import 'package:flutter/material.dart';

class StartActionCard extends StatefulWidget {

  bool isFill;
  String titleStr;
  String? subTitleStr;

  StartActionCard({
    required this.isFill,
    required this.titleStr,
    this.subTitleStr
    });

  @override 
  State<StartActionCard> createState() => _StartActionCardState();
}

class _StartActionCardState extends State<StartActionCard> {

  Widget getTitle() {
    return Text(
      widget.titleStr,
      style: TextStyle(
        fontSize: 25,
        color: (widget.isFill) ? Colors.white : Theme.of(context).colorScheme.primary
      ),
    );
  }

  Widget getSubTitle() {
    return Flexible(
        child: Text(
        widget.subTitleStr!,
        style: TextStyle(
          fontSize: 12,
          color: (widget.isFill) ? Colors.white : Theme.of(context).colorScheme.onBackground,
        ),
      )
    );
  }

  Widget getIconBtn() {
    return IconButton(
      iconSize: 60,
      onPressed: () {}, 
      icon: Icon(Icons.add, color: (widget.isFill) ? Colors.white : Theme.of(context).colorScheme.primary)
    );
  }

  @override 
  Widget build(BuildContext context) {

    return Card(
      child: Container(
        color: (widget.isFill) ? Theme.of(context).colorScheme.primary : Colors.white,
        width: 330,
        height: 120,
        padding: EdgeInsets.only(
          top: 25,
          bottom: 25,
          left: 15
          ),
        child: Row(
          children: [
            SizedBox(
              width: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getTitle(),
                  if (widget.subTitleStr != null) SizedBox(height: 12),
                  if (widget.subTitleStr != null) getSubTitle()
                ],
              ),
            ),
            getIconBtn()
          ],
        ),
      )   
    );
  }
}