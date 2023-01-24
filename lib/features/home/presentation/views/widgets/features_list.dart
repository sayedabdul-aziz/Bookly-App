import 'package:flutter/material.dart';

import 'features_item.dart';

class BooksHeaderList extends StatelessWidget {
  const BooksHeaderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FeaturesItem();
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 5,
      ),
    );
  }
}
