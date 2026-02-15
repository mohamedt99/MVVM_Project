import 'package:flutter/material.dart';
import 'package:mvvm_app/core/constants/app_color.dart';
import 'package:mvvm_app/core/constants/app_strings.dart';

import '../../../../../core/theme/app_text_style.dart';

AppBar getAppBar() => AppBar(
    iconTheme: IconThemeData(color: AppColor.goldColor),
    title: Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text(AppStrings.tracker, style: AppTextStyle.gold28bold),
      ),
    ),
    backgroundColor: AppColor.blackColor,
  );
