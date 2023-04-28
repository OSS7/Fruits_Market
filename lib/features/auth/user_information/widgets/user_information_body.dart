import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custome_buttons.dart';
import 'package:fruits_market/features/auth/user_information/widgets/user_information_body_item.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../config/size_config.dart';

class UserInformationBody extends StatefulWidget {
  const UserInformationBody({Key? key}) : super(key: key);

  @override
  State<UserInformationBody> createState() => _UserInformationBodyState();
}

class _UserInformationBodyState extends State<UserInformationBody> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: SizeConfig.defaultSize! * 80,
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 10,
            ),
            UserInformationBodyItem(
              label: 'Enter your name',
              controller: userName,
            ),
            UserInformationBodyItem(
              label: 'Enter your phone number',
              controller: number,
            ),
            UserInformationBodyItem(
              label: 'Enter your address',
              controller: address,
              maxLines: 5,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 4,
            ),
            SizedBox(
              width: SizeConfig.defaultSize! * 13,
              child: CustomGeneralButton(
                text: 'Login',
                onPress: () {},
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
