import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';
import 'package:fruits_market/core/utils/sized_config.dart';
import 'package:fruits_market/core/widgets/custom_spacer.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';
import 'package:fruits_market/core/widgets/custome_buttons.dart';
import 'package:fruits_market/features/auth/login/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConfig().init(context);
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: LoginViewBody()
        ),
      ),
    );
  }
}
