import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBox extends StatelessWidget {
  CustomSearchBox({
    super.key,
    this.onPressed,
    this.onSubmitted,
  });
  final Function()? onPressed;
  final Function(String?)? onSubmitted;

  var textKey = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textKey,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: Colors.white)),
          suffixIcon: IconButton(
              onPressed: onPressed,
              iconSize: 17,
              color: Colors.white54,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass))),
    );
  }
}
