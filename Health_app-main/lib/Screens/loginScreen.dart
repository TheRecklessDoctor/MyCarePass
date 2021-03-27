import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/main.dart';
import '../main.dart';
import "../AllControllers.dart";

class loginScreen extends StatefulWidget {


  @override
  _loginScreenState createState() => _loginScreenState();


}

class _loginScreenState extends State<loginScreen> {
  final mycontrollers = TextEditingController();




    @override
  Widget build(BuildContext context) {

        return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen'
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children:<Widget>[
            Text(
              'Ic Number',
            ),
            TextField(
              controller: controllerLoginIC,
            ),

            ElevatedButton(
              onPressed: (){_send(context,controllerLoginIC.text);},
                child:Text('Submit'),
            ),
          ],
        ),
      ),
    );

    }
  void _send(BuildContext context,ICnum){
    String num = ICnum;
    Navigator.push(
      context, MaterialPageRoute(builder: (BuildContext context)=> SecondScreen(id:num)),
    );

    }

  }

