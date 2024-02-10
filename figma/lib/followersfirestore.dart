import 'package:cloud_firestore/cloud_firestore.dart';

class figmaa {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void add_Data(String title,String Followers, String Likes,String video,String coins, String status)
  {
    firestore.collection(
        ' Followers ').add({
      'title':title,
      'followes': Followers,
      'likes': Likes,
      'video': video,
      'coins': coins,
      'satuts':status,
    });

  }
}