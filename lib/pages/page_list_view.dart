import 'package:flutter/material.dart';
import 'package:scroll/models/activite.dart';

class PageListView extends StatefulWidget {
  const PageListView({Key? key}) : super(key: key);

  @override
  _PageListViewState createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  List<Activie> activites = [
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
    Activie(nom: "Vélo", icone: Icons.directions_bike),
    Activie(nom: "Peinture", icone: Icons.palette),
    Activie(nom: "Golf", icone: Icons.golf_course),
    Activie(nom: "Jeux", icone: Icons.gamepad),
    Activie(nom: "Bricolage", icone: Icons.build),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: activites.length,
          itemBuilder: (context, index){
            Activie activite = activites[index];
            return ListTile(
              title: Text("Activite:"),
              subtitle: Text(activite.nom),
              trailing: IconButton(
                onPressed: null,
                icon: Icon(Icons.edit),
              ),
              leading: Icon(activite.icone),
              onTap: (){
                print(activite.nom);
              },
            );
          },
        ),
      ),
    );
  }
}
