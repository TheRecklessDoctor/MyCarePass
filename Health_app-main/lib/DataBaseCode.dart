import 'package:firebase_database/firebase_database.dart';
import "package:flutter/widgets.dart";


//contains code for backend (storing data in the database)

final databaseReference = FirebaseDatabase.instance.reference();
//function to create a new record in the database
//   void createRecord(){
//     databaseReference.child().set({
//     });
//   }
