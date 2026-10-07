import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/generated/l10n.dart';
import 'package:tp2gary/models/excersiseDetail.dart';

class detailRoutineScreen extends StatefulWidget {
  const detailRoutineScreen({super.key});

  @override
  State<detailRoutineScreen> createState() => _detailRoutineScreenState();
}

class _detailRoutineScreenState extends State<detailRoutineScreen> {
  double progress = 20.0;

  final List<ExcersiseDetail> excersises = [
    ExcersiseDetail(temps: 5, name: "Warm-up", isCompleted: true),
    ExcersiseDetail(temps: 10, name: "Shredding", isCompleted: false),
    ExcersiseDetail(temps: 15, name: "Chords", isCompleted: false),
  ];

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.routineDetails),
        backgroundColor: Theme.of(context).colorScheme.error,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/routine');
          },
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    width: 270,
                    child: LinearProgressIndicator(
                      value: 0.6,
                      minHeight: 12,

                      backgroundColor: Colors.grey[300],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),

                Text("75%", style: TextStyle(fontSize: 30)),
              ],
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.only(right: 225),
              child: Text(
                t.description,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: t.routineDescription,
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.only(right: 0),
              child: Text(
                t.exercises,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: excersises.length,
                itemBuilder: (context, index) {
                  final exercise = excersises[index];

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: [
                        Checkbox(
                          value: exercise.isCompleted,
                          onChanged: (value) {
                            setState(() {
                              exercise.isCompleted = value ?? false;
                            });
                          },
                          activeColor: Colors.red,
                          checkColor: Colors.white,
                        ),
                        Expanded(
                          child: Text(
                            exercise.name,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.15),

                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "${exercise.temps} min",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 35),
                        ElevatedButton(
                          onPressed: () {
                            context.go('/timer');
                          },
                          child: Text(
                            t.start,
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              width: 220,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/routine');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(t.confirm),
              ),
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
