import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../AllControllers.dart';
import 'dart:math';

final databaseRef = FirebaseFirestore.instance;
int rand;
String Message;
class AddPaitent{
  final String name;
  final String dob;
  final String height;
  final String weight;
  final String MartialStatus;
  final String TetanusD;
  final String TetanusR;
  final String HepatitisD;
  final String HepatitisR;
  final String ICNum;



  AddPaitent(this.name, this.dob, this.height,this.weight, this.MartialStatus,this.TetanusD,this.TetanusR,
      this.HepatitisD,this.HepatitisR,this.ICNum);

  void randomNum(){
    Random ran = new Random();
    rand = ran.nextInt(300)+1;
}


  CollectionReference paitient = databaseRef.collection('Patients');

  Future addPatient(){
    return paitient
      .doc(ICNum)
      .set({
      'Name' : name,
      'Date of birth': dob,
      'height': height,
      'weight': weight,
       'Martial Status': MartialStatus,
      'Tetanus Date': TetanusD,
      'Tetanus Reaction':TetanusR,
      'Hepatitis Date': HepatitisD,
      'Hepatitis Reaction': HepatitisR,
      })
    .then((value) => Message = 'Data saved')
    .catchError((error)=> Message = 'Error:$error');
  }
}


class RetrivePatientDetails{

  

}


