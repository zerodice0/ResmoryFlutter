import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Color? color;
  final Widget child;
  final double borderRadius;
  final double innerPadding;
  final double elevation;

  const RoundedCard({
    Key? key,
    this.color,
    this.borderRadius = 10,
    required this.child,
    this.innerPadding = 0,
    this.elevation = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.all(innerPadding),
        child: child,
      ),
    );
  }
}
