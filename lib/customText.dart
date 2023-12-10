import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  String val;
  double scaleVal;
  FontWeight weight;
  double size = 19;
  double spacing;
  bool enable;
  CustomText(this.val,this.scaleVal,this.weight,this.size,this.spacing,this.enable);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleY: scaleVal,
      child: Text(
        val,
        textAlign: (enable)?TextAlign.center:TextAlign.start,
        style: TextStyle(
          fontFamily: 'Dotmatrix',
          fontWeight: weight,
          fontSize: size,
          letterSpacing: spacing,
          color: Color.fromRGBO(31, 31, 31, 10)
        ),
      ),
    );
  }
}
