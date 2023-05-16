import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class ProfileUserDataBlock extends StatelessWidget {
  final String title;
  final String data;

  const ProfileUserDataBlock(
      {Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 22,
        ),
        subtitle: Text(
          data,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
