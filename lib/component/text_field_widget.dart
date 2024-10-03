import 'package:flutter/material.dart';
import 'package:wealthwave/constants_used/colors_used.dart';

class TextFieldWidget extends StatelessWidget {
  final String? title;
  final TextEditingController controller;

  const TextFieldWidget(
      {super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? "",
          style: TextStyle(fontSize: 15, color: allTextMainColor),
        ),
        Container(
          color: textFieldColor,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: title,
              hintStyle: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
