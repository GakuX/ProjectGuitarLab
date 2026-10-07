import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MonDrawer extends StatelessWidget {
  const MonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 125,
            child: const DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Text(
                'App Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              child: Text('Home'),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.door_back_door),
            title: const Text('Deconnexion'),
            onTap: () {
              FirebaseAuth.instance.signOut();

              context.go("/connection");
            },
          ),
        ],
      ),
    );
  }
}
