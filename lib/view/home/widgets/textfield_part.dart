import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';

class TextFieldPart extends StatelessWidget {
  const TextFieldPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      elevation: 8,
      shadowColor: Colors.grey,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xffFA6A02),
            ),
            suffixIcon: const Icon(
              Icons.tune,
              color: Color(0xff9F9F9F),
            ),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder:
                const OutlineInputBorder(borderSide: BorderSide.none),
            hintText: "Restaurant name or a dish name",
            hintStyle: TextStyle(
                fontSize: context.responsiveWidth(14),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
