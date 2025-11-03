import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/widgets/show_modal_bottom_sheet.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff57EBD6),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled:
                  true, //        تعمل اسكرول للشيت علشان يترفع فوق الكيبورد
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadiusGeometry.circular(16),
              // ),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add, color: Colors.black),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
