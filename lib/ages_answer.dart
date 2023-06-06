import 'package:apptitude_test/ages_ans_1.dart';
import 'package:flutter/material.dart';
class agesanswer extends StatefulWidget {
  // final TextEditingController controller;
  const agesanswer({Key? key,}) : super(key: key);

  @override
  State<agesanswer> createState() => _agesanswerState();
}

class _agesanswerState extends State<agesanswer> {
    var a = TextEditingController();
    var b = TextEditingController();
    var c = TextEditingController();
    var d = TextEditingController();
    bool show = false;
    int result=0,num1=0,num2=0;


  @override
  Widget build(BuildContext context) {
      return Scaffold(appBar: AppBar(
      ),
        body: Container(
            child: Column(
          children: [
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
            controller: TextEditingController(),
            decoration: InputDecoration(
              label: Text('Enter the n Years after'),
            ),
          ),
            SizedBox(height: 20,),
          TextField(
            controller: TextEditingController(),
            decoration: InputDecoration(
              label: Text('Enter the ratio years after person_1'),
            ),
          ),
            SizedBox(height: 20,),
            TextField(
              controller: TextEditingController(),
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
                    result = num1+num2;
                    print(result);

                  });
               }, child: Text('Sumit' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
             ),

              Visibility(
                visible: show,
                child: Container(
                  child: Text('$result '),
                ),
              ),


          ],
        )),
      );

  }
}
