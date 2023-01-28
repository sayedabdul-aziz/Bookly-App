import 'package:bookly/core/utils/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../builder/similar_books.dart';

class SamilarBooksSection extends StatelessWidget {
  const SamilarBooksSection({super.key});

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
        const SimilarBooksBuilder()
      ],
    );
  }
}
