import 'package:flutter/material.dart';

void showerrorpopup(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("erreur de connexion"),
        content: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(errorMessage, textAlign: TextAlign.center)],
          ),
        ),

        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 100),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () async {
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                },
                child: Text("OK"),
              ),
            ),
          ),
        ],
      );
    },
  );
}
