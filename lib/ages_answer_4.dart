import 'dart:math';

import 'package:flutter/material.dart';
class agesanswer4 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer4({Key? key,}) : super(key: key);

  @override
  State<agesanswer4> createState() => _agesanswer4State();
}

class _agesanswer4State extends State<agesanswer4> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  bool show = false;
  int num1=0,num2=0,num3=0,num4=0,num5=0;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Container(
          child: Column(
            children:[ SizedBox(height: 30,),Text('4) Given two persons ratio and product and ages after n years'),
              SizedBox(height: 30,),
              TextField(
                controller: a,
                decoration: InputDecoration(
                  label: Text('Enter the present ratio person_1'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: b,
                decoration: InputDecoration(
                  label: Text('Enter the  persent ratio person_2'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  label: Text('Enter the product'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
                decoration: InputDecoration(
                  label: Text('Enter the after n years '),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    show=!show;
                    num1=int.parse(a.text);
                    num2=int.parse(b.text);
                    num3=int.parse(c.text);
                    num4=int.parse(d.text);
                    result = "person_1 age = $num1 * x\n"
                        "person_2 age = $num2 * x\n"
                        "person_1 * person_2 = $num3  =  ${num1*num2}*X**2 = $num3\n"
                        "value of x = ${sqrt(num3/(num1*num2))}\n"
                        "person_1 age after $num4 years  = ${(num1 * (sqrt(num3/(num1*num2))))+num4} \n"
                        "person_2 age after $num4 years = ${(num2 * (sqrt(num3/(num1*num2))))+num4}";
                    print(result);

                  });
                }, child: Text('Show/Hide' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
              ),
              SizedBox(height: 30,),
              Visibility(
                visible: show,
                child: Container(
                  child: Text('$result ',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),


            ],
          )),
    );

  }
}
