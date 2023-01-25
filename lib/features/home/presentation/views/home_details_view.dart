import 'package:bookly/features/home/presentation/views/widgets/home_details_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeDetailsView extends StatelessWidget {
  const HomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.close)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
          ),
        ],
      ),
      body: const HomeDetailsBodyView(),
    );
  }
}
