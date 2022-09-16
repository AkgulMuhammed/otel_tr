import 'package:flutter/material.dart';

import '../constants/constants.dart';


class containerBackgroundLime extends StatelessWidget {
  const containerBackgroundLime({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.height / 20,
      decoration: BoxDecoration(
        borderRadius: HotelConstants.borderRadiusCircular50,
        color: HotelConstants.colorLime,
      ),
      child: widget,
    );
  }
}
