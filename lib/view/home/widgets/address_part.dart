import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';

class AddressPart extends StatelessWidget {
  const AddressPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Color(0xffFA6A02),
              size: 28,
            ),
            Text(
              "office",
              style: TextStyle(
                  fontSize: context.responsiveWidth(20),
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 4,
            ),
            Transform.rotate(
                angle: (3.14 * 270) / 180,
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: Color(0xff9F9F9F),
                )),
          ],
        ),
        SizedBox(
          width: context.responsiveWidth(200),
          child: Text(
            "38/A, 3rd Floor, 18th Main, 22nd Cross Rd, Sector 3, HSR Layout, Bengaluru, Karnataka 560102",
            maxLines: 1,
            style: TextStyle(
                fontSize: context.responsiveWidth(12),
                color: const Color(0xFF666464),
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
