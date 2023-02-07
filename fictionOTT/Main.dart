import 'package:carousel_slider/carousel_slider.dart';
import 'package:fictionott/Fiction%20OTT/movielist2.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Action%20movies.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Popular%20comedy%20movies.dart';

import 'package:fictionott/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';


class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          // leading: IconButton(onPressed:(){} ,
          // icon: Icon(Icons.menu_sharp),),
          flexibleSpace: Container(
            height: double.infinity,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo2.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          actions: [
            IconButton(onPressed:(){} ,
              icon: Icon(Icons.search_rounded),),
          ],
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
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
                accountName: Text('Peter'),
                accountEmail: Text('peter@gmail.com'),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/peter.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.download_for_offline_outlined,size: 30,color: Colors.yellowAccent.shade700,),
                  SizedBox(width: 30,),
                  Text("Download",style:GoogleFonts.roboto(textStyle: drw)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.add_task_outlined,size: 30,color: Colors.cyanAccent,),
                  SizedBox(width: 30,),
                  Text("Watch List",style:GoogleFonts.roboto(textStyle: drw)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.favorite,size: 30,color: Colors.red,),
                  SizedBox(width: 30,),
                  Text("Favourites",style:GoogleFonts.roboto(textStyle: drw)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.settings,size: 30,color: Colors.grey.shade500,),
                  SizedBox(width: 30,),
                  Text("Settings",style:GoogleFonts.roboto(textStyle: drw)),
                ],
              ),

            ],
          ),
        ),
        body:
        SingleChildScrollView(
          child: Container(
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
            child:
            Column(
              children: [
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>movielist2()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,

                        child: CarouselSlider.builder(
                            itemCount:BIMG.length,

                            itemBuilder: (context,index, realIndex){
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: double.infinity,
                                  width: 465,

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(BIMG[index].image1),
                                        fit: BoxFit.cover,

                                      )
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              aspectRatio:16/16,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                              viewportFraction: 1,
                              height: 300,
                              enlargeCenterPage: true,



                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Actors you like",style: actor,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Container(
                        height: 120,
                        child:
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: ACIMG.length,
                          itemBuilder: (BuildContext context,index)
                          {
                            return
                              Column(
                                children: [
                                  Container(

                                    width: 105,
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                         backgroundColor:Colors.cyan  ,
                                          radius: 46,
                                          child: CircleAvatar(
                                           backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(ACIMG[index].image2),
                                            radius: 45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5,),

                                  Text(ACIMG[index].text2,style:actlst),
                                ],
                              );



                          },
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Column(

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Popular comedy movies",style: actor,),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 200,

                        child:
                        ScrollSnapList(

                          itemBuilder:_buildListItem,
                          itemCount: CIMG.length,
                          itemSize: 300,
                          onItemFocus: (index){},
                          dynamicItemSize: true,

                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>action()));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Action movies",style: actor,),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 250,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: IMG.length,
                            shrinkWrap: true,

                            itemBuilder: (BuildContext context,index)
                            {
                              return
                                Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image(image: AssetImage(IMG[index].image),width: 190,
                                      fit: BoxFit.cover,),
                                  ),
                                );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>action()));
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Thriller movies",style: actor,),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 250,
                          child: ScrollLoopAutoScroll(
                            scrollDirection: Axis.horizontal,
                            child:
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: IMG.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,index)
                              {
                                return
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Image(image: AssetImage(IMG[index].image),width: 190,
                                        fit: BoxFit.cover,),
                                    ),
                                  );
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget _buildListItem(BuildContext context,int index){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>popular()));
    },
    child: SizedBox(
      width: 250,
      height: 100,
      child: Card(
        elevation: 12,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(CIMG[index].image3),
              fit: BoxFit.cover,

            )
          ),

        ),
      ),
    ),
  );

}
class movie{

  late final image;

  movie(this.image);

}
List IMG = modelData.map((e) => movie(e['image'])).toList();
var modelData = [
  {'image':'assets/a1.png'},
  {'image':'assets/a2.png'},
  {'image':'assets/a3.png'},
  {'image':'assets/a4.png'},
  {'image':'assets/a5.png'},
  {'image':'assets/a6.png'},
];

class banner{

  late final image1;

  banner(this.image1);

}
List BIMG = modelData1.map((e) => banner(e['image1'])).toList();
var modelData1 = [
  {'image1':'assets/aym.png'},
  {'image1':'assets/thunivu.png'},
  {'image1':'assets/darbar.jpeg'},
  {'image1':'assets/psp.jpeg'},
  {'image1':'assets/vikram.jpeg'},
  {'image1':'assets/dsp.jpeg'},
];

class act{

  late final image2;
  late final text2;

  act(this.image2,this.text2);

}
List ACIMG = modelData2.map((e) => act(e['image2'],e['text2'])).toList();
var modelData2 = [
  {'text2':'Ajith','image2':'assets/ajith.png'},
  {'text2':'Vijay','image2':'assets/vijay.png'},
  {'text2':'Rajini','image2':'assets/rajini.png'},
  {'text2':'Kamal','image2':'assets/kamal.jpg'},
  {'text2':'Surya','image2':'assets/surya.png'},
  {'text2':'Vikram','image2':'assets/vickram.png'},
  {'text2':'Trisha','image2':'assets/trisha.png'},
  {'text2':'Nayanthara','image2':'assets/nayan.png'},
  {'text2':'Smantha','image2':'assets/thamana.png'},

];

class cmdy{

  late final image3;


  cmdy(this.image3);

}
List CIMG = modelData3.map((e) => cmdy(e['image3'])).toList();
var modelData3 = [
  {"image3":'assets/c1.png'},
  {"image3":'assets/c2.png'},
  {"image3":'assets/c3.png'},
  {"image3":'assets/c4.png'},
  {"image3":'assets/c5.png'},
  {"image3":'assets/c6.png'},
];

