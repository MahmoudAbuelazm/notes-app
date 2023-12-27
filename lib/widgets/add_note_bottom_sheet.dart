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
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(height: 20),
            CustomTextField(
              hintText: 'Description',
              maxLines: 5,
            ),
            SizedBox(height: 20),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
