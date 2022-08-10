import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffee_bulk/components/coffee_cards.dart';
import 'package:coffee_bulk/constants/colors.dart';
import 'package:coffee_bulk/models/coffee.dart';
import 'package:coffee_bulk/utils/layouts.dart';
import 'package:coffee_bulk/utils/styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          const Gap(40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(width: 2, color: Color(0xFF232831)),
                        gradient: LinearGradient(
                            colors: [Color(0xFF21262E), Color(0x11151B)]),
                      ),
                      child: Icon(
                        Iconsax.menu,
                        color: Color(0xFF4D4F52),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/profile.jpg",
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(width: 2, color: Color(0xFF232831)),
                        gradient: LinearGradient(
                            colors: [Color(0xFF21262E), Color(0x11151B)]),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Text(
                  "Find the best \ncoffee for you",
                  style: Styles.headLineStylel
                      .copyWith(color: Colors.white, fontSize: 30),
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                      color: kTextInput,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Find your coffee...',
                          hintStyle: TextStyle(color: kTextInputIconColor),
                          prefixIcon: Icon(
                            FluentSystemIcons.ic_fluent_search_filled,
                            color: kTextInputIconColor,
                          ),
                          prefixIconColor: kTextInputIconColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: coffeeList
                    .map((singleCoffee) => CoffeeCard(coffee: singleCoffee))
                    .toList()),
          ),
          const Gap(20),

          //Special for you Container
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getwidth(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Special for you",
                    style: Styles.headLineStyle2.copyWith(color: Colors.white),
                  ),
                  const Gap(20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    width: AppLayout.getwidth(400),
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF262B34), Color(0xFF0E1015)]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            height: 250,
                            width: 170,
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
                                    image: AssetImage("assets/images/1.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Gap(20),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "5 Coffee Beans you can try",
                                style: Styles.headLineStyle2
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Coffee contains caffeine, a central nervous system stimulant that is known for its ability to fight fatigue and increase energy levels",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: Styles.textStyle
                                    .copyWith(color: Colors.white),
                              ),
                              Gap(10),
                              Container(
                                width: AppLayout.getwidth(200),
                                height: AppLayout.getHeight(40),
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    "Read More...",
                                    style: Styles.textStyle
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
