import 'package:flutter/material.dart';
import 'package:notesapp/widgets/CustomButton.dart';
import 'package:notesapp/widgets/CustomTextField.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({super.key});

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          Customtextfield(
            hint: 'title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          Customtextfield(
            hint: 'content',
            maxlines: 5,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 20),
          CustomButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
