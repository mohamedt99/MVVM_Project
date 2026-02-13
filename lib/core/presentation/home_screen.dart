import 'package:flutter/material.dart';
import 'package:mvvm_app/core/constants/app_color.dart';
import 'package:mvvm_app/core/constants/app_strings.dart';
import 'package:mvvm_app/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onPressed: (){}, text: AppStrings.gold,color: AppColor.goldColor,),
            SizedBox(height: 10,),
            CustomButton(onPressed: (){}, text: AppStrings.silver,color: AppColor.silverColor,)
          ],
        ),
      ),
    );
  }
}