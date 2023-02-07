import 'package:fictionott/Fiction%20OTT/loginpage.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.black87,
                    ]
                ),
              ),
              child:
              Column(
               children: [
                 Container(
                   width: double.infinity,
                   decoration: BoxDecoration(
                       gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                           colors: [
                             Colors.blue,
                             Colors.black87,
                           ]
                       ),
                     borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                   ),
                   padding: EdgeInsets.all(20),
                   child:
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Find your",style: TextStyle(fontSize: 25,color: Colors.white),),
                       SizedBox(height: 5,),
                       Text("Favourite Language",style: TextStyle(fontSize: 40,color: Colors.black),),
                       SizedBox(height: 15,),
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                         ),
                         child: TextFormField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             prefixIcon: Icon(Icons.search,color: Colors.black87,),
                             hintText: "Search you're looking for",
                             hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
                 SizedBox(height: 5,),
                 Column(
                   children: [
                     Text("Choose your language",style: TextStyle(fontSize: 20,color: Colors.white),),
                     SizedBox(height: 15,),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 200,
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children:<Widget> [
                             promoCard('assets/tamil.png'),
                             promoCard('assets/malayalam.png'),


                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 200,
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children:<Widget> [
                             promoCard('assets/telugu1.png'),
                             promoCard('assets/kannada.png'),


                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 200,
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children:<Widget> [
                             promoCard('assets/english.png'),
                             promoCard('assets/hindi.png'),



                           ],
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     Container(
                       height: 60,
                       width: 450,
                       child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black26),),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("CONTINUE",style: BT,),
                             Icon(Icons.arrow_forward_ios,size: 15,),
                           ],
                         ),
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                         },),




                     ),
                   ],
                 ),

               ],
            ),
            ),


      ),
    );
  }
}
Widget promoCard(image){
  return AspectRatio(aspectRatio: 2.5/2.1,
  child:
  Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image)
      )
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.1,0.9],

            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
        ),
      ),

    ),
  ),
  );



}