import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_shopping/shared/modules/shopping/shopping_page.dart';
import 'package:tech_shopping/shared/modules/visualization_product/visualization_product.dart';
import 'package:tech_shopping/shared/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppWidget() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]);
    }

    return MaterialApp(
      title: 'Mercado Quintal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/shopping',
      routes: {
        '/shopping': (context) => const ShoppingPage(),
        '/visualization': (context) => const VisualizationProductPage(),
      },
    );
  }
}
