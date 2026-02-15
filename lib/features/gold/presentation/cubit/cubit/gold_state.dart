part of 'gold_cubit.dart';

abstract class GoldState {}

class GoldInitial extends GoldState {}

class GoldLoadingState extends GoldState{}

class GoldSuccessState extends GoldState {
  final GoldModel goldModel;
  GoldSuccessState({required this.goldModel});
}

class GoldErroestate extends GoldState {
  final String message;
  GoldErroestate({required this.message});
}
