import 'package:cloud_firestore/cloud_firestore.dart';

class figma{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addData(String title, String mints, String video, String reward,
      String coins, String status) {
    firestore.collection('Website').add({
      'title': title,  // Fix the typo here (use lowercase 'title')
      'mints': mints,
      'video': video,
      'reward': reward,
      'coins': coins,
      'status': status,
    });
  }
}