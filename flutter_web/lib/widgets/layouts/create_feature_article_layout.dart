import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/forms/generated_content_form.dart';

import '../forms/create_feature_article_form.dart';
import '../navigation/nab_bar.dart';

class CreateFeatureArticleLayout extends StatefulWidget {

  Future<void> Function(String contentFor, String about, List<String> tones) handleSubmit;
  void Function(String savedContent) handleSaveContent;
  TextEditingController generatedContentTE;

  CreateFeatureArticleLayout({
    required this.handleSubmit,
    required this.handleSaveContent,
    required this.generatedContentTE
  });

  @override 
  State<CreateFeatureArticleLayout> createState() => _CreateFeatureArticleLayoutState();
}

class _CreateFeatureArticleLayoutState extends State<CreateFeatureArticleLayout> {

  Widget getInputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Let's create the content!",
          style: TextStyle( 
            fontSize: 20,
            color: Theme.of(context).colorScheme.primary
          ),
        ), 
        SizedBox(height: 20),
        CreateFeatureArticleForm(handleSubmit: widget.handleSubmit)
      ],
    );
  }

  Widget getOutputSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Output",
          style: TextStyle( 
            fontSize: 20,
            color: Theme.of(context).colorScheme.primary
          ),
        ), 
        SizedBox(height: 20),
        GeneratedContentForm(generatedContentTE: widget.generatedContentTE, saveContent: widget.handleSaveContent)
      ],
    );
  }

  @override 
  Widget build(BuildContext context) {

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBar(constraints: constraints, navIndex: 1,),
              Container(
                height: double.infinity,
                width: constraints.maxWidth * 0.4,
                color: Theme.of(context).colorScheme.surface,
                padding: EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: constraints.maxHeight * 0.1
                ),
                child: getInputSection(),
              ),
              Container(
                height: double.infinity,
                width: constraints.maxWidth * 0.4,
                color: Theme.of(context).colorScheme.surface,
                padding: EdgeInsets.only(
                  right: 25,
                  left: 25,
                  top: constraints.maxHeight * 0.1
                ),
                child: getOutputSection(),
              )
            ]
            );
        },),
    );
  }
}