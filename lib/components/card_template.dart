import 'package:flutter/material.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';
import 'package:tech_shopping/shared/theme/app_text_style.dart';

class CardTemplate extends StatelessWidget {
  final String title;
  final String textBody;

  const CardTemplate({
    Key? key,
    required this.title,
    required this.textBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width - 30,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 20),
      height: 150,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: AppColors.dark,
            offset: Offset(1.0, 1.0),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyles.titleBoldBackground,
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                textBody,
                style: TextStyles.buttonBackground,
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 5),
                  padding: const EdgeInsets.only(left: 5),
                  height: 40,
                  width: 150,
                  decoration: const BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Order Now',
                        style: TextStyles.titleBoldHeading,
                      ),
                      SizedBox(width: size.width * 0.01),
                      const Icon(
                        Icons.navigate_next,
                        color: AppColors.dark,
                        size: 30,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
