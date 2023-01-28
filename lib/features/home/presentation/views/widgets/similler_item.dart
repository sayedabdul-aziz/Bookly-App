import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routers.dart';
import '../../../data/models/book_model/book_model.dart';

class SimilarItem extends StatelessWidget {
  const SimilarItem({
    required this.model,
    Key? key,
  }) : super(key: key);
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDetailsView, extra: model);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CachedNetworkImage(
          imageUrl: model.volumeInfo!.imageLinks?.smallThumbnail ?? '',
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * .20,
          width: 110,
          errorWidget: (context, url, error) =>
              const Center(child: Icon(Icons.error)),
        ),
      ),
    );
  }
}
