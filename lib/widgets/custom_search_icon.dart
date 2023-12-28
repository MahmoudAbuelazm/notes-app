import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key,required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
          child: Icon(
        icon ,
        size: 28,
      )),
    );
  }
}
