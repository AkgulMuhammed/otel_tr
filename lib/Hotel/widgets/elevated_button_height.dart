import 'package:flutter/material.dart';
import 'package:otelcim/Hotel/constants/constants.dart';

class ElevatedButtonHeight15 extends StatelessWidget {
  const ElevatedButtonHeight15({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 15,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: HotelConstants.borderRadiusCircular50),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(text,style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),),
          )),
    );
  }
}
