import 'package:ebookia/core/utils/styles.dart';
import 'package:ebookia/features/home/presentation/views/widgets/app_bar.dart';
import 'package:ebookia/features/home/presentation/views/builder/features_list.dart';
import 'package:ebookia/core/utils/extensions.dart';

import 'package:flutter/material.dart';

import 'builder/newest_books.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomAppBar(),
            const FeaturesBookBuilder(),
            44.ph,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Newest', style: Styles.titleStyle20),
            ),
            20.ph,
            const NewestBookBuilder(),
          ]),
        ),
      ),
    );
  }
}
