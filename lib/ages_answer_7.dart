import 'package:flutter/material.dart';
class agesanswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer7({Key? key,}) : super(key: key);

  @override
  State<agesanswer7> createState() => _agesanswer7State();
}

class _agesanswer7State extends State<agesanswer7> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  var d = TextEditingController();
  bool show = false;
  int num1=0,num2=0,num3=0,num4=0;
  var result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Container(
          child: Column(
            children:[ SizedBox(height: 30,),Text('7)  Given Average of two persons age  and n years after ratios.find the present age ?'),
              SizedBox(height: 30,),
              TextField(
                controller: a,
                decoration: InputDecoration(
                  label: Text('Enter the Average of two persons'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: b,
                decoration: InputDecoration(
                  label: Text('Enter the n Years after'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: c,
                decoration: InputDecoration(
                  label: Text('Enter the ratio years after person_1'),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: d,
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
                    result = "Result";
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
