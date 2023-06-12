import 'package:flutter/material.dart';
class agesanswer3 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer3({Key? key,}) : super(key: key);

  @override
  State<agesanswer3> createState() => _agesanswer3State();
}

class _agesanswer3State extends State<agesanswer3> {
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
            children:[ SizedBox(height: 30,),Text('3)  Given Difference of two persons and n years ago 2 person ratio ?'),
              SizedBox(height: 30,),
              TextField(
                controller: a,
                decoration: InputDecoration(
                  label: Text('Enter the difference of two persons'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: b,
                decoration: InputDecoration(
                  label: Text('Enter the n years ago'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  label: Text('Enter  n years ago ratio of person_1'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
                decoration: InputDecoration(
                  label: Text('Enter  n years ago ratio of person_2'),
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
                    result = "Lets person_1 age = ($num3 * x + $num4) \n"
                        "person_2 age = ($num2 * x + $num4) \n"
                        "person_1 - person_2 = difference = ($num3 * x + $num4 - $num2 * x + $num4) = $num1 \n"
                        ">>  ${num3 -num2} * x = $num1 \n"
                        "Value of x = ${(num1/(num3 - num2))}\n"
                        " person_1 age = ${(num3)*(num1/(num3 - num2))}\n"
                        " person_2 age = ${(num4)*(num1/(num3 - num2))}\n";
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
