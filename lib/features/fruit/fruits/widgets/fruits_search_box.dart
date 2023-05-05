import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import 'fruits_search_box/fruits_search_box_prefix.dart';
import 'fruits_search_box/fruits_search_box_suffix.dart';

class FruitsSearchBoxField extends StatefulWidget {
  const FruitsSearchBoxField({
    Key? key,
    this.onChange,
    this.onSubmit,
    this.controller,
  }) : super(key: key);

  final Function(String)? onChange;
  final Function()? onSubmit;
  final TextEditingController? controller;

  @override
  State<FruitsSearchBoxField> createState() => _FruitsSearchBoxFieldState();
}

class _FruitsSearchBoxFieldState extends State<FruitsSearchBoxField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _searchBoxPadding,
      child: TextField(
        onSubmitted: (value) {
          widget.onSubmit;
        },
        controller: controller,
        style: const TextStyle(fontSize: 13, color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: FruitsSearchBoxSuffix(onPress: widget.onSubmit),
          prefixIcon: FruitsSearchBoxPrefix(onPress: widget.onSubmit),
          filled: true,
          fillColor: const Color(0xffFFFFFF),
          hintText: 'Search',
          hintStyle: const TextStyle(
            fontSize: 12,
            color: Color(0xff949494),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: _focusTextFieldBorderRadius,
            borderSide: _textFieldBorder,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: _textFieldBorderRadius,
            borderSide: _textFieldBorder,
          ),
        ),
      ),
    );
  }

  final _textFieldBorder = BorderSide(color: lightColor, width: 1);
  final _textFieldBorderRadius = const BorderRadius.all(Radius.circular(50));
  final _focusTextFieldBorderRadius =
      const BorderRadius.all(Radius.circular(20));
  final _searchBoxPadding = const EdgeInsets.symmetric(horizontal: 8.0);
}
