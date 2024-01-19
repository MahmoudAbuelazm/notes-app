import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

import '../widgets/colors_list_view.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, description;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
          const ColorsListView(),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedDate = DateFormat.yMd().format(currentDate);
                      var note = NoteModel(
                          title: title!,
                          descripton: description!,
                          date: formattedDate,
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                     
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          )
        ],
      ),
    );
  }
}
