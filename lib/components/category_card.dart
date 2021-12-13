import 'package:flutter/material.dart';
import 'package:food_door/components/container_card.dart';
import 'package:food_door/components/rate_row.dart';
import 'package:food_door/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key,
      this.image,
      this.label,
      this.rate,
      this.time,
      this.distance,
      this.description})
      : super(key: key);
  final String? image;
  final String? label;
  final String? rate;
  final String? distance;
  final String? time;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 230,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image!,
                      fit: BoxFit.cover,
                      width: 250,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  label!,
                  style: K.textStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  description!,
                  style: K.hintStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RateRow(
                      key: key,
                      rate: rate,
                    ),
                    Row(
                      children: [
                        ContainerDetails(
                          key: key,
                          icon: MdiIcons.mapMarkerOutline,
                          label: distance!,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ContainerDetails(
                          key: key,
                          icon: MdiIcons.timelapse,
                          label: time!,
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
