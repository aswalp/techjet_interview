import 'package:flutter/material.dart';
import 'package:techjet_interview/extension/extension.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: context.responsiveWidth(180),
                width: context.responsiveWidth(130),
                margin: EdgeInsets.only(right: context.responsiveWidth(10)),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/image_home/poster.png"),
                        fit: BoxFit.cover)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Domino's Pizza",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(16),
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(context.responsiveWidth(6)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4.2",
                                style: TextStyle(
                                    fontSize: context.responsiveWidth(12),
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.w400),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color(0xffFA6A02),
                                size: 20,
                              ),
                              Text(
                                "(10k+)",
                                style: TextStyle(
                                    fontSize: context.responsiveWidth(12),
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Text(
                          " 25 mins",
                          style: TextStyle(
                              fontSize: context.responsiveWidth(12),
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Text(
                      "Pizzas,Italian,Pasta,Pimple Saudagar",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(15),
                          color: const Color(0xFF666464),
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "FREE DELIVERY",
                      style: TextStyle(
                          fontSize: context.responsiveWidth(15),
                          color: const Color(0xFF11CF24),
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Color(0xff666464),
                  ))
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: context.responsiveHeight(10),
          );
        },
        itemCount: 2);
  }
}
