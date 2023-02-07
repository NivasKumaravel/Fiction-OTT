import 'package:fictionott/Fiction%20OTT/Personal%20info.dart';
import 'package:fictionott/Fiction%20OTT/loginpage.dart';
import 'package:fictionott/color.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(

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

Row(children: [
  SizedBox(height: 80,
  width: 40,),
  IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
  },
      icon:const Icon(Icons.arrow_back,color: Colors.white,),
  ),
],),
              SizedBox(height: 200,),
              Column(

                children: [

                  Row(
                    children: [
                      SizedBox(width: 85,),
                      Text('Verification code',style: OTP,),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 85,),
                      Text('Please enter 4- digit verification code',style: OTPH,),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 68,
                    width: 64,
                    child: Container(
                      child: TextFormField(onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },

                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "0",
                          hintStyle: LST,
                          enabledBorder:OutlineInputBorder(borderSide: BorderSide(width:2,color: Colors.blue,),),
                        ),

                       style: TextStyle(color: Colors.white,fontSize: 18),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],

                      ),
                    ),
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 68,
                      width: 64,
                      child: Container(
                        child: TextFormField(onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "0",
                            hintStyle: LST,
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(width:2,color: Colors.blue,),),
                          ),

                          style: TextStyle(color: Colors.white,fontSize: 18),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 68,
                      width: 64,
                      child:
                      Container(
                        child:

                        TextFormField(onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "0",
                            hintStyle: LST,
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(width:2,color: Colors.blue,),),
                          ),

                          style: TextStyle(color: Colors.white,fontSize: 18),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 68,
                      width: 64,
                      child: Container(
                        child: TextFormField(onChanged: (value){
                          if(value.length==1){
                            FocusScope.of(context).nextFocus();
                          }
                        },

                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "0",
                            hintStyle: LST,
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(width:2,color: Colors.blue,),),
                          ),

                          style: TextStyle(color: Colors.white,fontSize: 18),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],

                        ),
                      ),
                    ),
                  ),


              ],),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text("The OTP expired in",style: TextStyle(fontSize:18,color:
                  Colors.white),),
                  SizedBox(
                    height: 10,
                  ),
                  TweenAnimationBuilder(
                      tween: Tween(begin: 30.0,end: 0),
                      duration: Duration(seconds: 30),
                      builder: (context,value,child)=> Text("00:${value.toInt()}",style:
                        TextStyle(color: Colors.orange,fontSize: 15),),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Resend OTP",style: OTPR,),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(width: 16,),
                  Container(
                    height: 60,
                    width: 200,
                    child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("CONTINUE",style: BT,),
                          Icon(Icons.arrow_forward_ios,size: 15,),
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>personal()));
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
