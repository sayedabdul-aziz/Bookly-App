import 'package:bookly/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
    );
  }
}
