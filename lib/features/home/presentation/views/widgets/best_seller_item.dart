import 'package:ebookia/core/utils/extensions.dart';
import 'package:ebookia/core/utils/routers.dart';
import 'package:ebookia/features/home/data/models/book_model/book_model.dart';
import 'package:ebookia/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({
    Key? key,
    required this.model,
  }) : super(key: key);

  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDetailsView, extra: model);
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              height: 120,
              width: 90,
              imageUrl: model.volumeInfo!.imageLinks?.thumbnail ?? '',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error)),
            ),
          ),
          30.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.volumeInfo?.title ?? '',
                  maxLines: 2,
                  style: Styles.titleStyle20
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                3.ph,
                Text(model.volumeInfo!.authors?[0] ?? '',
                    style: Styles.titleStyle14.copyWith(color: Colors.white60)),
                3.ph,
                Row(
                  children: const [
                    Text(
                      'Free',
                      style: Styles.titleStyle20,
                    ),
                    Spacer(),
                    RatingWidget(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
