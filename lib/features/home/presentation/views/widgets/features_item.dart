import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeaturesItem extends StatelessWidget {
  const FeaturesItem({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
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
