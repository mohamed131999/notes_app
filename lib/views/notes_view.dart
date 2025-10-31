import 'package:flutter/material.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff57EBD6),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: NotesViewBody(),
    );
  }
}
