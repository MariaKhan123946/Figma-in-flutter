import 'package:flutter/material.dart';
import 'watchtime.dart';
import 'websitefirestore.dart';

class Website extends StatefulWidget {
  const Website({super.key});

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  TextEditingController titleController=TextEditingController();
  TextEditingController mintscontroller= TextEditingController();
  TextEditingController videocontroller=TextEditingController();
  TextEditingController rewardcontroller=TextEditingController();
  TextEditingController coinscontroller=TextEditingController();
  TextEditingController statuscontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Whatchtime(),
                                      ));
                                },
                                icon: Image.asset('assets/arrow.png')))),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        ' Website',
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
                    controller: titleController,
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
                        hintText: ' Enter website title',
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
                    controller: mintscontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      label: Text('Min watching time (seconds)'),
                      hintText: 'Enter minute watching times in seconds',
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
                    controller: videocontroller,
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
                        label: const Text(
                          'Video link',
                        ),
                        hintText: 'Enter website link',
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
                    controller: rewardcontroller,
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
                          'Reward Points',
                        ),
                        hintText: 'Enter reward points',
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
                      Website();
                    },
                    child: const Text('Submit')))
          ],
        ),
      ),
    );
  }

  void Website(){
    figma dataService=figma();
    dataService.addData(
      titleController.text.toString(),
      mintscontroller.text.toString(),
      videocontroller.text.toString(),
      rewardcontroller.text.toString(),
      coinscontroller.text.toString(),
      statuscontroller.text.toString(),
    );
  }
  @override
  void dispose() {
    titleController.dispose();
    mintscontroller.dispose();
    videocontroller.dispose();
    rewardcontroller.dispose();
    coinscontroller.dispose();
    statuscontroller.dispose();


    // TODO: implement dispose
    super.dispose();
  }

}
