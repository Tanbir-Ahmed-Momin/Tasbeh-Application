import 'package:flutter/material.dart';

void main() {
  runApp( multiverse());
}

class multiverse extends StatefulWidget {
  const multiverse({ Key? key }) : super(key: key);

  @override
  State<multiverse> createState() => _multiverseState();
}

class _multiverseState extends State<multiverse> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("তাসবিহ"),
          backgroundColor: Colors.green,
          ),
        body: Container(
          child: Center(
            child: Container(
              height: 750,
              width: 700,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                  child: Text("আস্তাগফিরুল্লাহ ",style: TextStyle(fontSize: 40),),
                ), 
                SizedBox(height: 50,),
                Text("$count",style: TextStyle(fontSize: 80),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    count = count + 1;
                  });
                 
                // print(count);
                }, child: Text("ADD",style: TextStyle(fontSize: 30),),
                style: ElevatedButton.styleFrom(
                     
              fixedSize:  Size(200, 200),
              shape:  CircleBorder(),
              primary: Colors.yellow, 
          ),
                ),
                 SizedBox(height: 50,
                 ),

               ElevatedButton(onPressed: (){
                 setState(() {
                   count= 0;
                 });
               }, 
                child: Text("Reset",style: TextStyle(fontSize: 30),),
                style: ElevatedButton.styleFrom(
                  
              fixedSize:  Size(200, 200),
              shape:  CircleBorder(), 
              primary: Colors.red,
          ),
                ),
              ],),
            ),
          )
          

        ),
          ), 
    );
  }
}