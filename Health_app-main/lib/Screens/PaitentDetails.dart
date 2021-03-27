import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AllControllers.dart';
import 'package:health_app/services/Cloud_Firebase.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: PatientForm(),
      ),
    );
  }
}

class PatientForm extends StatefulWidget {
  @override
  _PatientFormState createState() => _PatientFormState();
}

class _PatientFormState extends State<PatientForm> {
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Form(
          key: _formKey,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            padding: const EdgeInsets.all(8),
            children: <Widget> [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'birthYear/Month/Day/OwnChoiceNum',
                  labelText: 'IC number',
                ),
                controller: controllerIC,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'IC number is invalid';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
                controller: controllerName,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Name is invalid';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'DD/MM/YYYY',
                  labelText: 'Date of birth',
                ),
                controller: controllerDOB,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Date Of Birth is invalid';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Height in cm',
                  labelText: 'Height',
                ),
                controller: controllerHeight,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Height should be in cm';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Weight in kg',
                  labelText: 'Weight',
                ),
                controller: controllerWeight,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter in kilograms';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "single/married/divorced",
                  labelText: "Martial Status",
                ),
                controller: controllerMS,
                validator: (value){
                  if(value.isEmpty){
                    return "Enter your martial Status";
                  }return null;
                }
              ),
              //ADD THE PHYSICIAN/DOCTOR INFORMATION WHICH IS TO BE DISPLAYED IN TABULAR FORM WHEN ACCESSING THE DATA

              TextFormField(
                decoration: InputDecoration(
                  hintText: "date taken(format: DD/MM/YYYY)/no if not taken",
                  labelText: "date of tetanus vaccine",
                ),
                  controller: controllerTetanusDate,
                  validator: (value){
                    if(value.isEmpty){
                      return "enter date if taken or no if not taken";
                    }return null;
                  }
              ),
              //CONFIRM ON THE LENGTH OF THE USER REPLY
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "reaction if any taken/nil if not taken or no reaction",
                    labelText: "reaction to tetanus vaccine if any",
                  ),
                  controller: controllerTetanusReaction,
                  validator: (value){
                    if(value.isEmpty){
                      return "field is empty";
                    }return null;
                  }
              ),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "date taken(format: DD/MM/YYYY)/no if not taken",
                    labelText: "reaction to hepatitis vaccine if any",
                  ),
                  controller: controllerHepatitisDate,
                  validator: (value){
                    if(value.isEmpty){
                      return "field is empty";
                    }return null;
                  }
              ),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "reaction if any taken/nil if not taken or no reaction",
                    labelText: "reaction to hepatits vaccine if any",
                  ),
                  controller: controllerHepatitisReaction,
                  validator: (value){
                    if(value.isEmpty){
                      return "field is empty";
                    }return null;
                  }
              ),


              ElevatedButton(onPressed: (){
                AddPaitent a1 = new AddPaitent(controllerName.text, controllerDOB.text, controllerHeight.text, controllerWeight.text, controllerMS.text,
                controllerTetanusDate.text, controllerTetanusReaction.text, controllerHepatitisDate.text, controllerHepatitisReaction.text,
                controllerIC.text);
                a1.addPatient();


              }, child: Text('Submit')),
            ],
          ),
        ));
  }
}

