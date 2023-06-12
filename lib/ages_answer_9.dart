import 'package:flutter/material.dart';
class agesanswer9 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer9({Key? key,}) : super(key: key);

  @override
  State<agesanswer9> createState() => _agesanswer9State();
}

class _agesanswer9State extends State<agesanswer9> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  var e= TextEditingController();
  bool show = false;
  int num1=0,num2=0,num3=0,num4=0,num5=0;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Container(
          child: Column(
            children:[ SizedBox(height: 30,),Text('9)  Given two persons ratio and other two persons ratio and three persons sum and find the persent age three persons ?'),
              SizedBox(height: 30,),
              TextField(
                controller: a,
                decoration: InputDecoration(
                  label: Text('Enter the person_1 ratio'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: b,
                decoration: InputDecoration(
                  label: Text('Enter the person_2 ratio'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  label: Text('Enter the person_1 ratio'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
                decoration: InputDecoration(
                  label: Text('Enter the peerson_3 ratio'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: e,
                decoration: InputDecoration(
                  label: Text('Enter the  sum of three persons'),
                ),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    show=!show;
                    num1=int.parse(a.text);
                    num2=int.parse(b.text);
                    num3=int.parse(c.text);
                    num4=int.parse(d.text);
                    num5=int.parse(e.text);
                    result = "Person_1 and person_2 = $num1 : $num5  = 1 : ($num2/$num1)\n"
                        "person_1 and person_3 = $num3 : $num4 = 1 : ($num4/$num3)\n"
                        "x + ($num2/$num1) + ($num4/$num3) = $num5 \n"
                        "x = ${num5/(1+(num2/num1)+(num4/num3))} \n"
                        "person_1 age ${(num2/num1) * (num5/(1+(num2/num1)+(num4/num3)))}\n"
                        "person_2 age ${(num4/num3) * (num5/(1+(num2/num1)+(num4/num3)))}\n"
                        "person_3 age ${(num5/(1+(num2/num1)+(num4/num3)))}";
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
