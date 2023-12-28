import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: AddNoeForm(),
      ),
    );
  }
}

class AddNoeForm extends StatefulWidget {
  const AddNoeForm({
    super.key,
  });

  @override
  State<AddNoeForm> createState() => _AddNoeFormState();
}

class _AddNoeFormState extends State<AddNoeForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hintText: 'Title',
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hintText: 'Description',
          onSaved: (value) {
            description = value;
          },
          maxLines: 5,
        ),
        const SizedBox(height: 20),
        CustomButton(onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            Navigator.pop(context);
          } else {
            autovalidateMode = AutovalidateMode.always;
            setState(() {});
          }
        })
      ],
    );
  }
}
