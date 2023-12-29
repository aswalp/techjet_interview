import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';
import 'package:techjet_interview/view/home/category_data/data.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.responsiveHeight(105),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: context.responsiveWidth(80),
                  width: context.responsiveWidth(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0x14000000)),
                  child: SizedBox(
                      height: context.responsiveWidth(60),
                      width: context.responsiveWidth(60),
                      child: Image.asset(
                        Categorydata.list[index].image,
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  Categorydata.list[index].name,
                  style: TextStyle(
                      fontSize: context.responsiveWidth(12),
                      fontFamily: "OpenSans",
                      color: const Color(0xFF666464),
                      fontWeight: FontWeight.w400),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: context.responsiveWidth(10),
            );
          },
          itemCount: Categorydata.list.length),
    );
  }
}
