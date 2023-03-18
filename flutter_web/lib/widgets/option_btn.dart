import 'package:flutter/material.dart';

class OptionBtn extends StatelessWidget {

  String optionTitle;
  bool isSelected;
  void Function() handleClick;

  OptionBtn({
    required this.optionTitle,
    required this.isSelected,
    required this.handleClick
  });


  @override 
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => handleClick(),
      child: Container(
        width: 130,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration( 
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          border: Border.all( 
            width: 1,
            color: (isSelected) ? Theme.of(context).colorScheme.primary : Color.fromRGBO(150, 165, 184, 1)
          )
        ),
        child: Text(
          optionTitle,
          style: TextStyle( 
            fontSize: 14,
            color: (isSelected) ? Theme.of(context).colorScheme.primary : Color.fromRGBO(150, 165, 184, 1)
          ),
        ),
      ),
    );
  }
}