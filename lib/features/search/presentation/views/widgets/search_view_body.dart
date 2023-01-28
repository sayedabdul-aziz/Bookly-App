import 'package:bookly/core/utils/extensions.dart';
import 'package:bookly/features/search/presentation/view_models/cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/book_model/book_model.dart';
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
          CustomSearchBox(
            onPressed: () {},
            onSubmitted: (value) {
              if (value!.isNotEmpty) {
                BlocProvider.of<SearchCubit>(context).getBooks(key: value);
              }
            },
          ),
          30.ph,
          const Text('Search results', style: Styles.titleStyle18),
          20.ph,
          const SearchResultList(model: BookModel()),
        ],
      ),
    );
  }
}
