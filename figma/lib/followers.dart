import 'package:flutter/material.dart';

import 'followersfirestore.dart';
import 'likes.dart';




class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  TextEditingController titlecontroller=TextEditingController();
  TextEditingController followerscontroller=TextEditingController();
  TextEditingController likescontroller=TextEditingController();
  TextEditingController videocontroller=TextEditingController();
  TextEditingController coinscontroller=TextEditingController();
  TextEditingController statuscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {

    return

      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 430,
                height: 127,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Color(0xFFFE7286),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Likes(),));

                                  },
                                  icon: Image.asset('assets/arrow.png')))),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Followers',
                          style: TextStyle(color: Colors.white, fontSize: 22.65),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 29,
                          width: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFFE9DAB),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/dollar.png'),
                              ),
                              Text(
                                'Balance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.65),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, right: 12, left: 12),
                    child: TextFormField(
                      controller: titlecontroller,
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
                          hintText: 'Enter title of channel/profile',
                          hintStyle: TextStyle(
                            color: Color(0xFFA5A5A5),
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
                    child: TextFormField(
                      controller: followerscontroller,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Followers/subscribers'),
                        hintText:'Enter number of followers/subscribers',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 12, left: 12),
                    child: TextFormField(
                      controller: likescontroller,
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
                          border: OutlineInputBorder(),
                          label: Text('Likes'),
                          hintText: 'Enter number of likes',
                          hintStyle: TextStyle(
                              color: Color(0xFFA5A5A5),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0.09)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12, left: 12),
                    child: TextFormField(
                      controller: videocontroller,
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
                          border: OutlineInputBorder(),
                          label: Text(
                            'Post/Video Link',
                          ),
                          hintText: 'Enter post/video link',
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
                      controller: coinscontroller,
                      decoration: const InputDecoration(
                        suffixIcon:
                        Image(image: AssetImage('assets/ep_arrow.png')),
                        border: OutlineInputBorder(),
                        label: Text(
                          'Coins',
                        ),
                        hintText: 'Enter coins',
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
                      controller: statuscontroller,
                      decoration: const InputDecoration(
                        suffixIcon:
                        Image(image: AssetImage('assets/ep_arrow.png')),
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
                        Followers();
                      },
                      child: const Text('Submit')))
            ],
          ),
        ),
      );
  }
  void Followers(){
    figmaa dataService =figmaa();
    dataService.add_Data(titlecontroller.text.toString(),
      followerscontroller.text.toString(),
      likescontroller.text.toString(),
      videocontroller.text.toString(),
      coinscontroller.text.toString(),
      statuscontroller.text.toString(),
    );


  }
}


