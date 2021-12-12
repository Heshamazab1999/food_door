import 'package:flutter/material.dart';

class ContainerDetails extends StatelessWidget {
  const ContainerDetails({Key? key, this.label, this.icon}) : super(key: key);
  final String? label;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 60,
      decoration: BoxDecoration(
          color: const Color(0xFFFFC9C5),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon!,
            size: 20,
            color: const Color(0xFFE9867E),
          ),
          Expanded(
            child: Text(
              label!,
              style: const TextStyle(color: Color(0xFFE9867E), fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
