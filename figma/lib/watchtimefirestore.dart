import 'package:cloud_firestore/cloud_firestore.dart';

class watctime {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  void add_Data(String Title, String Thumbnail, String minutes, String coins,
      String video, String status) {
    firestore.collection('watchtime').add({
      'Title': Title,
      'Thumbnail': Thumbnail,
      'minutes': minutes,
      'coins': coins,
      'video': video,
      'status': status
    });
  }
}
