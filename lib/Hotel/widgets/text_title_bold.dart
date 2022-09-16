import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/constants/constants.dart';

class TextTitleBold extends StatelessWidget {
  const TextTitleBold({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? HotelConstants.stop,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}