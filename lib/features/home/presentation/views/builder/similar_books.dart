import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/core/widgets/custom_text_error.dart';
import 'package:bookly/features/home/presentation/views_model/cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/similler_item.dart';

class SimilarBooksBuilder extends StatelessWidget {
  const SimilarBooksBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .20,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SimilarItem(
                  model: state.books[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: state.books.length,
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomTextError(error: state.error);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
