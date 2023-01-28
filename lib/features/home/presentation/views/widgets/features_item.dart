import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routers.dart';
import '../../../data/models/book_model/book_model.dart';

class FeaturesItem extends StatelessWidget {
  const FeaturesItem({
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
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: model.volumeInfo!.imageLinks?.thumbnail ?? '',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * .27,
              width: 140,
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
      ),
    );
  }
}
