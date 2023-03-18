
import 'package:flutter/material.dart';

class GeneratedContentForm extends StatefulWidget {

  TextEditingController generatedContentTE;
  void Function(String savedText) saveContent;

  GeneratedContentForm({required this.generatedContentTE, required this.saveContent});

  @override 
  State<GeneratedContentForm> createState() => _GeneratedContentFormState();
}

class _GeneratedContentFormState extends State<GeneratedContentForm> {



  Widget getOutputContainer() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(136, 77, 255, 0.21), style: BorderStyle.solid, width: 2),
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20
      ),
      child: Column(
        children: [
          TextFormField( 
            controller: widget.generatedContentTE,
            minLines: 15,
            maxLines: 15,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Colors.white
            ),
          ),
          SizedBox(height: 50),
         getActionBtns() 
        ],
      )
    );
  }

  Widget getActionBtns() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {}, 
            child: Text(
              "Copy"
            )
          ),
          ElevatedButton(
            onPressed: () {}, 
            child: Text(
              "Save Copy"
            )
          ),
          OutlinedButton(
            onPressed: () {}, 
            child: Text(
              "Save"
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
          )
        ],
      )
    );
  }


  @override 
  Widget build(BuildContext context) {

    return getOutputContainer();

  }
}