import 'package:bookly/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                style:
                    Styles.titleStyle20.copyWith(fontWeight: FontWeight.normal),
              ),
              3.ph,
              Text('Sayed abdulaziz',
                  style: Styles.titleStyle16.copyWith(color: Colors.white60)),
              3.ph,
              Row(
                children: [
                  const Text(
                    '19,99 \$',
                    style: Styles.titleStyle20,
                  ),
                  const Spacer(),
                  const Icon(
                    FontAwesomeIcons.solidStar,
                    size: 18,
                    color: Colors.amber,
                  ),
                  5.pw,
                  const Text(
                    '4.8',
                    style: Styles.titleStyle16,
                  ),
                  5.pw,
                  Text(
                    '(2556)',
                    style: Styles.titleStyle14.copyWith(color: Colors.grey),
                  ),
                  25.pw,
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
