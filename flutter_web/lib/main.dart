import 'package:flutter/material.dart';
import 'package:flutter_web/pages/create_featured_article.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/pages/templates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Readex Pro",
        colorScheme: ColorScheme(
          primary: Color.fromRGBO(64, 20, 139, 1),
          onPrimary: Colors.white,
          secondary: Color(0xff4DFF36),
          onSecondary: Colors.black,
          background: Colors.white,
          onBackground: Color(0xff96A5B8),
          brightness: Brightness.light,
          error: Colors.red,
          onError: Colors.white,
          surface: Color(0xffF9F9F9),
          onSurface: Color(0xff884DFF)
        ),
      ),
      initialRoute: "/home",
      routes: {
        "/home":(context) => Home(),
        "/templates":(context) => Templates(),
        "/create-feature-article": (context) => CreateFeatureArticle()
      },
    );
  }
}

