import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/edit_note_color_list.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note, required});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title;
  String? description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.descripton = description ?? widget.note.descripton;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: widget.note.title,
            onSaved: (value) {
              title = value!;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: widget.note.descripton,
            onSaved: (value) {
              description = value!;
            },
            maxLines: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          EditNoteColorsList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}
