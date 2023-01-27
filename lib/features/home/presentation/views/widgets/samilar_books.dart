import 'package:bookly/core/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'features_item.dart';

class SamilarBooks extends StatelessWidget {
  const SamilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('You can also like',
              style: Styles.titleStyle16.copyWith(fontWeight: FontWeight.bold)),
        ),
        20.ph,
        const SamillarBooksList()
      ],
    );
  }
}

class SamillarBooksList extends StatelessWidget {
  const SamillarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .20,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return null;

          //return const FeaturesItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 5,
      ),
    );
  }
}
