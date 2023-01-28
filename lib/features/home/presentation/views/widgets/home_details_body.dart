import 'package:bookly/core/utils/extensions.dart';
import 'package:bookly/features/home/presentation/views/widgets/features_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/samilar_books.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'custom_button.dart';

class HomeDetailsBodyView extends StatelessWidget {
  const HomeDetailsBodyView({super.key, required this.model});
  final BookModel model;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: FeaturesItem(model: model),
              ),
              30.ph,
              Text(
                model.volumeInfo!.title ?? '',
                style: Styles.titleStyle25,
                textAlign: TextAlign.center,
              ),
              10.ph,
              Text(
                model.volumeInfo!.authors![0],
                style: Styles.titleStyle16.copyWith(color: Colors.white70),
              ),
              20.ph,
              const RatingWidget(),
              30.ph,
              const CustomButton(),
              44.ph,
              const SamilarBooksSection()
            ],
          ),
        ),
      )
    ]);
  }
}
