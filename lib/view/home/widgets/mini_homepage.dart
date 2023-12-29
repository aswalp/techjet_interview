import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';
import 'package:techjet_interview/view/home/widgets/address_part.dart';
import 'package:techjet_interview/view/home/widgets/category_part.dart';
import 'package:techjet_interview/view/home/widgets/menu_list.dart';
import 'package:techjet_interview/view/home/widgets/offer_part.dart';
import 'package:techjet_interview/view/home/widgets/textfield_part.dart';

class HomePageNav1 extends StatelessWidget {
  const HomePageNav1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(
          context.responsiveWidth(16),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.responsiveHeight(20),
              ),
              const AddressPart(),
              SizedBox(
                height: context.responsiveHeight(20),
              ),
              const OfferPart(),
              SizedBox(
                height: context.responsiveHeight(20),
              ),
              const TextFieldPart(),
              SizedBox(
                height: context.responsiveHeight(30),
              ),
              const Category(),
              SizedBox(
                height: context.responsiveHeight(20),
              ),
              Text(
                "Restaurant near you",
                style: TextStyle(
                    fontSize: context.responsiveWidth(16),
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: context.responsiveHeight(20),
              ),
              const MenuList()
            ],
          ),
        ),
      ),
    );
  }
}
