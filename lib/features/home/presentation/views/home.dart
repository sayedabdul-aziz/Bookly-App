import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              SizedBox(
                height: 10,
              ),
              BooksHeaderList(),
              SizedBox(
                height: 44,
              ),
              Text('Best Seller', style: Styles.titleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
