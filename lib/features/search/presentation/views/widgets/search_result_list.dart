import 'package:bookly/core/utils/extensions.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/core/widgets/custom_text_error.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';
import '../../view_models/cubit/search_cubit.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
    required this.model,
  });
  final BookModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
      var cubit = BlocProvider.of<SearchCubit>(context);
      if (state is SearchLoading) {
        return const CustomCircularProgressIndicator();
      } else if (state is SearchSuccess) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) =>
              NewestItem(model: cubit.books[index]),
          separatorBuilder: (context, index) => 20.ph,
          itemCount: cubit.books.length,
        );
      } else if (state is SearchFailure) {
        return CustomTextError(error: state.error);
      } else {
        return const Center(
          child: Text('Not found'),
        );
      }
    }));
  }
}
