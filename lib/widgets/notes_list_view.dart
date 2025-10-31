import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final colors = const [
    Color(0xffFFCB7B),
    Color(0xffE7E896),
    Color(0xff76D6EE),
    Color(0xffDBA2DD),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 28),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final color = colors[index % colors.length];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(color: color),
          );
        },
      ),
    );
  }
}
