import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: Theme.of(context).textTheme.displayLarge),
        const Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}


