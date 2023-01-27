import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SimilarItem extends StatelessWidget {
  const SimilarItem({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: CachedNetworkImage(
        imageUrl: imageUrl ?? '',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * .20,
        width: 110,
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    );
  }
}
