import 'package:flutter/cupertino.dart';

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
        height: toDouble(),
      );
  SizedBox get pw => SizedBox(
        width: toDouble(),
      );
}

extension ImagePath on String {
  String get toPng => "assets/$this.png";
}
