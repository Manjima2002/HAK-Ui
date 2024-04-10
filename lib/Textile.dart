import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Categories.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {} ,icon: Icon(Icons.account_circle),),
        actions: [
          IconButton(onPressed: () {} , icon: Icon(Icons.favorite,color: Colors.red,) ),
          IconButton(onPressed: () {} , icon: Icon(Icons.notifications,color: Colors.amber.shade800,) ),
          IconButton(onPressed: () {} , icon: Icon(Icons. shopping_cart,color:Colors.pinkAccent,) ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 500,
padding: EdgeInsets.only(top:15,),
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(35),
    topRight: Radius.circular(35),
  ),
),
child:Column(children: [
  Container(
    margin: EdgeInsets.symmetric(horizontal: 15),
    padding: EdgeInsets.symmetric(horizontal: 15),
    height: 50,
    decoration: BoxDecoration(
    color:Color(0xFFEDECF2),
    borderRadius: BorderRadius.circular(30),
  ),
  child: Row(children: [
    Container(
      margin: EdgeInsets.only(left:5),
      height: 50,
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Serch by keyword product ID",
        ),
      ),
    ),
    Spacer(),
    Icon(Icons.camera_alt,
    size: 27,
    color: Colors.grey,),
    
  ],),
  ),
  Container(
alignment: Alignment.centerLeft,
margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
child: Text("Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.black),
),

  ),
 Categories(),
],)
          ),
        ],
      ),
      );
  }
}