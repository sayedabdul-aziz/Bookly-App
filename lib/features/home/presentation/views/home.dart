import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/features_list.dart';
import 'package:bookly/core/extensions.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomAppBar(),
              ),
              const BooksHeaderList(),
              44.ph,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('Best Seller', style: Styles.titleStyle20),
              ),
              20.ph,
            ]),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => const BestSellerItem(),
                  separatorBuilder: (context, index) => 20.ph,
                  itemCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
