import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class SetFirestore{

  final db = FirebaseFirestore.instance;

  setRoomDoc(Map dataMap) async{

    String creator = dataMap["creator"];
    String password = dataMap["password"];


    Map<String, dynamic> roomJson =  {
      "creator": creator,
      "password": password,
    };
    db.collection("Rooms")
        .doc(creator)
        .set(roomJson, SetOptions(merge: true));
  }


}