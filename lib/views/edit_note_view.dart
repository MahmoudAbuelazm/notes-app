import 'package:flutter/material.dart';

import '../sections/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String id = '/edit';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}
