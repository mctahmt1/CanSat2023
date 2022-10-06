import 'package:flutter/material.dart';

import '../../../core/constant/myColors.dart';

class MyTextWidget extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  const MyTextWidget(
    this.data, {
    Key? key,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: textStyle ?? MyTextStyle.standart);
  }
}

class MyTextStyle {
  static const TextStyle title = TextStyle(fontSize: 30, color: Colors.white);
  static const TextStyle standart =
      TextStyle(fontSize: 25, color: MyColors.textColor);
  static const TextStyle subTitle =
      TextStyle(fontSize: 20, color: Colors.white);
  static const TextStyle minTitle =
      TextStyle(fontSize: 15, color: Colors.white);
}
