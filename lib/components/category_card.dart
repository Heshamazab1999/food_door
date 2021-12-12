import 'package:flutter/material.dart';
import 'package:food_door/constant.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, this.image, this.label, this.rate})
      : super(key: key);
  final String? image;
  final String? label;
  final String? rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 250,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: K.whiteColor, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.cover,
                    width: 250,
                  )),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  label!,
                  style: K.textStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: K.secondColor,
                    ),
                    Text(
                      rate!,
                      style: K.textStyle,
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
