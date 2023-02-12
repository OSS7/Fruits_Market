import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final int? maxLines;
  const CustomTextField({Key? key, this.hint, required this.controller, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder:  OutlineInputBorder(
          borderSide:
          BorderSide(color: primaryColor, width: 1),
        ),

        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide:
          BorderSide(color:primaryColor, width: 1),
        ),
      ),
    );
  }
}
