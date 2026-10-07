import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final currentUserId = FirebaseAuth.instance.currentUser?.uid;

  Stream<QuerySnapshot> getRoutine() {
    return _db
        .collection('routines')
        .where('userId', isEqualTo: currentUserId)
        .snapshots();
  }

  Future<void> updateRoutine(
    String routineId,
    String description,

    String name,
  ) async {
    await _db.collection('routines').doc(routineId).update({
      "description": description,
      "name": name,
    });
  }

  Future<void> deleteRoutine(String routineId) async {
    await _db.collection('routines').doc(routineId).delete();
  }
}
