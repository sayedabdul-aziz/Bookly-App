import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:bookly/features/splash_screen/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _sliding;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bookly', style: Theme.of(context).textTheme.displayMedium),
          SlidingText(sliding: _sliding),
        ],
      ),
    );
  }

  void initAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _sliding = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(() => const HomeScreen(),
            transition: Transition.fade, duration: kTransitionDuration);
      },
    );
  }
}
