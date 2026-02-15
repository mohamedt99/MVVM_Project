import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_app/core/constants/app_color.dart';
import 'package:mvvm_app/core/constants/app_images.dart';
import 'package:mvvm_app/core/constants/app_strings.dart';
import 'package:mvvm_app/core/theme/app_text_style.dart';
import 'package:mvvm_app/features/gold/data/models/gold_model.dart';
import 'package:mvvm_app/features/gold/data/repo/gold_repo.dart';
import 'package:mvvm_app/features/gold/presentation/cubit/cubit/gold_cubit.dart';
import 'package:mvvm_app/features/gold/presentation/screens/widgets/get_app_bar.dart';
import 'package:mvvm_app/features/gold/presentation/screens/widgets/get_app_image.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        appBar: getAppBar(),
        body: Center(
          child: BlocBuilder<GoldCubit, GoldState>(
            builder: (context, state) {
              if (state is GoldLoadingState) {
                return circleLoadingSymbol();
              }
              else if (state is GoldSuccessState) {
                return buildSuccessWidget(state.goldModel);
              }
              else if(state is GoldErroestate){
                return Text(state.message,style: TextStyle(color: Colors.white),);
              }
              return SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

Widget circleLoadingSymbol() =>
    CircularProgressIndicator(color: AppColor.goldColor);

Widget buildSuccessWidget(GoldModel state) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GetAppImage(text: AppImages.goldImage,),
    SizedBox(height: 8.0),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(state.price.toString(), style: AppTextStyle.gold28bold),
        SizedBox(width: 10.0),
        Text(AppStrings.eGP, style: AppTextStyle.gold28bold),
      ],
    ),
  ],
);
