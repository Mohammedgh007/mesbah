import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/option_btn.dart';

class CreateFeatureArticleForm extends StatefulWidget {

  Future<void> Function(String contentFor, String about, List<String> tones) handleSubmit;

  CreateFeatureArticleForm({
    required this.handleSubmit
  });

  @override 
  State<CreateFeatureArticleForm> createState() => _CreateFeatureArticleFormState();
}

class _CreateFeatureArticleFormState extends State<CreateFeatureArticleForm> {

  TextEditingController contentForTE = TextEditingController();
  TextEditingController aboutTE = TextEditingController();
  List<bool> isSelected = [false, false, false, false, false, false, false];

  List<Widget> getContentForField() {
    return [
      Text(
        "Create Content For?",
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(150, 165, 184, 1),
        ),
      ),
      SizedBox(height: 5),
      TextField(
        controller: contentForTE,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.white
        ),
      )
    ];
  }

  List<Widget> getWhatField() {
    return [
      Text(
        "What is about?",
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(150, 165, 184, 1),
        ),
      ),
      SizedBox(height: 5),
      TextField(
        controller: aboutTE,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          fillColor: Colors.white
        ),
      )
    ];
  }


  List<Widget> getToneOptions() {
    return [
      Text(
        "Tone of Voice",
        style: TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(150, 165, 184, 1),
        ),
      ),
      SizedBox(height: 5),
      Container(
        width: double.infinity,
        child: Wrap( 
          spacing: 25,
          runSpacing: 25,
          children: [
            OptionBtn(optionTitle: "Funny", isSelected: isSelected[0], handleClick: () => setState(() => isSelected[0] = !isSelected[0])),
            OptionBtn(optionTitle: "Serious", isSelected: isSelected[1], handleClick: () => setState(() => isSelected[1] = !isSelected[1])),
            OptionBtn(optionTitle: "Formal", isSelected: isSelected[2], handleClick: () => setState(() => isSelected[2] = !isSelected[2])),
            OptionBtn(optionTitle: "Casual", isSelected: isSelected[3], handleClick: () => setState(() => isSelected[3] = !isSelected[3])),
            OptionBtn(optionTitle: "Respectful", isSelected: isSelected[4], handleClick: () => setState(() => isSelected[4] = !isSelected[4])),
            OptionBtn(optionTitle: "Professional", isSelected: isSelected[5], handleClick: () => setState(() => isSelected[5] = !isSelected[5])),
            OptionBtn(optionTitle: "Conversational", isSelected: isSelected[6], handleClick: () => setState(() => isSelected[6] = !isSelected[6])),
            
          ],
        ),
      )
    ];
  }

  Widget getSubmitBtn() {
    List<String> lis = [
      "Funny",
      "Serious",
      "Formal",
      "Casual",
      "Respectful",
      "Professional",
      "Conversational"
    ];
    List<String> tones = [];

    for (int i = 0; isSelected.length > i; i++) {
      if (isSelected[i]) {
        tones.add(lis[i]);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          widget.handleSubmit(contentForTE.text, aboutTE.text, tones);
        }, 
        child: Text(
          "Generate"
        )
      ),
    );
  }

  
  @override 
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 244, 244, 1),
        border: Border.all(color: Color.fromRGBO(136, 77, 255, 0.21), style: BorderStyle.solid, width: 2),
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20
      ),
      child: Form(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...getContentForField(),
            SizedBox(height: 40),
            ...getWhatField(),
            SizedBox(height: 40),
            ...getToneOptions(),
            SizedBox(height: 90),
            getSubmitBtn()
          ]
        ),
      ),
    );
  }
}