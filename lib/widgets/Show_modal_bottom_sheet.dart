import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomButton.dart';
import 'package:notesapp/widgets/CustomTextField.dart';
import 'package:notesapp/widgets/constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            Customtextfield(hint: 'title'),
            SizedBox(height: 16),
            Customtextfield(hint: 'content', maxlines: 5),
            SizedBox(height: 20),
            CustomButton(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
