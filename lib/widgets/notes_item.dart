import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context,EditNoteView.id );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 36,
          left: 16,
          right: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build a Notes App with Flutter , it will be awesome!',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 26,
                ),
                onPressed: () {},
              )),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              '10/10/2021',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
