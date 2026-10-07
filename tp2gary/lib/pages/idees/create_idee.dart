import 'package:flutter/material.dart';

class CreateIdee extends StatefulWidget {
  const CreateIdee({super.key});

  @override
  State<CreateIdee> createState() => _CreateIdeeState();
}

class _CreateIdeeState extends State<CreateIdee> {
  final TextEditingController titrecontroller = TextEditingController();
  final TextEditingController descriptioncontroller = TextEditingController();
  final TextEditingController genrecontroller = TextEditingController();
  final TextEditingController tuningcontroller = TextEditingController();
  final TextEditingController bpmcontroller = TextEditingController();
  final TextEditingController difficultycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "titre",
                  border: OutlineInputBorder(),
                ),
                controller: titrecontroller,
              ),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "description",
                  border: OutlineInputBorder(),
                ),
                controller: descriptioncontroller,
              ),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "genre",
                  border: OutlineInputBorder(),
                ),
                controller: genrecontroller,
              ),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "tuning",
                  border: OutlineInputBorder(),
                ),
                controller: tuningcontroller,
              ),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "bpm",
                  border: OutlineInputBorder(),
                ),
                controller: bpmcontroller,
              ),
            ),
            SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "difficulty",
                  border: OutlineInputBorder(),
                ),
                controller: difficultycontroller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
