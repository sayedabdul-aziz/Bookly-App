import 'package:ebookia/core/utils/extensions.dart';
import 'package:ebookia/features/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_box.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchBox(),
          30.ph,
          const Text('Search results ', style: Styles.titleStyle18),
          20.ph,
          const SearchResultList(),
        ],
      ),
    );
  }
}
