import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class editRoutine extends StatefulWidget {
  const editRoutine({super.key});

  @override
  State<editRoutine> createState() => _editRoutineState();
}

class _editRoutineState extends State<editRoutine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "edit name",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "edit description",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
