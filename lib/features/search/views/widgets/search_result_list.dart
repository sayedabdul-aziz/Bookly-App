import 'package:bookly/core/utils/extensions.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/views/widgets/best_seller_item.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => const NewestItem(model: BookModel()),
          separatorBuilder: (context, index) => 20.ph,
          itemCount: 10),
    );
  }
}
