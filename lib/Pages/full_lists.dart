import 'package:design_ui/widgets/bored.dart';
import 'package:design_ui/widgets/contributors.dart';
import 'package:design_ui/widgets/custom_painter.dart';
import 'package:design_ui/widgets/list.dart';
import 'package:flutter/material.dart';
import 'package:design_ui/widgets/recipes.dart';

class FullList extends StatefulWidget {
  FullList({Key? key}) : super(key: key);

  @override
  State<FullList> createState() => _FullListState();
}

class _FullListState extends State<FullList> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      LogoPainter(),
      SizedBox(height: 20),
      Nokia(),
      SizedBox(height: 30),
      Recipes(),
      SizedBox(height: 30),
      Contributors(),
      SizedBox(height: 30),
      Bored(),
      SizedBox(height: 20)
    ]);
  }
}
