import 'package:flutter/material.dart';


class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _inputText="";

  void onSubmitted(String value){
    setState((){
      _inputText= _inputText+"\n"+value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      title: Text("shrek10"),
    ) ,
      body: Container(child: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children:<Widget> [
          TextField(
            controller: TextEditingController(),
            onSubmitted:onSubmitted, //(String value){print(value);},
            decoration: InputDecoration(hintText: "ingrese el texto"),
          ),
          Text(_inputText)

        ],
      ),),
    );
  }
}
