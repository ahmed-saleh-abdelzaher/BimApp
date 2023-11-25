import 'package:flutter/material.dart';
import 'homePage.dart';

class Result extends StatelessWidget {
  Color changemaleColorfetch = Color(0xffEF4132);
  Color changefemaleColorfetch = Color(0xff1F1F1E);
  String personfetch = " ";
  var heightfetch = 0;
  var weightfetch = 0;
  var agefetch = 0;
  String fitnessFetch = "";
  int bimResult = 0;

  Result(Color changemaleColor, Color changefemaleColor, String person, int height, int weight, int age, int bim, String fitness){
    changefemaleColorfetch = changefemaleColor;
    changemaleColorfetch = changemaleColor;
    personfetch = person;
    heightfetch = height;
    weightfetch = weight;
    agefetch = age;
    bimResult = bim;
    fitnessFetch = fitness;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMI Result", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xff1F1F1E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gender : $personfetch",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Age : $agefetch",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Height : $heightfetch",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Weight : $weightfetch",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Result BIM : $bimResult",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Perfect Weight : ",
                    style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text("$fitnessFetch",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
