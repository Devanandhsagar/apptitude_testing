import 'package:flutter/material.dart';
class agesanswer6 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer6({Key? key,}) : super(key: key);

  @override
  State<agesanswer6> createState() => _agesanswer6State();
}

class _agesanswer6State extends State<agesanswer6> {
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
            children:[ SizedBox(height: 30,),Text('6)  Given 2 persons ratio and n years after 2 person  ratio and find the difference ?'),
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
                  label: Text('Enter the n Years after'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
                decoration: InputDecoration(
                  label: Text('Enter the ratio years after person_1'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: e,
                decoration: InputDecoration(
                  label: Text('Enter the ratio years after person_2'),
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
                    result = "lets equation =   $num5 ($num1 * x + $num3) = $num4($num2 * x + $num3)\n"
                        ">> ($num5 * $num1 * x) - ($num4 * $num2 * x) = ( $num4 * $num3 - $num3 * $num5 )\n"
                        ">> ${(num5 * num1) - (num4 * num2)} * x = ${(num4 * num3)-(num3 *num5)}\n"
                        "Value of x = ${(num5 * num1) - (num4 * num2)}/ ${(num4 * num3)-(num3 *num5)} \n"
                        "x = ${((num4 * num3)-(num3 *num5))/((num5 * num1) - (num4 * num2))} \n"
                        "person_1 age = $num1 * x = ${(num1*(((num4 * num3)-(num3 *num5))/((num5 * num1) - (num4 * num2))))}\n"
                        "person_2 age = $num2 * x = ${(num2*(((num4 * num3)-(num3 *num5))/((num5 * num1) - (num4 * num2))))}/n"
                        "persons difference = ${((num1*(((num4 * num3)-(num3 *num5))/((num5 * num1) - (num4 * num2)))) - (num2*(((num4 * num3)-(num3 *num5))/((num5 * num1) - (num4 * num2))))).abs() }";
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
