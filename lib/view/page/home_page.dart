import 'package:flutter/material.dart';
import 'package:tapshyrma_04/app.dart';
import 'package:tapshyrma_04/view/constants/app_colors/app_colors.dart';
import 'package:tapshyrma_04/view/constants/app_styles/app_styles.dart';
import 'package:tapshyrma_04/view/constants/app_texts/app_texts.dart';

import '../widgets/list_tile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.appColorBG,
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: const AssetImage(
                "assets/image/1.png",
              ),
              radius: size.height * 0.08,
            ),
            const Text(
              AppTexts.fio,
              style: AppTextStyles.styleFIO,
            ),
            const Text(
              AppTexts.fDev,
              style: AppTextStyles.styleFDev,
            ),
            SizedBox(
              width: size.width * 0.5,
              child: const Divider(
                color: AppColors.appColorWhite38,
                height: 20,
                thickness: 1,
              ),
            ),
            const ListTileWidget(
              iconAndTitleColor: AppColors.appColorBG,
              leadingIcon: Icons.phone,
              titleText: AppTexts.telNom,
            ),
            const ListTileWidget(
              iconAndTitleColor: AppColors.appColorBG,
              leadingIcon: Icons.email,
              titleText: AppTexts.email,
            ),
          ],
        ),
      ),
    );
  }
}
