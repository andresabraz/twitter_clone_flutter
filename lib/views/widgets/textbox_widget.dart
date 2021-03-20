import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextboxWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? label;
  final int? maxLength;
  final bool isMultiline;

  TextboxWidget(
      {required this.controller,
      required this.hintText,
      this.label,
      this.maxLength,
      this.isMultiline = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      minLines: 1,
      maxLines: isMultiline ? 3 : 1,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
      ),
    );
  }
}
