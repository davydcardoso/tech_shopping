import 'package:flutter/material.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';

class ButtonRow extends StatelessWidget {
  final IconData icon;
  final String textButton;

  const ButtonRow({
    Key? key,
    required this.icon,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: 131,
      height: 44,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: AppColors.background,
          ),
          SizedBox(width: size.width * 0.01),
          Text(
            textButton,
            style: const TextStyle(
              color: AppColors.background,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
