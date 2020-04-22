
import 'package:flutter/material.dart';

class FragmentWidget extends StatelessWidget {
  final Color color;

  FragmentWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(color: color,);
  }

}