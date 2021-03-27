import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AllControllers.dart';
import 'package:health_app/services/Cloud_Firebase.dart';


class PatientDetailsDisplay extends StatefulWidget {
  String IcNum;
  PatientDetailsDisplay(String IcNum){
    this.IcNum = IcNum;
  }
  @override
  _PatientDetailsDisplayState createState() => _PatientDetailsDisplayState();
}

class _PatientDetailsDisplayState extends State<PatientDetailsDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Details'),
      ),

      body:  FutureBuilder<DocumentSnapshot>(
    future: FirebaseFirestore.instance.collection("Patients").doc(widget.IcNum).get(),
    builder:
    (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

    if (snapshot.hasError) {
    return Text("Something went wrong");
    }

    if (snapshot.connectionState == ConnectionState.done) {
    Map<String, dynamic> data = snapshot.data.data();
    return ListView(
      children:<Widget>[
        ListTile(
          title: Text("Name: ${data['Name']}"),
        ),
        ListTile(
          title: Text("Date of birth: ${data['Date of birth']}"),
        ),
        ListTile(
          title: Text("Height: ${data['height']}"),
        ),
        ListTile(
          title: Text("Weight: ${data['weight']}"),
        ),
        ListTile(
          title: Text("Date of birth: ${data['Date of birth']}"),
        ),
        ListTile(
          title: Text("Martial Status: ${data['Martial Status']}"),
        ),
        ListTile(
          title: Text("Date of Hepatitis Vaccine: ${data['Hepatitis Date']}"),
        ),
        ListTile(
          title: Text("Reaction to Hepatitis vaccine?: ${data['Hepatitis Reaction']}"),
        ),
        ListTile(
          title: Text("Date of Tetanus Vaccine: ${data['Tetanus Date']}"),
        ),
        ListTile(
          title: Text("Reaction to Tetanus vaccine? : ${data['Tetanus Reaction']}"),
        ),

      ]
    );

    }

    return Text("loading");
    },
    )
    );
  }
}
