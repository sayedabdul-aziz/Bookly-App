import 'package:bookly/core/extensions.dart';
import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeDetailsView);
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://static-cse.canva.com/blob/996395/1024w-bpueJw9ttIE.jpg',
              fit: BoxFit.cover,
              height: 125,
            ),
          ),
          30.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'This is a book yaaa breeeeeeeeoo',
                  maxLines: 2,
                  style: Styles.titleStyle20
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                3.ph,
                Text('Sayed abdulaziz',
                    style: Styles.titleStyle16.copyWith(color: Colors.white60)),
                3.ph,
                Row(
                  children: const [
                    Text(
                      '19,99 \$',
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
