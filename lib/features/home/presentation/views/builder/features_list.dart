import 'package:ebookia/core/widgets/custom_loading_widget.dart';
import 'package:ebookia/features/home/presentation/views_model/features_books_cubit/features_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_text_error.dart';
import '../widgets/features_item.dart';

class FeaturesBookBuilder extends StatelessWidget {
  const FeaturesBookBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBooksCubit, FeaturesBooksState>(
      builder: (context, state) {
        if (state is FeaturesBooksSuccess) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height * .27,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return FeaturesItem(
                  model: state.featuresBooks[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: state.featuresBooks.length,
            ),
          );
        } else if (state is FeaturesBooksFailure) {
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
