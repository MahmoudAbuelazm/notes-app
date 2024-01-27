import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

import '../constanst.dart';
import '../sections/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          kColorList.firstWhere((element) => element.value == note.color),
      body: EditViewBody(
        note: note,
      ),
    );
  }
}
