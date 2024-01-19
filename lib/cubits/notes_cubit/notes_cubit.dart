import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';

import '../../constanst.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

   List<NoteModel>? notes;

  fetchAllNotes()  {
    var notesBox = Hive.box<NoteModel>(
      kNotesBox,
    );
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
