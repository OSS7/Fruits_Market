import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/widgets/custom_spacer.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/custome_buttons.dart';
import 'package:fruits_market/features/auth/user_information/user_informations_view.dart';
import 'package:get/get.dart';

import '../../../../core/config/size_config.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const VerticalSpacer(4),
          SizedBox(
            height: SizeConfig.defaultSize! * 18,
            child: Center(
              child: Image.asset('assets/images/fruits-kiosk.png'),
            ),
          ),
          Text(
            'Fruits Market',
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CustomButtonWithIcon(
                    text: 'Log in with ',
                    icon: FontAwesomeIcons.facebookF,
                    iconColor: Colors.blueAccent,
                    onPress: () {
                      Get.to(const UserInformationView());
                    },
                  ),
                ),
              ),
              // HorizontalSpacer(2),
              const Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CustomButtonWithIcon(
                    text: 'Log in with ',
                    icon: FontAwesomeIcons.google,
                    iconColor: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
