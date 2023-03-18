
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/pages/templates.dart';

class NavBar extends StatefulWidget {

  BoxConstraints constraints;
  int navIndex;

  NavBar({required this.constraints, required this.navIndex, super.key});

  @override 
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  late Widget logo;

  @override
  void initState() {
    super.initState();

    logo = SizedBox(
      width: 160,
      height: 160,
      child: SvgPicture.asset(
        'assets/images/logo.svg',
      )
    );
  }

  Widget getTitle() {
    return logo;
    return Text(
      "Mesbah",
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontSize: 32
      ),
    );
  }

  void directUser(int navIndex) {
    Widget target = (navIndex == 0) ? Home() : Templates();
    Navigator.push(context, MaterialPageRoute(builder: ((context) => target)));
  }

  Widget buildDist(IconData icon, int navIndex) {
    return GestureDetector(
      onTap: () => directUser(navIndex),
      child: Row(
        children: [
          Icon(icon,color: Colors.grey),
          SizedBox(width: widget.constraints.maxWidth * 0.006),
          Text(
            (navIndex == 0) ? "Projects" : "Templates",
            style: TextStyle(
              color: (widget.navIndex == navIndex) ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onBackground
            ),
          )
        ],
      ),
    );
  }

  @override 
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      width: widget.constraints.maxWidth * 0.15,
      height: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal:widget.constraints.maxWidth * 0.015,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: widget.constraints.maxHeight * 0.04),
          getTitle(),
          SizedBox(height: widget.constraints.maxHeight * 0.05),
          buildDist(Icons.topic_outlined, 0),
          SizedBox(height: widget.constraints.maxHeight * 0.008),
          buildDist(Icons.description_outlined, 1),
          SizedBox(height: widget.constraints.maxHeight * 0.15),
        ],
      )
    );
  }
}