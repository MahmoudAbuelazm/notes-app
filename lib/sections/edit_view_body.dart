import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_filed.dart';

import '../widgets/custom_appbar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextField(hintText: 'Title'),
          CustomTextField(
            hintText: 'Description',
            maxLines: 6,
          )
        ],
      ),
    );
  }
}
