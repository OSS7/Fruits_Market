import 'package:flutter/material.dart';

class FruitsSearchBoxField extends StatefulWidget {
  FruitsSearchBoxField({
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
  State<FruitsSearchBoxField> createState() => _FruitsSearchBoxFieldState();
}

class _FruitsSearchBoxFieldState extends State<FruitsSearchBoxField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        autofocus: widget.autoFocus ?? false,
        onSubmitted: (value) {
          if (widget.onSubmit != null) {
            widget.onSubmit!();
          }
        },
        controller: widget.controller ?? controller,
        onChanged: (value) {
          if (widget.onChange != null) {
            widget.onChange!(value);
          }
          setState(() {});
        },
        style: const TextStyle(fontSize: 13, color: Colors.black),
        decoration: InputDecoration(
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 3,
            ),
            width: 40,
            child: InkWell(
              onTap: widget.onSubmit,
              child: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          prefixIcon: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 3,
            ),
            width: 40,
            child: InkWell(
              onTap: widget.onSubmit,
              child: const Icon(
                Icons.search_outlined,
                color: Colors.black,
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
          constraints: const BoxConstraints(
            maxHeight: 50,
            minHeight: 40,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          fillColor: const Color(0xffF0F4F9),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffF0F4F9),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: _textFieldBorderRadius,
            borderSide: const BorderSide(
              color: Color(0xffF0F4F9),
              width: 1,
            ),
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
