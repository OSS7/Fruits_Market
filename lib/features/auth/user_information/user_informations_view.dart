import 'package:flutter/material.dart';
import 'package:fruits_market/features/auth/user_information/widgets/user_information_body.dart';

class UserInformationView extends StatelessWidget {
  const UserInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserInformationBody(),
    );
  }
}
