import 'package:design_ui/Pages/full_lists.dart';
import 'package:flutter/material.dart';

class Foods extends StatefulWidget {
  Foods({Key? key}) : super(key: key);

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.vertical,
          child: FullList()),
    );
  }
}
