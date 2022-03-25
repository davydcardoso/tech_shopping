import 'package:flutter/material.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';
import 'package:tech_shopping/shared/theme/app_text_style.dart';
import 'package:favorite_button/favorite_button.dart';

class ContainerItems extends StatefulWidget {
  final String imagePath;

  const ContainerItems({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<ContainerItems> createState() => _ContainerItemsState();
}

class _ContainerItemsState extends State<ContainerItems> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    late bool isFavorite = false;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width - 30,
      height: 170,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 130,
            height: 130,
            decoration: const BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image.asset(widget.imagePath),
          ),
          Container(
            margin: const EdgeInsets.only(top: 18, left: 10),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Bose QC-700",
                      style: TextStyles.titleBoldHeading,
                    ),
                    SizedBox(width: size.width * 0.02),
                    FavoriteButton(
                      isFavorite: isFavorite,
                      // iconDisabledColor: Colors.white,
                      valueChanged: (_isFavorite) {
                        isFavorite = _isFavorite;
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const Text(
                  "Over Ear, Wireless Bluetooth\n Headphones with Built-In\n Microphone",
                ),
                SizedBox(height: size.height * 0.02),
                Row(
                  children: <Widget>[
                    Text(
                      "\$379.00",
                      style: TextStyles.titleBoldHeading,
                    ),
                    SizedBox(width: size.width * 0.08),
                    Container(
                      width: 64,
                      height: 24,
                      padding: const EdgeInsets.only(left: 16),
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Text(
                        "Buy",
                        style: TextStyle(
                          color: AppColors.background,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
