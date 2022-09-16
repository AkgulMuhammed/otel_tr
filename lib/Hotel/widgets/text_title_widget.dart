import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/constants/constants.dart';

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({
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
          .headline6
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }
}