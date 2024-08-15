import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  CollectionReference? reference =
      FirebaseFirestore.instance.collection("notes_collection");

  // ADDING NEW NOTES FUNCTIONS

  Future<void> addingNotes(String note) {
    return reference!.add({"note": note, "timeStamp": DateTime.now()});
  }

  Stream<QuerySnapshot> showData() {
    return reference!.orderBy("timeStamp", descending: true).snapshots();
  }

  Future<void> updatingNotes(String updateNote, String docId) {
    return reference!
        .doc(docId)
        .update({"note": updateNote, "timeStamp": DateTime.now()});
  }

  Future<void> deleteNote(String docId) {
    return reference!.doc(docId).delete();
  }
}
