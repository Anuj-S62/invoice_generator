import 'package:flutter/material.dart';
import 'package:invoice_generator/customText.dart';

class KeyValue extends StatelessWidget {
  String ky;
  String val;


  KeyValue(this.ky,this.val);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25,0,0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
                ky,
                1.05,
                FontWeight.w600,
                16,
                -0.3,
              false
            ),
          ),
          Expanded(
            child: CustomText(
                val,
                1.05,
                FontWeight.w600,
                16,
                -0.3,
              false
            ),
          ),
        ],
      ),
    );
  }
}
