import 'package:flutter/material.dart';

import 'view/constants/app_colors/app_colors.dart';
import 'view/constants/app_styles/app_styles.dart';
import 'view/constants/app_texts/app_texts.dart';
import 'view/page/home_page.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        );
}

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          backgroundColor: AppColors.appColorWhite,
          centerTitle: true,
          title: const Text(
            AppTexts.title,
            style: AppTextStyles.styleAppBar,
          ),
        );
}
