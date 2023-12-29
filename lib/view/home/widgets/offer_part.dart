import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';

class OfferPart extends StatelessWidget {
  const OfferPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.maxWidth(),
      padding: EdgeInsets.only(
          top: context.responsiveWidth(20),
          left: context.responsiveWidth(20),
          right: context.responsiveWidth(20)),
      decoration: BoxDecoration(
        color: const Color(0xff111E24),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Get 50% off on your first order. ",
                  style: TextStyle(
                      fontSize: context.responsiveWidth(16),
                      fontFamily: "OpenSans",
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFA6A02),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(14),
                          fontFamily: "OpenSans",
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
              width: context.responsiveHeight(150),
              child: Image.asset(
                "assets/image_home/offer.png",
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
