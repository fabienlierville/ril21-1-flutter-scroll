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

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(infinityScroll);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Center(
        child: Scrollbar(
          child: ListView.builder(
            itemCount: activites.length,
            controller: scrollController,
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
        ) ,
      ),
    );
  }

  void infinityScroll(){
    print("Postition ${scrollController.position.pixels} | Taille Max = ${scrollController.position.maxScrollExtent}");

    if(scrollController.position.pixels >= scrollController.position.maxScrollExtent * 0.95){
      List<Activie> shuffleActivite = activites;
      shuffleActivite.shuffle();

      setState(() {
        activites.add(shuffleActivite[0]);
        activites.add(shuffleActivite[1]);
        activites.add(shuffleActivite[2]);
        activites.add(shuffleActivite[3]);
        activites.add(shuffleActivite[4]);
      });

    }

  }
}
