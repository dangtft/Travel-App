import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ReponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double width;

  ReponsiveButton({
    Key? key,
    this.width = 120,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (isResponsive)
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: AppText(
                  text: "Book Trip Now",
                  color: Colors.white,
                ),
              ),
            Image.asset("images/button-one.png"),
          ],
        ),
      ),
    );
  }
}
