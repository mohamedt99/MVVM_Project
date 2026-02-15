import 'package:mvvm_app/features/silver/data/model/silver_model.dart';

abstract class SilverState {}

class SilverInitial extends SilverState {}

class SilverLoadingState extends SilverState{}

class SilverSuccessState extends SilverState {
  final SilverModel silverModel;
  SilverSuccessState({required this.silverModel});
}

class SilverErroestate extends SilverState {
  final String message;
  SilverErroestate({required this.message});
}
