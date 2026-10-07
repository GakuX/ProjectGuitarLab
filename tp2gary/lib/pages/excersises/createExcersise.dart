import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/models/excersise.dart';
import 'package:tp2gary/models/type.dart';
import 'package:tp2gary/generated/l10n.dart';

class createExcersise extends StatefulWidget {
  const createExcersise({super.key});

  @override
  State<createExcersise> createState() => _createExcersiseState();
}

class _createExcersiseState extends State<createExcersise> {
  final List<Excersise> excersises = [];

  //une fonction pour ajouter un exercice à la liste des exercices
  final TextEditingController namecontroller = TextEditingController();
  //meme principe, mais oublier pas de mettre le controller dans le textfield
  final TextEditingController durationcontroller = TextEditingController();
  final TextEditingController bpmcontroller = TextEditingController();
  final TextEditingController notescontroller = TextEditingController();

  // final List<Type> type = [
  //   Type(nom: "technique 1"),
  //   Type(nom: "technique 2"),
  //   Type(nom: "technique 3 "),
  // ];

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.addExercise),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.go("/createroutine");
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: Alignment(-0.6, 0.8),
              child: Text(
                t.exerciseName,
                style: TextStyle(fontWeight: FontWeight(1000)),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: t.enterName,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Align(
            //   alignment: Alignment(-0.38, 0.8),
            //   child: Text(
            //     t.chooseAType,
            //     style: TextStyle(fontWeight: FontWeight(1000)),
            //   ),
            // ),
            // SizedBox(height: 20),
            // SizedBox(
            //   width: 200,

            //   child: DropdownButton<String>(
            //     hint: Text(t.type),
            //     items: excersises.map((i) {
            //       return DropdownMenuItem<String>(value: i, child: Text(i));
            //     }).toList(),
            //     onChanged: (newValue) {},
            //   ),
            // ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment(-0.67, 0.8),
              child: Text(
                t.durationLabel,
                style: TextStyle(fontWeight: FontWeight(1000)),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: t.enterYourDuration,
                  border: OutlineInputBorder(),
                ),
                controller: durationcontroller,
              ),
            ),

            SizedBox(height: 50),
            Align(
              alignment: Alignment(-0.67, 0.8),
              child: Text(
                t.bpm,
                style: TextStyle(fontWeight: FontWeight(1000)),
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: t.enterYourBpm,
                  border: OutlineInputBorder(),
                ),
                controller: bpmcontroller,
              ),
            ),
            SizedBox(height: 80),

            Row(
              children: [
                SizedBox(width: 20),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 160),
                      child: Text(
                        t.notes,
                        style: TextStyle(fontWeight: FontWeight(1000)),
                      ),
                    ),

                    SizedBox(height: 10),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: TextField(
                        controller: notescontroller,
                        decoration: InputDecoration(
                          labelText: " ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),

                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (namecontroller.text.isNotEmpty) {
                          //acces au bd
                          final bd = FirebaseFirestore.instance;
                          final userId = FirebaseAuth.instance.currentUser?.uid;
                          //ajout le nom de l'excersise dans le bd... et etc...

                          if (userId != null) {
                            await bd.collection("excersises").add({
                              "name": namecontroller.text,
                              "duration": durationcontroller.text,
                              "bpm": bpmcontroller.text,
                              "notes": notescontroller.text,
                              //créer seulement par l'utilisateur connecté...
                              "userId": userId,
                            });
                          }

                          if (context.mounted) {
                            context.go("/createroutine");
                          }
                        }
                      },
                      child: Text(
                        t.save,
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
