import 'package:apptitude_test/Ages.dart';
import 'package:apptitude_test/Average.dart';
import 'package:apptitude_test/Percentage.dart';
import 'package:apptitude_test/races.dart';
import 'package:apptitude_test/stocks.dart';
import 'package:flutter/material.dart';
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                appBar: AppBar(  centerTitle: true,
                title: const Text('Aptitude Topics'),
                ),
      body: Column(
        children: [
          Container(alignment: Alignment.center,margin: const EdgeInsets.only(top: 100),
            child: MaterialButton( 
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Ages()));
              }, shape: const BeveledRectangleBorder(),height: 50,minWidth: 150,
            color: Colors.grey[300], child: const Text('Ages',),
            ),
         ), SizedBox(height: 20,),
          MaterialButton(    onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>Average()));
          }, shape: BeveledRectangleBorder(),height: 50,minWidth: 150,
                        color: Colors.grey[300], child: const Text('Average',),
          ),SizedBox(height: 20,),
        MaterialButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>Races()));
        } ,shape: const BeveledRectangleBorder(),height: 50,minWidth: 150,color: Colors.grey[300], child: const Text('Races and games'))
        ,SizedBox(height: 20,),
           MaterialButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)=>Stocks()));
           } ,shape: const BeveledRectangleBorder(),height: 50,minWidth: 150,color: Colors.grey[300], child: const Text('Stocks and Shares'))
        ,SizedBox(height: 20,),
           MaterialButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)=>Percentage()));
           } ,shape: const BeveledRectangleBorder(),height: 50,minWidth: 150,color: Colors.grey[300], child: const Text('Percentage'))

        ],
      )
    );
  }
}
