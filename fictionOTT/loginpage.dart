import 'package:better_player/better_player.dart';
import 'package:fictionott/Fiction%20OTT/OTP.dart';
import 'package:fictionott/Fiction%20OTT/Page%201.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../color.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()));
        },
          icon:const Icon(Icons.arrow_back,color: Colors.white,),
        ),
       backgroundColor: Colors.black87,

      ),
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
                Colors.blue.shade900,
              ]
          ),
        ),
        child: Column(

         children: [
SizedBox(height: 50,),
           Row(

             children: [
               Container(

                 child: Row(
                   children: [
                     SizedBox(width: 16,),
                     Text("Continue with mobile number",style:OT,),
                   ],
                 ),

               ),
             ],
           ),
           SizedBox(height: 20,),
           Row(
             children: [
               SizedBox(width: 16,),

               Container(
                 height: 100,
                 width: 400,
                 child: TextFormField(
                   decoration: InputDecoration(
                     border: UnderlineInputBorder(),

                       hintText: "+91 | Your mobile number",
                     hintStyle: LST,
                     enabledBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue,),),
                   ),
                   style: OT,

                 ),
               ),
             ],
           ),
           Row(
             children: [
               SizedBox(width: 16,),
               Container(
                 height: 60,
                 width: 450,
                 child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("CONTINUE",style: BT,),
                       Icon(Icons.arrow_forward_ios,size: 15,),
                     ],
                   ),
                   onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
                   },),




                 ),
             ],
           ),
           SizedBox(height: 10,),
           Row(
             children: [
               SizedBox(width: 40,),
               Text("By clicking continue,you agree to our",style: trm,),
               Text("Terms of Use",style: trmh,)
               ],
           ),
           SizedBox(height: 10,),
           Row(
             children: [
               SizedBox(width: 30,),
               Text("and acknowledge that you have read our",style: trm,),
               Text("Privacy Policy",style: trmh,)
             ],
           ),





         ],
        ),


      ),

    );
  }
}
