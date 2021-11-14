import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golpore/utils/custom_color.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CustomButton({  Key? key, required this.title, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onTap(),
      child: Container(
        decoration: BoxDecoration(color: active,
            borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: CustomText(
          text: title,
          color: Colors.white, size: 20, weight: FontWeight.w300,
        ),
      ),
    );
  }
}