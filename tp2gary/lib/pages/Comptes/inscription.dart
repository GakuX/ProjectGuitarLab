import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp2gary/generated/l10n.dart';
import 'package:tp2gary/hooks/error_popup.dart';

class inscriptionScreen extends StatefulWidget {
  const inscriptionScreen({super.key});

  @override
  State<inscriptionScreen> createState() => _inscriptionScreenState();
}

class _inscriptionScreenState extends State<inscriptionScreen> {
  String _emailAddress = "";
  String _password = "";

  void inscriptionThing() async {
    if (_emailAddress.isEmpty || _password.isEmpty) {
      showerrorpopup(context, "please fill in all of the inputs");
      return;
    }
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: _emailAddress.trim(),
            password: _password,
          );
      if (mounted) {
        context.go("/connection");
      }
    } on FirebaseAuthException catch (e) {
      String message = "erreur d'inscription";
      if (e.code == 'weak-password') {
        message = "password too weak";
      } else if (e.code == 'email-already-in-use') {
        message = "email already used";
      }
      showerrorpopup(context, message);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = S.of(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            children: [
              SizedBox(height: 90),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _emailAddress = value;
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
                      _password = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: t.enterYourPassword,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: t.confirmYourPassword,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 50),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    inscriptionThing();
                  },
                  child: Text(
                    t.register,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    context.go("/connection");
                  },
                  child: Text(
                    t.alreadyHaveAccount,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
