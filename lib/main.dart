 import 'package:flutter/material.dart';
void main(){
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override

  Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
     title: const Text('Home'),
       centerTitle: true,
       backgroundColor: Colors.green,
     ),
     body: Center(
       child: Column(
         children: [
           SizedBox(
             height: 100,
            // width: 100,
           ),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.red,
              // foregroundBuilder: Colors.white,
               textStyle: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.w800,
               ),

               //padding: EdgeInsets.only(top: 100,bottom: 100,left: 100,right: 100),//only,all,symmetric
               padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),

               shadowColor: Colors.yellow,
               elevation: 5,// 
               
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(0),// any integer number
                // side: BorderSide(color: Colors.black,width: 4)

               ),
               side: BorderSide(color: Colors.black,width: 4),
               minimumSize: Size(100, 100),
               maximumSize: Size(200, 100),

             ),
             onPressed: (){
                print('Tap on elevated Button ');
             },
               child:const Text('Tap'),

           ),
           SizedBox(
             height: 16,
           ),

           TextButton(
                style: TextButton.styleFrom(
                 // backgroundColor: Colors.green,
                ),
               onPressed:(){
                  print('Tapped Text button ');
               } ,
               child: Text('Tap Here')
           ),
           SizedBox(height: 16),


           IconButton(
             style: IconButton.styleFrom(
             ),
               onPressed: (){
                 print('Tapped Icon Button ');
               },
               icon:Icon(Icons.add),
           ),
           SizedBox(height: 16),
           OutlinedButton(
             style: OutlinedButton.styleFrom(
               backgroundColor: Colors.black,
               foregroundColor: Colors.pink,
             ),
               onPressed:(){
                 print('Tapped Outlined button ');
               },
               child: Text('Tapped Here'),
           ),

           GestureDetector(
             onTap: (){
               print('just one tap');
             },
             onDoubleTap: (){
               print('Just Doubel tap');
             },
             onLongPress: (){
               print("on long Press");
             },
             onLongPressCancel: (){
               print("On long press cancle");
             },
             onLongPressEnd: (details){
               print("On Long press End");
             },
             child: Column(
               children: [
                 Text('Simple Text'),
                 Text('Simple Text'),
                 Text('Simple Text'),
                 Text('Simple Text'),
               ],
             ),
           ),
           InkWell(
             splashColor: Colors.green,// button color after effect
             onTap: (){
               print("Ink Well");
             },
             child:Text('Behave like Button '),
           )
         ],
       ),
     ),  
       
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child:Icon(Icons.add),
       
       ),
     );
  }
}
