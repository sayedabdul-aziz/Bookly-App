import 'package:bookly/core/extensions.dart';
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
          itemBuilder: (context, index) => const BestSellerItem(),
          separatorBuilder: (context, index) => 20.ph,
          itemCount: 10),
    );
  }
}
