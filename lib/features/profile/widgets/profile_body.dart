import 'package:flutter/material.dart';

import 'profile_buttons.dart';
import 'profile_custom_button.dart';
import 'profile_header_image.dart';
import 'profile_user_data.dart';
import 'profile_user_data_block.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileHeaderImage(),
        ProfileUserData(),
        ProfileButtons(),
      ],
    );
  }
}
