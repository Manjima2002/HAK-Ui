import 'package:flutter/material.dart';

class Categories extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i=1;i<8;i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal:10 ),
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
decoration: BoxDecoration(color: Color(0xFFEDECF2),
borderRadius: BorderRadius.circular(20),
),
child: Row(crossAxisAlignment: CrossAxisAlignment.center,
  children: [
Image.asset("asset/images/saree-removebg-preview.png",width: 40,height: 40,),
Text("Sarees",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),)
],),
        ),
      ],),
    );
  }
}