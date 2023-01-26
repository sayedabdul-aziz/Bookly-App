import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: Colors.white)),
          suffixIcon: IconButton(
              onPressed: () {},
              iconSize: 17,
              color: Colors.white54,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }
}
