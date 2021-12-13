import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RateRow extends StatelessWidget {
  const RateRow({Key? key, this.rate}) : super(key: key);
  final String? rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          MdiIcons.star,
          color: K.secondColor,
        ),
        Text(rate!),
      ],
    );
  }
}
