import 'package:flutter/material.dart';
class agesanswer5 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer5({Key? key,}) : super(key: key);

  @override
  State<agesanswer5> createState() => _agesanswer5State();
}

class _agesanswer5State extends State<agesanswer5> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  var e= TextEditingController();
  var f= TextEditingController();
  bool show = false;
  int num1=0,num2=0,num3=0,num4=0,num5=0,num6=0;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Container(
          child: Column(
            children:[ SizedBox(height: 30,),Text('5)  Given 2 persons ratio and n years after 2 person  ratio and n1 years ago age is  ?'),
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
              SizedBox(height: 20,),
              TextField(
                controller: f,
                decoration: InputDecoration(
                  label: Text('Enter age of n years ago'),
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
                    num6=int.parse(f.text);
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
