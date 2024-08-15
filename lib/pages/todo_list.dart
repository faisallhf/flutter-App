import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttercourse/services/services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  //VARIABLES
  TextEditingController controller = TextEditingController();
  FirestoreServices services = FirestoreServices();

  //FUNCTIONS

  void showSnackbar(String? oldNote, String? docId) {
    if (oldNote == null) {
      controller.text = '';
    } else {
      controller.text = oldNote;
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Add Your Note",
            style: GoogleFonts.alexandria(fontSize: 20),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (oldNote == null) {
                  services.addingNotes(controller.text);
                } else {
                  services.updatingNotes(controller.text, docId!);
                }
                controller.clear();
                Navigator.pop(context);
              },
              child: Text(
                "Save Note",
                style: GoogleFonts.alexandria(),
              ),
            )
          ],
          content: TextField(
            decoration: InputDecoration(hintText: 'Note here...'),
            style: GoogleFonts.alexandria(),
            controller: controller,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackbar(null, null);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            context.goNamed('home_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Text(
          "To Do List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: StreamBuilder(
        stream: services.showData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List noteList = snapshot.data!.docs;

            return ListView.builder(
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                DocumentSnapshot documentSnapshot = noteList[index];
                Map<String, dynamic> data =
                    documentSnapshot.data() as Map<String, dynamic>;

                String note = data['note'];
                String docId = documentSnapshot.id;

                return ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            services.deleteNote(docId);
                          },
                          icon: Icon(Icons.delete)),
                      IconButton(
                          onPressed: () {
                            showSnackbar(note, docId);
                          },
                          icon: Icon(Icons.edit)),
                    ],
                  ),
                  title: Text(note),
                );
              },
            );
          } else {
            return Center(
              child: Text("There is nothing to show."),
            );
          }
        },
      ),
    );
  }
}
