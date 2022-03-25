import 'package:flutter/material.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';
import 'package:tech_shopping/shared/theme/app_text_style.dart';

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: AppColors.primary,
      child: Center(
        child: ListTile(
          trailing: GestureDetector(
            onTap: () {
              // Scaffold.of(context).openDrawer();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_alert_outlined,
                    color: AppColors.stroke,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
