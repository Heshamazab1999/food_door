import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_door/components/clip_path.dart';
import 'package:food_door/components/rich_otp_text.dart';
import 'package:food_door/constant.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppbarCategoryScreen extends StatelessWidget with PreferredSizeWidget {
  const AppbarCategoryScreen(
      {Key? key, this.labels, this.images, this.onchange})
      : super(key: key);
  final List<String>? labels;
  final List<String>? images;
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: CustomPaint(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: K.grayColor,
                      ),
                      FixedRichTextOtp(
                          key: key,
                          leftLabel: "Delivering to  ",
                          rightLabel: "HOME"),
                    ],
                  ),
                  const Icon(
                    Icons.notification_add_outlined,
                    color: K.whiteColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                  onChanged: onchange,
                  decoration: const InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: K.whiteColor,
                      hintText: "Search",
                      hintStyle: K.hintStyle,
                      suffixIcon: Icon(
                        MdiIcons.menu,
                        color: K.secondColor,
                        size: 25,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: K.grayColor,
                        size: 30,
                      ))),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: labels!.length,
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) => SizedBox(
                          width: 75,
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                images![index],
                                color: K.whiteColor,
                                width: 30,
                                height: 30,
                              ),
                              Text(labels![index], style: K.textButtonStyle)
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
        painter: Shapes(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(300);
}
