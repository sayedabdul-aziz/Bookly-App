import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              alignment: AlignmentDirectional.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Text(
                '19,99 \$',
                textAlign: TextAlign.center,
                style: Styles.titleStyle20.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.center,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                'free preview',
                style: Styles.titleStyle16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
