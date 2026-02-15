import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_app/core/constants/app_color.dart';
import 'package:mvvm_app/core/constants/app_images.dart';
import 'package:mvvm_app/core/constants/app_strings.dart';
import 'package:mvvm_app/core/theme/app_text_style.dart';
import 'package:mvvm_app/features/gold/presentation/screens/widgets/get_app_bar.dart';
import 'package:mvvm_app/features/gold/presentation/screens/widgets/get_app_image.dart';
import 'package:mvvm_app/features/silver/data/model/silver_model.dart';
import 'package:mvvm_app/features/silver/data/repo/silver_repo.dart';
import 'package:mvvm_app/features/silver/presentation/cubit/cubit/silver_cubit.dart';
import 'package:mvvm_app/features/silver/presentation/cubit/cubit/silver_state.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: AppColor.blackColor,
        appBar: getAppBar(),
        body: Center(
          child: BlocBuilder<SilverCubit, SilverState>(
            builder: (context, state) {
              if (state is SilverLoadingState) {
                return circleLoadingSymbol();
              }
              else if (state is SilverSuccessState) {
                return buildSuccessWidget(state.silverModel);
              }
              else if(state is SilverErroestate){
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

Widget buildSuccessWidget(SilverModel state) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GetAppImage(text: AppImages.silverImage,),
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
