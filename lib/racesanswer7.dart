import 'package:flutter/material.dart';
class RacesAnswer7 extends StatefulWidget {
  // final TextEditingController controller;
  const RacesAnswer7({Key? key,}) : super(key: key);

  @override
  State<RacesAnswer7> createState() => _RacesAnswer7State();
}

class _RacesAnswer7State extends State<RacesAnswer7> {
  var a = TextEditingController();
  var b = TextEditingController();
  var c = TextEditingController();
  bool show = false;
  var result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    ),
      body: Column(
        children:[ const SizedBox(height: 30,),const Text('7)  Given distance person_1 defeated person_2 by n sec  and person_1 speed ?'),
          const SizedBox(height: 30,),
          TextField(
            controller: a,
            decoration: const InputDecoration(
              label: Text('Enter the distance'),

            ),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
            autofocus: true,
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: b,
            decoration: const InputDecoration(
              label: Text('Enter defeated in seconds'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: c,
            decoration: const InputDecoration(
              label: Text('Enter the person_1 speed'),
            ),
            // textInputAction: TextInputAction.next,
            // onSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),

          const SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              setState(() {
                show=!show;
                int input1=0,input2=0,input3=0;
                input1=int.parse(a.text);
                input2=int.parse(b.text);
                input3=int.parse(c.text);
                result = "person_1 speed = $input3 km/hr = ($input3 * 5/18) = ${input3*(5/18)} m/sec \n"
                    "Time taken person_1 cover $input1 = ($input1 * 1/${input3*(5/18)} = ${input1 * (1/(input3*(5/18)))} \n"
                    "Time taken to person_2 = (${input1 * (1/(input3*(5/18)))} + $input2 = ${(input1 * (1/(input3*(5/18))))+input2} \n"
                    "person_2 = $input1/${(input1 * (1/(input3*(5/18))))+input2} * 18/5 = ${(input1/((input1 /(1/(input3*(5/18))))+input2))*(18/5)}  km/hr";

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
