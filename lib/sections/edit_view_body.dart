import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

import '../models/note_model.dart';
import '../widgets/custom_appbar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  final String? title = widget.note.title;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: (){
              
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextField(hintText: 'Title',
          o),
          CustomTextField(
            hintText: 'Description',
            maxLines: 6,
          )
        ],
      ),
    );
  }
}
