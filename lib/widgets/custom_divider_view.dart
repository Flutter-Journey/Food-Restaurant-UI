import 'package:flutter/material.dart';

class CustomDividerView extends StatelessWidget {
  final double dividerHeight;
  final Color? color;

  const CustomDividerView({
    super.key,
    this.dividerHeight = 10.0,
    this.color,
  }) : assert(dividerHeight != 0.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dividerHeight,
      width: double.infinity,
      color: color ?? Colors.grey[200],
    );
  }
}
