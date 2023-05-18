import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class ProfileCustomButton extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Color? color;
  final Function()? onTap;
  const ProfileCustomButton(
      {Key? key, this.icon, this.title, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        leading: IconButton(
          icon: Icon(
            icon,
            color: color ?? primaryColor,
          ),
          onPressed: () {
            // do something when the icon button is pressed
          },
        ),
        title: Text(
          title ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 22,
        ),
        onTap: onTap,
      ),
    );
  }
}
