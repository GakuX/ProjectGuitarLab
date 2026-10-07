import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/generated/l10n.dart';

class Createroutine extends StatefulWidget {
  const Createroutine({super.key});

  @override
  State<Createroutine> createState() => _CreateroutineState();
}

class _CreateroutineState extends State<Createroutine> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController descriptioncontroller = TextEditingController();

  String? selectedExcersiseId;
  final currentUserId = FirebaseAuth.instance.currentUser?.uid;

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);
    final excersises = [t.downpick, t.shred, t.chords];

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 90),
            Align(
              alignment: Alignment(-0.6, 0.8),
              child: Text(
                t.routineName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: t.routineName,
                  border: OutlineInputBorder(),
                ),
                controller: namecontroller,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment(-0.65, 0.8),
              child: Text(
                t.description,
                style: TextStyle(fontWeight: FontWeight(1000)),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: t.enterYourDescription,
                  border: OutlineInputBorder(),
                ),
                controller: descriptioncontroller,
              ),
            ),
            SizedBox(height: 70),
            Text(
              t.exercises,
              style: TextStyle(fontWeight: FontWeight(1000), fontSize: 20),
            ),

            // ca cest pour le dropdown... le dropdown contient en ce moment un list de strings hardcodes
            // SizedBox(
            //   child: DropdownButton<String>(
            //     hint: Text(t.chooseAnExercise),
            //     items: excersises.map((i) {
            //       return DropdownMenuItem<String>(value: i, child: Text(i));
            //     }).toList(),
            //     onChanged: (newValue) {},
            //   ),
            // ),
            SizedBox(
              width: 300,
              height: 50,
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('excersises')
                    .where("userId", isEqualTo: currentUserId)
                    .snapshots(),
                builder: ((context, snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }

                  final excersises = snapshot.data!.docs;

                  return DropdownButton<String>(
                    hint: Text(t.chooseAnExercise),
                    value: selectedExcersiseId,
                    items: excersises.map((x) {
                      final data = x.data() as Map<String, dynamic>;
                      final name = data['name'] as String;
                      return DropdownMenuItem<String>(
                        value: x.id,
                        child: Text(name),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedExcersiseId = newValue;
                      });
                    },
                  );
                }),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.go("/createexcersise");
                },
                icon: const Icon(Icons.add),
                label: Text(t.add + " " + t.exercises),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () async {
                  //acces au bd
                  final bd = FirebaseFirestore.instance;
                  final userId = FirebaseAuth.instance.currentUser?.uid;

                  if (userId != null) {
                    await bd.collection("routines").add({
                      "name": namecontroller.text,
                      "description": descriptioncontroller.text,
                      "excersiseId": selectedExcersiseId,

                      "userId": userId,
                    });
                  }

                  if (context.mounted) {
                    context.go("/routine");
                  }
                },
                child: Text(t.save, style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
