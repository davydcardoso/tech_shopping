import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tech_shopping/components/buttons_row.dart';
import 'package:tech_shopping/components/card_template.dart';
import 'package:tech_shopping/components/container_itens.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';
import 'package:tech_shopping/shared/theme/app_text_style.dart';

class BodyShopping extends StatefulWidget {
  const BodyShopping({Key? key}) : super(key: key);

  @override
  State<BodyShopping> createState() => _BodyShoppingState();
}

class _BodyShoppingState extends State<BodyShopping> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: AppColors.background,
      width: size.width,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const CardTemplate(
                title: "Music and No more",
                textBody:
                    "10% off for One of the\n best headphones in the world",
              ),
              SizedBox(height: size.height * 0.01),
              Container(
                width: size.width,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Popular Category",
                  style: TextStyles.titleRegular,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: size.width,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const <Widget>[
                    ButtonRow(icon: Icons.headphones, textButton: "Headphone"),
                    ButtonRow(icon: Icons.phone_android, textButton: "Mobile"),
                    ButtonRow(icon: Icons.mouse, textButton: "Mouse"),
                  ],
                ),
              ),
              const ContainerItems(
                imagePath: 'assets/images/phone_left.png',
              ),
              const ContainerItems(
                imagePath: 'assets/images/phone.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
