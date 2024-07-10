import 'package:flutter/material.dart';
import 'package:stylish/utils/styles.dart';

class HeaderTitleWidget extends StatelessWidget {
  final String text;
  const HeaderTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 220),
      child: Text(
        text,
        style:
            blackTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 36),
      ),
    );
  }
}
