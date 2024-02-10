 import 'package:figma/watchtimefirestore.dart';
import 'package:flutter/material.dart';

import 'image_picker.dart';
import 'social.dart';


class Whatchtime extends StatefulWidget {
const Whatchtime({super.key});

@override
State<Whatchtime> createState() => _WhatchtimeState();
}

class _WhatchtimeState extends State<Whatchtime> {
TextEditingController TitleController =TextEditingController();
TextEditingController ThumbnailController =TextEditingController();
TextEditingController minuteController =TextEditingController();
TextEditingController coinsController =TextEditingController();
TextEditingController videoController =TextEditingController();
TextEditingController statusController =TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
body: SingleChildScrollView(
child: Column(
children: [
Container(
width: 430,
height: 127,
decoration: const BoxDecoration(
color: Color(0xFFFE7286),
borderRadius: BorderRadius.only(
bottomLeft: Radius.circular(36),
bottomRight: Radius.circular(36),
),
),
child: Row(
children: [
IconButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => Social(),));
}, icon: Image(image: AssetImage('assets/arrow.png'))),
Padding(
padding: EdgeInsets.only(top: 60,bottom: 20,left: 20),
child: SizedBox(
width: 140,
child: Row(
children: [
Text(
'Watch Time',
style: TextStyle(
fontSize: 22.65,
color: Colors.white,
fontWeight: FontWeight.w400,

),
),
],
),
),
),
Padding(
padding: const EdgeInsets.only(top: 30),
child: Container(
child: Row(
children: [
Padding(
padding: const EdgeInsets.only(left: 25, top: 10),
child: Container(
width: 124,
height: 29,
decoration: BoxDecoration(
border:
Border.all(width: 1, color: Colors.white),
color: Color(0xFFFE9DAB),
borderRadius: BorderRadius.circular(30),
),
child: const Row(
children: [
Padding(
padding: EdgeInsets.only(
top: 1, left: 0, bottom: 1),
child: CircleAvatar(
backgroundImage:
AssetImage('assets/dollar.png'),
),
),
Text(
'Balance',
style: TextStyle(
color: Colors.white,
fontSize: 18.65,
fontWeight: FontWeight.w400,
),
),
],
),
),
),
],
),
),
),
],
),
),
Column(
children: [
Padding(
padding: const EdgeInsets.only(top: 70, right: 12, left: 12),
child: TextFormField(
controller: TitleController,
decoration: InputDecoration(
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15)),
label: const Text(
'Title',
style: TextStyle(
color: Color(0xFF555555),
fontSize: 16,
fontFamily: 'Roboto'),
),
hintText: 'Enter video title',
hintStyle: TextStyle(
color: Color(0xFFA5A5A5),
fontSize: 22,
fontWeight: FontWeight.w400,
)),
),
),
Padding(
padding:
const EdgeInsets.only(left: 16, right: 16, top: 20),
child: Stack(
alignment: Alignment.topLeft,
children: [
Container(
width: 390,
height: 64,
decoration: BoxDecoration(
border: Border.all(width: 1, color: Colors.black),
borderRadius: BorderRadius.circular(60),
),
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: 190,
height: 60,
decoration: BoxDecoration(),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xFFEDEDED),
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.only(
topLeft: Radius.circular(60),
bottomLeft: Radius.circular(60),
),
),
),
onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => images(),));
},
child: const Text(
'Choose File',// bchy
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.w300,
height: 0.05,
),
),
),
),
],
),
),
const Padding(
padding: EdgeInsets.only(left: 20),
child: Text(
'Thumnail',
style: TextStyle(
backgroundColor: Colors.white,
color: Color(0xFF555555),
fontSize: 16,
fontWeight: FontWeight.w400,
height: 0.06),
),
),
],
),
),
Padding(
padding: EdgeInsets.only(top: 20, right: 12, left: 12),
child: TextFormField(
controller: minuteController,
decoration: InputDecoration(


suffix: Column(
children: [
Container(
height: 15,
width: 20,
child: Image(
image: AssetImage('assets/polygon.png'))),
SizedBox(
height: 5,
),
Image(image: AssetImage('assets/polygon(2).png')),
],
),
border: OutlineInputBorder(

borderRadius: BorderRadius.circular(60),
),
label: Text('Min watching time(Seconds)'),
hintText: 'Enter watching time in seconds',
hintStyle: TextStyle(
color: Color(0xFFA5A5A5),
fontSize: 16,
fontWeight: FontWeight.w400,
height: 0.05)),
),
),
Padding(
padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
child: TextFormField(
controller: coinsController,
decoration: const InputDecoration(
suffixIcon: Column(
children: [
SizedBox(
height: 5,
),
Image(image: AssetImage('assets/polygon.png')),
SizedBox(
height: 5,
),
Image(image: AssetImage('assets/polygon(2).png')),
],
),
border: OutlineInputBorder(

),
label: Text(
'Coins',
),
hintText: 'Enter coins',
hintStyle: TextStyle(
color: Color(
0xFFA5A5A5,
),
fontSize: 22,
fontWeight: FontWeight.w400,
)),
),
),
Padding(
padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
child: TextFormField(
controller: videoController,
decoration: const InputDecoration(

suffixIcon: Image(image: AssetImage('assets/ep_arrow.png')),
border: OutlineInputBorder(

),
label: Text(
'Video type',
),
hintText: 'Video type',
hintStyle: TextStyle(
color: Color(0xFFA5A5A5),
fontSize: 22,
fontWeight: FontWeight.w400,
height: 0.05),
),
),
),
Padding(
padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
child: TextFormField(
controller: statusController,
decoration: const InputDecoration(

suffixIcon: Image(image: AssetImage('assets/ep_arrow.png')),

border: OutlineInputBorder(),
label: Text(
'Status',
),
hintText: 'Published',
hintStyle: TextStyle(
color: Color(0xFFA5A5A5),
fontSize: 22,
fontWeight: FontWeight.w400,
height: 0.05),
),
),
),
],
),
SizedBox(
height: 40,
),
Container(
width: 350,
height: 62,
decoration:
BoxDecoration(borderRadius: BorderRadius.circular(34)),
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor: const Color(0xFFFE7286),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(64))),
onPressed: () {
Whatchtime();
},
child: const Text('Submit')))
],
),
),
);

}

void  Whatchtime(){
watctime dataService=watctime();
dataService.add_Data(
TitleController.text.toString(),
ThumbnailController.text.toString(),
minuteController.text.toString(),
coinsController.text.toString(),
videoController.text.toString(),
statusController.text.toString(),
);



}
}

