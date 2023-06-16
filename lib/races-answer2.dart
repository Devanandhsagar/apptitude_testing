import 'package:flutter/material.dart';
class RacesAnswer2 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer2({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer2> createState() => _RacesAnswer2State();
}

class _RacesAnswer2State extends State<RacesAnswer2> {
  var a = TextEditingController();
  var b = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('2)  Given person_1 beats by person_2 in n meters and person_2 beats person_3 in n  meter ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter person_1 beats by person_2 in meters'),
            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter person_2 beats person_3 in meter'),
            ),
          ),
          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0, kilometer=1000;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                result = "person_1 : person_2 = $kilometer : ${kilometer-input1} \n"
                    "person_2 : person_3 = $kilometer : ${kilometer-input2}\n"
                    "person_1/person_3 = person_1/person_2 * person_2/person_3 = $kilometer / ${kilometer-input1} * $kilometer /${kilometer-input2} \n"
                    ">>$kilometer : ${kilometer/((kilometer/(kilometer-input1))*(kilometer/(kilometer-input2)))} \n"
                    "person_1 beats person_2 = $kilometer - ${kilometer/((kilometer/(kilometer-input1))*(kilometer/(kilometer-input2)))} = ${kilometer-(kilometer/((kilometer/(kilometer-input1))*(kilometer/(kilometer-input2))))} meters ";

              });
            }, child: const Text('Show/Hide' , style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold),) ,
          ),
          const SizedBox(height: 30,),
          Visibility(
            visible: show,
            child: Text('$result ',style: const TextStyle(fontWeight: FontWeight.bold),),
          ),


        ],
      ),
    );

  }
}
