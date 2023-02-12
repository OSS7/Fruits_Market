import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';

import '../../../../core/config/size_config.dart';

class UserInformationBodyItem extends StatelessWidget {
  const UserInformationBodyItem({Key? key, required this.label, this.maxLines, required this.controller,}) : super(key: key);
  final String label;
  final int? maxLines;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: secondaryColor,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          CustomTextField(
            controller: controller,
            maxLines: maxLines,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
        ],
      ),
    );
  }
}
