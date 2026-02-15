import 'package:flutter/material.dart';
import 'package:mvvm_app/core/networking/dio_helper.dart';
import 'package:mvvm_app/core/routing/my_router.dart';
import 'package:mvvm_app/core/routing/routes.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(MyApp(myRouter: MyRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.myRouter});
  final MyRouter myRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: myRouter.generateRoute,
      initialRoute: Routes.homeScreen,
    );
  }
}