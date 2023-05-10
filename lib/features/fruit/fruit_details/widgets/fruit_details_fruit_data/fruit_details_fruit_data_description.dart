import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

class FruitDetailsFruitDataDescription extends StatefulWidget {
  const FruitDetailsFruitDataDescription({Key? key}) : super(key: key);

  @override
  State<FruitDetailsFruitDataDescription> createState() =>
      _FruitDetailsFruitDataDescriptionState();
}

class _FruitDetailsFruitDataDescriptionState
    extends State<FruitDetailsFruitDataDescription> {
  bool _isExpanded = false;
  final String _text =
      "Ananas, also known as pineapple in English, is a tropical fruit with a spiky, tough exterior and a sweet, juicy interior. It is rich in nutrients such as vitamin C, manganese, and bromelain, and is often eaten fresh or used in various culinary dishes and drinks.";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            _isExpanded ? _text : _text.substring(0, 30) + '...',
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
