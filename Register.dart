// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:iti/task6.dart';


class register_page extends StatefulWidget {
  const register_page({Key? key}) : super(key: key);

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {

  late String name ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing:100  ,title: Text("إسأل مجرب ولا تسأل طبيب",style: TextStyle(color: Colors.black),), backgroundColor: Colors.amber,),

      body: Column(children: [

        Container(child:
          TextFormField(
           decoration: InputDecoration(
            hintText: "ادخل اسمك" ,
            label: Text(" Name "),
            labelStyle: TextStyle(fontSize: 20),
        )),
      ),
      ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return Rosheta_omg();
          }));
      }, child: Text("أدخل") ),
      ],),
    
    );
  }
}