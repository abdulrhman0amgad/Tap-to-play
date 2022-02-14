import 'dart:math';

import 'package:flutter/material.dart';

class Rosheta_omg extends StatefulWidget {
  Rosheta_omg({Key? key}) : super(key: key);

  @override
  State<Rosheta_omg> createState() => _Rosheta_omgState();
}



class _Rosheta_omgState extends State<Rosheta_omg> {
  info rosheta = new info(diagnosis: "قلة النوم", treatment: "أغلق الهاتف ونام شوية");
  List<info> roshetalist =[
    info(
      diagnosis:"عندك حموضة" ,treatment: "خد فوار"),
    info(diagnosis: "عندك برد", treatment: "اتدفي كويس"),
    info(diagnosis: "عندك وجع بطن", treatment: "كل كويس"),
    info(diagnosis: "جرثومه المعدة", treatment: "رش بيرسول"),
  ];
  int index = 0 ;
  Random r = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Stack(children: [
          Image.asset("assets/images/rosheta.png"),
          Positioned(child: Text(roshetalist[index].name, ),right: 160,top: 145,),
          Positioned(child: Text(roshetalist[index].diagnosis,style: TextStyle(fontFamily: 'oswald'),),right: 160,top: 200,),
          Positioned(child: Text(roshetalist[index].treatment,),right: 190,top: 295,),

          Positioned(
            top: 220,
            right: 150,
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 20 ,horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.white , width: 2.5),
                borderRadius: BorderRadius.circular(10),
              ),
              
              child:
              ElevatedButton(onPressed: (){
                setState(() {  
                  index = r.nextInt(roshetalist.length);
                });
                }, 
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  primary: Colors.transparent
                ),
              child:Row(
                mainAxisSize: MainAxisSize.min,
                children:[
                  Icon(Icons.present_to_all_sharp ),
                    Text("     tap to play", style: TextStyle(fontFamily:'oswald'),),
              ])
              ),
            ),
         ) ]),
      ) ,
    );
  }
}
  class info {
   late String name=  "Aya";
   late String diagnosis ;
   late String treatment ;
    info(
      {
        required this.diagnosis,
        required this.treatment ,
      }
    );
  }