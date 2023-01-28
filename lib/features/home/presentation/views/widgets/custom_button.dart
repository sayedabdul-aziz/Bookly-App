import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
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
                'Free',
                textAlign: TextAlign.center,
                style: Styles.titleStyle20.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse(url))) {
                  throw Exception('Could not launch $url');
                }
              },
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
          ),
        ],
      ),
    );
  }
}
