import 'package:flutter/material.dart';
import 'Followers.dart';
import 'likes.dart';
import 'watchtime.dart';
import 'website.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 85),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.57),
                      child: Container(
                        width: 35,
                        height: 35,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: SizedBox(
                      width: 140,
                      child: Column(
                        children: [
                          Text(
                            'Social Media',
                            style: TextStyle(
                              fontSize: 22.65,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            'Service',
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
                    padding: const EdgeInsets.only(left: 25, top: 10),
                    child: Container(
                      width: 124,
                      height: 29,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.white),
                        color: Color(0xFFFE9DAB),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 1, left: 0, bottom: 1),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/dollar.png'),
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
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 12),

                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 100,left: 15),
                          child: Image.asset('assets/video.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>  Whatchtime()));
                          }, child: Text('Watch time',style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.65, ),
                          ),
                          ),
                        ),
                      ],
                    ),
                    height: 126,
                    width: 173,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image: AssetImage('assets/Mask group.png'
                            )),

                        color: Color(0xFFFF9A9D),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 12),
                  child: Container(
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(right: 110,top: 20),
                          child: Image.asset('assets/vector.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Website (),));
                          }, child: Text('Website',style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.65,)
                          ),
                          ),
                        )
                      ],
                    ),
                    height: 126,
                    width: 173,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image:
                            AssetImage('assets/Mask group(1).png')),
                        color: Color(0xFF00A2E7),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 12),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90,top: 10),
                          child: Image.asset('assets/ThumbsUp.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Likes()
                              ,));


                          }, child: Text('Likes',style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.65,
                          ),
                          ),
                          ),
                        )
                      ], //
                    ), width: 173,height: 126,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image: AssetImage('assets/Mask group(2).png'
                            )),
                        color: Color(0xFFAE71CE),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3, top: 12),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 100,top: 5),
                          child: Image.asset('assets/person.png'),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:   (context) => Followers ( ), ));
                            }, child: Text(
                              'Followers/subscribes',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.65,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),)
                        )
                      ],//image to n ia
                    ),
                    height: 126,
                    width: 173,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image: AssetImage('assets/Mask group(3).png'
                            )),
                        color: Color(
                          0xFF92B7FF,
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


