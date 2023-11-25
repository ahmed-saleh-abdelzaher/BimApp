import 'Result.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color changemaleColor = Color(0xffEF4132);
  Color changefemaleColor = Color(0xff1F1F1E);
  String person = " ";
  var height = 0;
  var weight = 0;
  var age = 0;
  int bim = 0;
  String fitness = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("BMI Calculator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            Row(
              children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        person = "Male";
                        setState(() {
                          if(changemaleColor==Color(0xffEF4132)){
                            changefemaleColor = Color(0xff1F1F1E);
                          }
                          else{
                            changemaleColor = Color(0xffEF4132);
                            changefemaleColor = Color(0xff1F1F1E);
                          }
                        });
                      },
                      child: Container(
                        height: 185,
                        margin: EdgeInsets.only(right: 10, bottom: 20),
                        decoration: BoxDecoration(color: changemaleColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, color: Colors.white,size: 110,),
                          Text("MALE", style: TextStyle(color: Colors.white, fontSize: 35),),
                        ],),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        person = "Female";
                        setState(() {
                          if(changefemaleColor==Color(0xffEF4132)){
                            changemaleColor = Color(0xff1F1F1E);
                          }
                          else{
                            changefemaleColor = Color(0xffEF4132);
                            changemaleColor = Color(0xff1F1F1E);
                          }
                        });
                      },
                      child: Container(
                        height: 185,
                        margin: EdgeInsets.only(left: 10, bottom: 20),
                        decoration: BoxDecoration(color: changefemaleColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, color: Colors.white,size: 110,),
                          Text("FEMALE", style: TextStyle(color: Colors.white, fontSize: 35),),
                        ],),
                      ),
                    ),
                  ),
                ],),
            Container(
              padding: EdgeInsets.symmetric(vertical: 35),
              decoration: BoxDecoration(
                color: Color(0xff1F1F1E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: TextStyle(color: Colors.white, fontSize: 30),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$height", style: TextStyle(
                          color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      Text("cm", style: TextStyle(color: Colors.white, fontSize: 25),),
                    ],
                  ),
                  Slider(activeColor: Color(0xffF24233),
                      min: 0,
                      max: 175,
                      inactiveColor: Color(0xff2A3946),
                      value: height.toDouble(), onChanged: (value){
                        setState(() {
                          height = value.toInt();
                        });
                      }),
              ],),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xff1F1F1E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text("WEIGHT", style: TextStyle(color: Colors.white, fontSize: 25),),
                        Text("$weight", style: TextStyle(
                            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffEF4132),
                                radius: 25,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(weight!=0){
                                        weight = weight - 1;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffEF4132),
                                radius: 25,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if((weight==0||weight>0) && weight!=150){
                                        weight = weight + 1;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xff1F1F1E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text("AGE", style: TextStyle(color: Colors.white, fontSize: 25),),
                        Text("$age", style: TextStyle(
                            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffEF4132),
                                radius: 25,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(age!=0){
                                        age--;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.remove, color: Colors.white,),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: CircleAvatar(
                                backgroundColor: Color(0xffEF4132),
                                radius: 25,
                                child: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      if(age != 70){
                                        age++;
                                      }
                                    });
                                  },
                                  icon: Icon(Icons.add, color: Colors.white,),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: MaterialButton(
                    color: Color(0xffF24233),
                    child: Text("Calculate"),
                    onPressed: (){
                      if(age < 19){
                        fitness = "Not allowed for Under 19 Age";
                      }
                      else if(bim < 16){
                        fitness = "extreme thinness";
                      }else if(bim>16 && bim<=17){
                        fitness = "normal thinness";
                      }else if(bim>17 && bim<=18.5){
                        fitness = "light thinness";
                      }else if(bim>18.5 && bim<=25){
                        fitness = "Fit";
                      }else if(bim>25 && bim<=30){
                        fitness = "OverWeight";
                      }else if(bim>30 && bim<=35){
                        fitness = "first class OverWeight";
                      }else if(bim>35 && bim<=40){
                        fitness = "second class OverWeight";
                      }else if(bim>40){
                        fitness = "third class OverWeight";
                      }
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return Result(
                            changemaleColor,
                            changefemaleColor,
                            person,
                            height,
                            weight,
                            age,
                            bim = (weight ~/ ((height / 100) * (height / 100))),
                            fitness,
                          );
                        })
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
