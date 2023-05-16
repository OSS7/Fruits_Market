import 'package:flutter/material.dart';
import 'package:fruits_market/features/profile/widgets/profile_custom_button.dart';

import '../../../core/constant/colors.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ProfileCustomButton(
            title: 'Change password',
            icon: Icons.lock_outline,
            color: errorColor,
          ),
          ProfileCustomButton(
            title: 'Help',
            icon: Icons.help,
          ),
        ],
      ),
    );
  }
}
