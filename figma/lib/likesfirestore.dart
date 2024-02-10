
 import 'package:cloud_firestore/cloud_firestore.dart';

class Likess {
FirebaseFirestore firestore = FirebaseFirestore.instance;

void add_Data(String title,String thumbnail, String Likes,String video,String coins, String status)
{
firestore
    .collection(
'Likes').add({
'title':title,
'thumbnail': thumbnail,
'Likes': Likes,
'video': video,
'coins': coins,
'satuts':status,
});
}
}

