import 'package:bookly/core/extensions.dart';
import 'package:bookly/features/home/presentation/views/widgets/features_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/samilar_books.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';

class HomeDetailsBodyView extends StatelessWidget {
  const HomeDetailsBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
            child: FeaturesItem(),
          ),
          30.ph,
          const Text(
            'The Jungle Book',
            style: Styles.titleStyle30,
          ),
          10.ph,
          Text(
            'Sayed Abdulaziz',
            style: Styles.titleStyle16.copyWith(color: Colors.white70),
          ),
          20.ph,
          const RatingWidget(),
          30.ph,
          const CustomButton(),
          44.ph,
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('You can also like',
                  style: Styles.titleStyle16
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
          ),
          20.ph,
          const SamillarBooksList()
        ],
      ),
    );
  }
}
