import 'package:flutter/material.dart';
import 'package:scroll/models/activite.dart';

class ActiviteList extends StatefulWidget {
  ActiviteList({Key? key, required this.activites, required this.scrollController}) : super(key: key);
  List<Activie> activites;
  ScrollController scrollController;

  @override
  _ActiviteListState createState() => _ActiviteListState();
}

class _ActiviteListState extends State<ActiviteList> {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index){
        if((index +1) %5 == 0){
          return Container(height: 50,color: Colors.grey,);
        }
        return Divider();
      },
      itemCount: widget.activites.length,
      controller: widget.scrollController,
      itemBuilder: (context, index){
        Activie activite = widget.activites[index];
        return Dismissible(
            key: Key(activite.nom),
            onDismissed: (direction){
              print(direction);
              setState(() {
                widget.activites.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Icon(Icons.delete, color: Colors.white,),
                  Text("Supprimer")
                ],
              ),
            ),
            secondaryBackground: Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Archiver"),
                  Icon(Icons.folder, color: Colors.white,),

                ],
              ),
            ),
            child: ListTile(
              title: Text("Activite:"),
              subtitle: Text(activite.nom),
              trailing: IconButton(
                onPressed: (){
                  setState(() {
                    widget.activites[index].nom = "Toto";
                  });
                },
                icon: Icon(Icons.edit),
              ),
              leading: Icon(activite.icone),
              onTap: (){
                print(activite.nom);
              },
            )
        ) ;
      },
    );
  }
}
