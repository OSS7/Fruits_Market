import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_spacer.dart';
import 'package:lottie/lottie.dart';

import '../../../core/config/size_config.dart';

class PageViewItem extends StatefulWidget {
  final String lottie;
  final String title;
  final String subtitle;

  const PageViewItem(
      {Key? key,
      required this.lottie,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  State<PageViewItem> createState() => _PageViewItemState();
}

class _PageViewItemState extends State<PageViewItem>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpacer(15),
        Container(
          height: SizeConfig.defaultSize! * 25,
          child: Lottie.asset(
            widget.lottie,
          ),
        ),
        Text(widget.title,style: _titleStyle,),
        const VerticalSpacer(2),
        Text(widget.subtitle,style: _subtitleStyle,),
      ],
    );
  }
  final TextStyle _titleStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black
  );
  final TextStyle _subtitleStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.grey
  );
}
