import 'package:bookly/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_loading_widget.dart';
import '../../../../../core/widgets/custom_text_error.dart';
import '../../views_model/newest_books_cubit/newest_books_cubit.dart';
import '../widgets/best_seller_item.dart';

class NewestBookBuilder extends StatelessWidget {
  const NewestBookBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>
                    NewestItem(model: state.books[index]),
                separatorBuilder: (context, index) => 20.ph,
                itemCount: state.books.length),
          );
        } else if (state is NewestBooksFailure) {
          return CustomTextError(
            error: state.error,
          );
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
