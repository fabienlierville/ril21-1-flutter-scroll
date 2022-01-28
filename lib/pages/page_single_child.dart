import 'package:flutter/material.dart';

class PageSingleChild extends StatelessWidget {
  const PageSingleChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child"),
      ),
      body: Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
