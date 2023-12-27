import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: const Center(
          child: Icon(
        Icons.search,
        size: 28,
      )),
    );
  }
}