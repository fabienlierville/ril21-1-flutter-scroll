import 'package:flutter/material.dart';
import 'package:scroll/models/activite.dart';

class ActiviteGrid extends StatelessWidget {
  ActiviteGrid({Key? key, required this.scrollController, required this.activites}) : super(key: key);
  List<Activie> activites;
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemCount: activites.length,
        itemBuilder: (context, index){
          Activie activite = activites[index];
          return GridTile(
              child: Icon(activite.icone, size: 40,),
            footer: Text(activite.nom, textAlign: TextAlign.center,),
            header: Text("Activité :", textAlign: TextAlign.center,),
          );
        }
    );
  }
}
