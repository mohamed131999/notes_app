import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomTextField.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),
          Customtextfield(hint: 'Title'),
          SizedBox(height: 16),
          Customtextfield(hint: 'Content', maxlines: 5),
        ],
      ),
    );
  }
}
