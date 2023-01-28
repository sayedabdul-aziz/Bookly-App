import 'package:ebookia/features/home/presentation/views/widgets/home_details_body.dart';
import 'package:ebookia/features/home/presentation/views_model/cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/book_model/book_model.dart';

class HomeDetailsView extends StatefulWidget {
  const HomeDetailsView({super.key, required this.model});
  final BookModel model;

  @override
  State<HomeDetailsView> createState() => _HomeDetailsViewState();
}

class _HomeDetailsViewState extends State<HomeDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getBooks(categoty: widget.model.volumeInfo!.categories?[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            highlightColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 35),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),
      body: HomeDetailsBodyView(
        model: widget.model,
      ),
    );
  }
}
