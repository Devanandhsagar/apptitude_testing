import 'package:flutter/material.dart';
class agesanswer8 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer8({Key? key,}) : super(key: key);

  @override
  State<agesanswer8> createState() => _agesanswer8State();
}

class _agesanswer8State extends State<agesanswer8> {
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
            children:[ SizedBox(height: 30,),Text('8)  Given the person_1 age  n years ago is n times the  person_2 and n years hence and person_1 n of times the person_2 ?'),
              SizedBox(height: 30,),
              TextField(
                controller: a,
                decoration: InputDecoration(
                  label: Text('Enter n yeras ago'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: b,
                decoration: InputDecoration(
                  label: Text('Enter the  person_1 n times of person_2'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  label: Text('Enter the n Years hence'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
                decoration: InputDecoration(
                  label: Text('Enter person_1 equal no of times person_2 '
                ),
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
                    result = "Equation =   $num5  (  $num1  * x -   $num3   =  $num4  ( x -  $num3 ) \n"
                        ">> $num5 * $num1 * x  - $num5 * $num3 = $num4 * x - $num4 * $num3  \n"
                        ">>  ${num5*num1} * x - $num4 * x = ${num5*num3} - ${num4*num3} \n"
                        ">> ${(num5*num1)-num4} * x = ${(num5*num3)-(num4*num3)} \n"
                        ">> Value x = ${((num5*num3)-(num4*num3))/((num5*num1)-num4)}";
                    print(result);

                  });
                }, child: Text('Sumit' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
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
