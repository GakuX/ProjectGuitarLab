import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/generated/l10n.dart';
import 'package:tp2gary/hooks/error_popup.dart';

class connectionScreen extends StatefulWidget {
  const connectionScreen({super.key});

  @override
  State<connectionScreen> createState() => _connectionScreenState();
}

class _connectionScreenState extends State<connectionScreen> {
  String emailAddress = "";
  String password = "";

  void connectionThing() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress.trim(),
        password: password,
      );
      if (mounted) {
        context.go("/accueil");
      }
    } on FirebaseAuthException catch (e) {
      String message = "Code d'erreur Firebase : ${e.code}";

      if (e.code == 'invalid-credential') {
        message = "Courriel ou mot de passe incorrect.";
      } else if (e.code == 'invalid-email') {
        message = "Le format du courriel n'est pas valide ";
      } else if (e.code == 'channel-error') {
        message = "Veuillez remplir le courriel et le mot de passe.";
      } else if (e.code == 'too-many-requests') {
        message = "Trop de tentatives. Réessayez plus tard.";
      }

      showerrorpopup(context, message);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 90),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    emailAddress = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: t.enterYourPassword,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  connectionThing();
                },
                child: Text(t.connect, style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  context.go("/inscription");
                },
                child: Text(
                  "No account yet? Please sign up",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
