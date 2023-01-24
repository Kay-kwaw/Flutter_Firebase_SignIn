import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({
    required this.uid,
  });

  final CollectionReference anonCollection =
      FirebaseFirestore.instance.collection('anonys');

  Future updateUserData(String sugar, String name, int strength) async {
    return await anonCollection.doc(uid).set({
      'sugar' : sugar,
      'name' : name,
      'strength' : strength,
    });
  }
}
