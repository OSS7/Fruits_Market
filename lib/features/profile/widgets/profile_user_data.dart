import 'package:flutter/material.dart';
import 'package:fruits_market/config/size_config.dart';
import 'package:fruits_market/core/widgets/custom_spacer.dart';

import '../../../core/constant/colors.dart';
import 'profile_custom_button.dart';
import 'profile_user_data_block.dart';

class ProfileUserData extends StatelessWidget {
  const ProfileUserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            VerticalSpacer(4),
            ProfileUserDataBlock(
              title: 'Email',
              data: 'ossamaa.xider@gmail.com',
            ),
            ProfileUserDataBlock(
              title: 'Phone number',
              data: '+964 751 395 8392',
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
