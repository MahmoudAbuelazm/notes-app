import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [CustomAppBar(),
          NotesItem()
          ],
        ),
      ),
    );
  }
}


