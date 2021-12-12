import 'package:flutter/material.dart';
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
          height: 130,
          decoration: BoxDecoration(
              color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Image.asset(
                image!,
                width: 150,
                fit: BoxFit.cover,
                height: 130,
              ),
              Expanded(
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
                      children:  [
                        const Icon(
                          MdiIcons.food,
                          color: K.grayColor,
                        ),
                        Text(
                          name!,
                          style: K.hintStyle,
                        ),
                        const Icon(
                          MdiIcons.mapMarker,
                          color: K.grayColor,
                        ),
                        Text(
                          distance!,
                          style: K.hintStyle,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Icon(
                          MdiIcons.star,
                          color: K.secondColor,
                        ),
                        Text(rate!),
                        const Icon(
                          MdiIcons.timelapse,
                          color: K.grayColor,
                        ),
                        Text(
                         time!,
                          style: K.hintStyle,
                        ),
                        const Icon(
                          MdiIcons.phone,
                          color: Colors.green,
                        ),
                        const Text(
                          "contact",
                          style: K.hintStyle,
                        )
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
