import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/layouts/templates_layout.dart';

class Templates extends StatefulWidget {

  @override 
  State<Templates> createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {

  @override 
  Widget build(BuildContext context) {
    return TemplatesLayout();
  }
}