import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/models/routineClass.dart';
import 'package:tp2gary/hooks/bottomnavigation.dart';
import 'package:tp2gary/generated/l10n.dart';
import 'package:tp2gary/services.dart';
import 'package:tp2gary/hooks/mon-drawer.dart';

class routineScreen extends StatefulWidget {
  const routineScreen({super.key});

  @override
  State<routineScreen> createState() => _routineScreenState();
}

class _routineScreenState extends State<routineScreen> {
  final currentUserId = FirebaseAuth.instance.currentUser?.uid;
  final FirestoreService _firestoreService = FirestoreService();

  // Fonction pour afficher le pop-up de modification
  void _showEditDialog(
    BuildContext context,
    String routineId,
    String currentName,
    String currentDesc,
  ) {
    // On crée des contrôleurs pré-remplis avec les données actuelles de Firestore
    final TextEditingController nameController = TextEditingController(
      text: currentName,
    );
    final TextEditingController descController = TextEditingController(
      text: currentDesc,
    );

    //dialogue pour edit
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("cest pour modifier la routine"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "cest pour effacer la routine",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: descController,
                decoration: const InputDecoration(labelText: "Description"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Annuler"),
            ),

            ElevatedButton(
              onPressed: () async {
                await _firestoreService.updateRoutine(
                  routineId,
                  nameController.text,
                  descController.text,
                );

                if (context.mounted) {
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                "Sauvegarder",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteDialog(String routineId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("cest pour modifier la routine"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Tu veux vraiment la supprimer?? Pensez-y avant de le supprimer...",
              ),
            ],
          ),
          actions: [
            SizedBox(
              child: ElevatedButton(
                onPressed: () async {
                  await _firestoreService.deleteRoutine(routineId);

                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: Text("Supprimer"),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);
    // final routineList = [
    //   Routine(name: t.dailyShredding, description: t.toDoNow),
    //   Routine(name: t.dailyDownpicking, description: t.toDoNow),
    // ];

    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text(
          t.helloGaku,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.error,
      ),
      drawer: const MonDrawer(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: StreamBuilder<QuerySnapshot>(
          stream: _firestoreService.getRoutine(),
          builder: ((context, snapshot) {
            if (snapshot.hasError) {
              return Text('Erreur: ${snapshot.error}');
            }

            if (!snapshot.hasData) {
              return Text('Chargement...');
            }

            final routineItems = snapshot.data!.docs;

            return ListView.builder(
              itemCount: routineItems.length + 1,
              itemBuilder: (context, i) {
                if (i == routineItems.length) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          context.go("/createroutine");
                        },
                        icon: const Icon(Icons.add),
                        label: Text(t.addRoutine),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  );
                }

                final routinedata =
                    routineItems[i].data() as Map<String, dynamic>;
                final routineName = routinedata['name'];
                final description = routinedata['description'];
                final routineId = routineItems[i].id;

                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(routineName),
                        SizedBox(height: 15),
                        Text(description),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                context.go("/detailroutine");
                              },
                              child: Text(t.details),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 20),

                            SizedBox(width: 10),

                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                _showEditDialog(
                                  context,
                                  routineId,
                                  routineName,
                                  description,
                                );
                              },
                            ),

                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),

                              onPressed: () {
                                _showDeleteDialog(routineId);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
        ),

        // ListView.builder(
        //   itemCount: routineList.length + 1,
        //   itemBuilder: (context, i) {
        //     if (i == routineList.length) {
        //       return Padding(
        //         padding: const EdgeInsets.only(top: 10),
        //         child: SizedBox(
        //           width: double.infinity,
        //           child: ElevatedButton.icon(
        //             onPressed: () {
        //               context.go("/createroutine");
        //             },
        //             icon: const Icon(Icons.add),
        //             label: Text(t.addRoutine),
        //             style: ElevatedButton.styleFrom(
        //               backgroundColor: Colors.red,
        //               foregroundColor: Colors.white,
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //           ),
        //         ),
        //       );
        //     }

        //     return Card(
        //       child: Padding(
        //         padding: EdgeInsets.all(15),
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(routineList[i].name),
        //             SizedBox(height: 15),
        //             Text(routineList[i].description),
        //             SizedBox(height: 15),
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 ElevatedButton(
        //                   onPressed: () {
        //                     context.go("/detailroutine");
        //                   },
        //                   child: Text(t.details),
        //                   style: ElevatedButton.styleFrom(
        //                     backgroundColor: Colors.red,
        //                     foregroundColor: Colors.white,
        //                   ),
        //                 ),
        //                 SizedBox(width: 20),
        //                 Text("...", style: TextStyle(fontSize: 25)),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),

      //footer
      bottomNavigationBar: const AppBottomNavigationBar(
        currentRoute: '/routine',
      ),
    );
  }
}
