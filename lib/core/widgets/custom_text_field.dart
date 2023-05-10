import 'package:flutter/material.dart';
import 'package:fruits_market/core/constant/colors.dart';

import '../constant/icons_paths.dart';
import 'custom_icon.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final int? maxLines;
  const CustomTextField(
      {Key? key, this.hint, required this.controller, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: primaryColor, width: 1),
        ),
      ),
    );
  }
}

class CustomSearchTextField extends StatefulWidget {
  CustomSearchTextField({
    this.onChange,
    this.onSubmit,
    this.controller,
    this.autoFocus,
  });

  final Function(String)? onChange;
  final Function()? onSubmit;
  final TextEditingController? controller;
  final bool? autoFocus;

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextField(
      autofocus: widget.autoFocus ?? false,
      onSubmitted: (value) {
        if (widget.onSubmit != null) {
          widget.onSubmit!();
        }
        ;
      },
      controller: widget.controller ?? controller,
      onChanged: (value) {
        if (widget.onChange != null) {
          widget.onChange!(value);
        }
        setState(() {});
      },
      style: TextStyle(fontSize: 13, color: colorScheme.onPrimary),
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: EdgeInsets.symmetric(
            vertical: 5,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 3,
          ),
          width: 40,
          child: InkWell(
            onTap: widget.onSubmit,
            child: Icon(
              Icons.search_outlined,
              color: blackColor,
              size: 25,
            ),
          ),
        ),
        filled: true,
        hintText: 'Search',
        hintStyle: const TextStyle(
          fontSize: 12,
          color: Color(0xff949494),
        ),
        constraints: BoxConstraints(
          maxHeight: 50,
          minHeight: 40,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        fillColor: lightColor,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: lightColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: _textFieldBorderRadius,
          borderSide: BorderSide(
            color: lightColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}

var _textFieldBorderRadius = const BorderRadius.all(
  Radius.circular(
    50,
  ),
);
