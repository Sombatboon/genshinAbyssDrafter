
import 'package:cloud_firestore/cloud_firestore.dart';

class GetFirestore {

  final firestoreCloud = FirebaseFirestore.instance;

  getRoomLists() async{
    QuerySnapshot querySnap = await firestoreCloud.collection("Rooms").get();
    return querySnap;
  }



}