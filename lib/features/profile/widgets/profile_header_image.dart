import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../core/constant/colors.dart';
import '../../../core/widgets/custom_spacer.dart';

class ProfileHeaderImage extends StatefulWidget {
  const ProfileHeaderImage({Key? key}) : super(key: key);

  @override
  State<ProfileHeaderImage> createState() => _ProfileHeaderImageState();
}

class _ProfileHeaderImageState extends State<ProfileHeaderImage> {
  @override
  Widget build(BuildContext context) {
    int randomId = Random().nextInt(100);
    return Column(
      children: [
        const VerticalSpacer(2),
        DottedBorder(
          color: primaryColor,
          borderType: BorderType.Circle,
          radius: const Radius.circular(34),
          strokeWidth: 3,
          dashPattern: [colorWidth(30 + 2, 1, 3), 3],
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  const SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://i.pravatar.cc/300?img=58',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor,
                            border: Border.all(color: whiteColor, width: 5)),
                        child: const Icon(
                          Icons.edit,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

double colorWidth(double radius, int statusCount, double separation) {
  return ((2 * pi * radius) - (statusCount * separation)) / statusCount;
}

double separation(int statusCount) {
  if (statusCount <= 20) {
    return 3.0;
  } else if (statusCount <= 30) {
    return 1.8;
  } else if (statusCount <= 60) {
    return 1.0;
  }
  return 0.3;
}
