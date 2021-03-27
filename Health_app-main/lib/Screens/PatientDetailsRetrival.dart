import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AllControllers.dart';
import 'package:health_app/services/Cloud_Firebase.dart';



class PatientDetailsRet extends StatefulWidget {
  String icNum;
  String Date_of_birth;
  String Hepatitis_Date;
  String Hepatitis_Reaction;
  String Marital_Status;
  String Name;
  String Weight;
  String Height;
  PatientDetailsRet({Key key,@required this.icNum, Key key_2,@required this.Date_of_birth,
                      Key key_3,@required this.Hepatitis_Date, Key key_4,@required this.Hepatitis_Reaction,
                      Key key_5,@required this.Marital_Status, Key key_6,@required this.Name, Key key_7,@required this.Weight,
                      Key key_8,@required this.Height}): super(key:key_8);
  @override
  _PatientDetailsRetState createState() => _PatientDetailsRetState();
}

//class PatientDetails{
//  PatientDetails({required this.Date_of_birth, required this.Hepatitis_Date, required this.Hepatitis_Reaction, required this.icNum,
//                  required this. Marital_Status, required this.Name, required this.Weight, required this.Height});

//  final String Date_of_birth;
//  final String Hepatitis_Date;
//  final String Hepatitis_Reaction;
//  final String icNum;
//  final String Marital_Status;
//  final String Name;
//  final String Weight;
//  final String Height;


//}


class _PatientDetailsRetState extends State<PatientDetailsRet> {

  dynamic data_1;
  dynamic data_2;
  dynamic data_3;
  dynamic data_4;
  dynamic data_5;
  dynamic data_6;
  dynamic data_7;

  Future<dynamic> getData() async {

    final DocumentReference document_1 =   FirebaseFirestore.instance.collection("Patient").doc('2020092020202');
    final DocumentReference document_2 =   FirebaseFirestore.instance.collection("Patient").doc('X6GLransNF7kGHKQRlQe');
    final DocumentReference document_3 =   FirebaseFirestore.instance.collection("Patient").doc('gZDWqdN4R2tQhHVTaisY');
    final DocumentReference document_4 =   FirebaseFirestore.instance.collection("Patient").doc('hTCHY2IhOiPycvaJrfkg');
    final DocumentReference document_5 =   FirebaseFirestore.instance.collection("Patient").doc('lv3je7AdkDHGljV6w2cy');
    final DocumentReference document_6 =   FirebaseFirestore.instance.collection("Patient").doc('uxH8ldNQK4zqp0JVfcda');
    final DocumentReference document_7 =   FirebaseFirestore.instance.collection("Patient").doc('zaIEhAfXAKjarAlJqZz4');


    FirebaseFirestore.instance.collection('Patient').doc('X6GLransNF7kGHKQRlQe').get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
      } else {
        print('Document does not exist on the database');
      }
    });

    await document_1.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_1 = snapshot.data;
    });

    await document_2.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_2 = snapshot.data;
    });

    await document_3.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_3 = snapshot.data;
    });

    await document_4.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_4 = snapshot.data;
    });

    await document_5.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_5 = snapshot.data;
    });

    await document_6.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_6 = snapshot.data;
    });

    await document_7.get().then<dynamic>(( DocumentSnapshot snapshot) async{
      data_7 = snapshot.data;
    });


  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
