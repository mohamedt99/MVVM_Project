import 'package:flutter/material.dart';


class GetAppImage extends StatelessWidget {
  const GetAppImage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      text,
      width: MediaQuery.sizeOf(context).width / 2,
      height: MediaQuery.sizeOf(context).height / 2,
    );
  }
}
