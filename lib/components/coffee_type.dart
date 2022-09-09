import 'package:coffee_bulk/constants/colors.dart';
import 'package:coffee_bulk/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;

  const CoffeeType({
    Key? key,
    required this.coffeeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeeType,
          style: Styles.headLineStyle4
              .copyWith(color: kPrimaryColor, fontSize: 19),
        ),
      ),
    );
  }
}
