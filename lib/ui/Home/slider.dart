import 'package:flutter/material.dart';
import 'package:iiit_sonepat_stable/constants/theme.dart';

class CarouselChild extends StatelessWidget {
  CarouselChild({@required this.address, this.onPress});
  final String address;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            image: AssetImage(address),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
