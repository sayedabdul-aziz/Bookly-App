import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: [
          const Text(
            'Bookly',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              iconSize: 17,
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)),
        ],
      ),
    );
  }
}
