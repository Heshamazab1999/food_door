import 'package:flutter/material.dart';
import 'package:food_door/components/icon_row.dart';
import 'package:food_door/components/rate_row.dart';
import 'package:food_door/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardCart extends StatelessWidget {
  const CardCart(
      {Key? key,
      this.rate,
      this.label,
      this.function,
      this.time,
      this.distance,
      this.name,
      this.color,
      this.image})
      : super(key: key);
  final String? label;
  final String? rate;
  final String? time;
  final String? distance;
  final Function()? function;
  final String? image;
  final Color? color;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        shadowColor: K.grayColor,
        child: Container(
          clipBehavior: Clip.antiAlias,
          height: 120,
          decoration: BoxDecoration(
              color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          label!,
                          style: K.textStyleAlert,
                        ),
                        IconButton(
                            onPressed: function,
                            icon: Icon(MdiIcons.bookmark, color: color))
                      ],
                    ),
                    Row(
                      children: [
                        IconRow(
                          key: key,
                          icon: MdiIcons.foodOutline,
                          label: name,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconRow(
                          key: key,
                          icon: MdiIcons.mapMarker,
                          label: distance,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RateRow(
                          key: key,
                          rate: rate,
                        ),
                        IconRow(
                          key: key,
                          icon: MdiIcons.timelapse,
                          label: time,
                        ),
                        Row(
                          children: const [
                            Icon(
                              MdiIcons.phone,
                              color: Colors.green,
                            ),
                            Text(
                              "contact",
                              style: K.hintStyle,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
