
import 'package:flexible_expanded/message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int countNum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Counting Point : $countNum',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: FloatingActionButton.extended(onPressed: (){
                    countNum=countNum+1;
                    if(countNum==5){
                        showDialog(context: context, builder: (context)=>AlertDialog(
                          title: Text('Alert Message'),
                          content: Text('You have reached $countNum !'),
                          actions: [
                           Row(
                             children: [
                               ElevatedButton(onPressed: (){
                                 Navigator.pop(context);
                               }, child: Text('Cancel')),
                               SizedBox(width: 30),
                               ElevatedButton(onPressed: (){
                                 Navigator.pop(context);
                               }, child: Text('OK')),
                             ],
                           )
                          ],
                        ));
                    }else if(countNum==10){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Message()));
                    }
                    setState(() {

                    });
                  }, label: Text('Increment'),
                  backgroundColor: Colors.green,
                  ),
                ),
              )
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: FloatingActionButton.extended(onPressed: (){
                        countNum>0? countNum=countNum-1: countNum=0;
                        setState(() {

                        });
                      }, label: Text('Decrement'),
                      backgroundColor: Colors.redAccent,
                      ),
                    ),
                  )
              ),

            ],
          )
        ],
      ),
    );
  }
}
