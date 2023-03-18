import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/layouts/create_feature_article_layout.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CreateFeatureArticle extends StatefulWidget {

  @override 
  State<CreateFeatureArticle> createState() => _CreateFeatureArticleState();
}

class _CreateFeatureArticleState extends State<CreateFeatureArticle> {

  TextEditingController generatedContentTE = TextEditingController();


  Future<void> handleSubmitInput(String contentFor, String what, List<String> tones) async {
    debugPrint("submitted " + contentFor + " ;;;; " + what);

    Map<String, String> header = {
    "Content-Type": "application/json",
    "customer-id": "1199340704",
    "x-api-key": "zqt_R3x8oKeU9JnoCUtDyWyrD5nMt0vWV4CqDikEZg"
  };

  Map<String, dynamic> body = {
    "model": "gpt-3.5-turbo",
    "messages": [
      {
        "role": "user",
        "content": "create a featured journal about " + what + " that for " + what + " with the tones" + tones.join(", ")
      }
    ]
  };

    var url = Uri.https('experimental.willow.vectara.io', '/v1/chat/completions');
    try {
      http.Response res = await http.post(url, body: jsonEncode(body), headers: header);
      dynamic result = json.decode(res.body);
      debugPrint(result["choices"][0]["message"]["content"].toString());
      this.setState(() {
        generatedContentTE.text = result["choices"][0]["message"]["content"].toString();
      });
    } on Exception catch(e) {
      debugPrint("errrrr");
      debugPrint(e.toString());
    }
    
  }

  void handleSaveContent(String savedContent) {
    debugPrint("save Content =>>" + savedContent);
  }


  @override 
  Widget build(BuildContext context) {
    return CreateFeatureArticleLayout(handleSubmit: handleSubmitInput, handleSaveContent: handleSaveContent, generatedContentTE: generatedContentTE,);
  }
}