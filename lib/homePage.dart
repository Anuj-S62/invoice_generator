import 'dart:math';

import 'package:flutter/material.dart';
import 'package:invoice_generator/customText.dart';
import 'package:invoice_generator/keyValue.dart';
import 'package:invoice_generator/pickImage.dart';
import 'package:invoice_generator/showDialog.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String gst = "09AHFPN3896F43S";
  String rId = "";
  String date = "";
  String time = "";
  String price = "0";
  String qty = "0";
  String sale = "0";
  String addr = "SIKANDRABAD ROAD GAUTAM BUDH NAGAR";
  String pumpName = "HAMARA PUMP MCS DANKAUR";
  String endNote1 = "Thank You! Visit Again";
  String endNote2 = "Save Fuel, Save Money";
  String vehNo = "";
  String cName = "";

  void _setPrice(){
    showEditDialog(context, (String newValue) {
      setState(() {
        price = newValue;
        double a1 = double.parse(price);
        double a2 = double.parse(qty);
        sale = (a1*a2).toStringAsFixed(2);
      });
    });
  }

  void _setQty(){
    showEditDialog(context, (String newValue) {
      setState(() {
        qty = newValue;
        double a1 = double.parse(price);
        double a2 = double.parse(qty);
        sale = (a1*a2).toStringAsFixed(2);
      });
    });
  }
  void _setSale(){
    showEditDialog(context, (String newValue) {
      setState(() {
        sale = newValue;
        double a1 = double.parse(price);
        double a2 = double.parse(sale);
        qty = (a2/a1).toStringAsFixed(2);
      });
    });
  }
  void _showEditGSTDialog() {
    showEditDialog(context, (String newValue) {
      setState(() {
        gst = newValue;
      });
    });
  }
  void _editReceipt(){
    Random random = Random();
    int id = random.nextInt(9000000) + 1000000;
    String s = id.toString();
    setState(() {
      rId = s;
    });
  }
  void _editDate(){
    showEditDialog(context, (String newValue) {
      setState(() {
        date = newValue;
      });
    });
  }
  void _editAddr(){
    showEditDialog(context, (String newValue) {
      setState(() {
        addr = newValue;
      });
    });
  }
  void _editPump(){
    showEditDialog(context, (String newValue) {
      setState(() {
        pumpName = newValue;
      });
    });
  }
  void _editEnding1(){
    showEditDialog(context, (String newValue) {
      setState(() {
        endNote1 = newValue;
      });
    });
  }
  void _editEnding2(){
    showEditDialog(context, (String newValue) {
      setState(() {
        endNote2 = newValue;
      });
    });
  }
  void _editTime(){
    showEditDialog(context, (String newValue) {
      setState(() {
        time = newValue;
      });
    });
  }
  void _editVNum(){
    showEditDialog(context, (String newValue) {
      setState(() {
        vehNo = newValue;
      });
    });
  }
  void _editCName(){
    showEditDialog(context, (String newValue) {
      setState(() {
        cName = newValue;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color.fromARGB(255, 254, 254, 254),
        child: SingleChildScrollView(
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 70,),
                Container(
                  // color: Colors.black,
                  width: 280,
                  height: 280,
                  child: PickImage(),
                ),
                TextButton(onPressed: _showEditGSTDialog,
                    child:CustomText("GST No " + gst, 1.08, FontWeight.w600, 20,-0.2,true),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(0,15,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _editPump,
                          child: CustomText(
                             pumpName,
                              1.03,
                              FontWeight.w600,
                              16,
                              -0.3,
                            true
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50,0,50,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _editAddr,
                          child: CustomText(
                              addr,
                              1.05,
                              FontWeight.w600,
                              16,
                              -0.3,
                              true
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70,20,70,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: CustomText(
                            "WELCOME !!!",
                            1.1,
                            FontWeight.w900,
                            20,
                            -0.5,
                          true
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(onTap: _editReceipt, child: KeyValue("Receipt ID", ": $rId")),
                GestureDetector(onTap: _editDate,child: KeyValue("Date", ": $date")),
                GestureDetector(onTap: _editTime,child: KeyValue("Time", ": $time")),
                KeyValue("TRX. Type", ": Cash"),
                KeyValue("Product", ": Petrol"),
                GestureDetector(onTap: _editVNum,child: KeyValue("Vehicle No.",": $vehNo")),
                GestureDetector(onTap: _editCName,child: KeyValue("Customer Name",": $cName")),
                GestureDetector(onTap: _setPrice,child:KeyValue("Price",": Rs $price")),
                GestureDetector(onTap: _setQty,child:KeyValue("Quantity",": $qty Ltr  ")),
                GestureDetector(onTap: _setSale,child:KeyValue("Sale",": Rs $sale")),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70,20,70,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _editEnding1,
                          child: CustomText(
                              endNote1,
                              1.05,
                              FontWeight.w600,
                              16,
                              0,
                              true
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70,0,70,30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _editEnding2,
                          child: CustomText(
                              endNote2,
                              1.05,
                              FontWeight.w600,
                              16,
                              0,
                              true
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
