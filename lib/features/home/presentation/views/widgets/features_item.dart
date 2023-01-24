import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeaturesItem extends StatelessWidget {
  const FeaturesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            'https://static-cse.canva.com/blob/996395/1024w-bpueJw9ttIE.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: InkWell(
            child: const CircleAvatar(
                radius: 17,
                foregroundColor: Colors.amber,
                child: Icon(
                  FontAwesomeIcons.play,
                  size: 12,
                )),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
