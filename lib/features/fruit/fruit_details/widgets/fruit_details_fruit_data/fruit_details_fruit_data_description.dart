import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class FruitDetailsFruitDataDescription extends StatefulWidget {
  final String description;
  const FruitDetailsFruitDataDescription({Key? key, required this.description})
      : super(key: key);

  @override
  State<FruitDetailsFruitDataDescription> createState() =>
      _FruitDetailsFruitDataDescriptionState();
}

class _FruitDetailsFruitDataDescriptionState
    extends State<FruitDetailsFruitDataDescription> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            _isExpanded
                ? (widget.description)
                : '${(widget.description).substring(0, 30)}...',
            textAlign: TextAlign.justify,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? 'Read less' : 'Read more',
            style: TextStyle(color: primaryColor),
          ),
        ),
      ],
    );
  }
}
