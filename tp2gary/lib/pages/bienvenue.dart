import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/generated/l10n.dart';

class bienvenueScreen extends StatefulWidget {
  const bienvenueScreen({super.key});

  @override
  State<bienvenueScreen> createState() => _bienvenueScreenState();
}

class _bienvenueScreenState extends State<bienvenueScreen> {
  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),

            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  context.go("/connection");
                },

                child: Text(t.connection),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  context.go("/inscription");
                },
                child: Text(t.signUp),
              ),
            ),
            SizedBox(height: 80),
            Text(t.welcomeToGuitarLab),
            SizedBox(height: 20),
            Text(t.signInOrSignUp),
            SizedBox(height: 80),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Guitar",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight(1000)),
                ),
                Text(
                  "Lab",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight(1000),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Icon(Icons.music_note, size: 100, color: Colors.red.shade200),
          ],
        ),
      ),
    );
  }
}
