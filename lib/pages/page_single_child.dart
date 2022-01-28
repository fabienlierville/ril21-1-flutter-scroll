import 'package:flutter/material.dart';

class PageSingleChild extends StatelessWidget {
  const PageSingleChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Child"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Column(
                children: [
                  Text("Coucou"),
                  Expanded(child: Container(color: Colors.black,),),
                ],
              ),
            ),
              Container(height: 75,color: Colors.red,),
              Container(height: 75,color: Colors.blue,),
              Container(height: 75,color: Colors.green,),
              Container(height: 75,color: Colors.pink,),
              Container(height: 75,color: Colors.yellow,),
            Container(height: 75,color: Colors.red,),
            Container(height: 75,color: Colors.blue,),
            Container(height: 75,color: Colors.green,),
            Container(height: 75,color: Colors.pink,),
            Container(height: 75,color: Colors.yellow,),
            Container(height: 75,color: Colors.red,),
            Container(height: 75,color: Colors.blue,),
            Container(height: 75,color: Colors.green,),
            Container(height: 75,color: Colors.pink,),
            Container(height: 75,color: Colors.yellow,),
            Container(height: 75,color: Colors.red,),
            Container(height: 75,color: Colors.blue,),
            Container(height: 75,color: Colors.green,),
            Container(height: 75,color: Colors.pink,),
            Container(height: 75,color: Colors.yellow,),
            Container(height: 75,color: Colors.red,),
            Container(height: 75,color: Colors.blue,),
            Container(height: 75,color: Colors.green,),
            Container(height: 75,color: Colors.pink,),
            Container(height: 75,color: Colors.yellow,),
          ],
        ),
      ),
    );
  }
}
