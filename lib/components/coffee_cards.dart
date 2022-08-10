import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffee_bulk/constants/colors.dart';
import 'package:coffee_bulk/screens/coffee_screen.dart';
import 'package:coffee_bulk/utils/layouts.dart';
import 'package:coffee_bulk/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeCard extends StatelessWidget {
  Map<String, dynamic> coffee;
  CoffeeCard({Key? key, required this.coffee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CoffeeScreen(coffeeDetails: coffee)));
      },
      child: Container(
        width: 200,
        height: AppLayout.getHeight(335),
        padding: EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 5, right: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient:
                LinearGradient(colors: [Color(0xFF262B34), Color(0xFF0E1015)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF2F2320),
                          spreadRadius: 2,
                          blurRadius: 20,
                        )
                      ],
                      image: DecorationImage(
                          image: AssetImage("${coffee['image']}"),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: BlurryContainer(
                      width: 70,
                      blur: 8,
                      elevation: 0,
                      // color: Color(0xFF553425),
                      color: Colors.transparent,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: kPrimaryColor,
                          ),
                          Text(
                            "${coffee['rating']}",
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    )),
              ],
            ),
            const Gap(10),
            Text(
              "${coffee['name']}",
              style: Styles.headLineStyle2.copyWith(color: Colors.white),
            ),
            const Gap(7),
            Text("with ${coffee['with']}",
                style:
                    Styles.headLineStyle4.copyWith(color: Color(0xFFACACAC))),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("\$",
                        style: Styles.headLineStyle2
                            .copyWith(color: kPrimaryColor)),
                    Text(" ${coffee['price']}",
                        style: Styles.headLineStyle2.copyWith(
                          color: Colors.white,
                        ))
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kPrimaryColor),
                  child: Icon(Icons.add, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
