import 'package:carousel_slider/carousel_slider.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Adventure.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Horror.dart';
import 'package:fictionott/Fiction%20OTT/movie%20list1.dart';
import 'package:fictionott/Fiction%20OTT/video%20page/Triller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color.dart';
class hollywood extends StatefulWidget {
  const hollywood({Key? key}) : super(key: key);

  @override
  State<hollywood> createState() => _hollywoodState();
}

class _hollywoodState extends State<hollywood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          // leading: IconButton(onPressed:(){} ,
          //   icon: Icon(Icons.menu_sharp),),

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
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>movielist1()));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:
                      Container(
                        height: 250,
                        width: double.infinity,

                        child: CarouselSlider.builder(
                            itemCount:HCAR.length,

                            itemBuilder: (context,index, realIndex){
                              return Container(
                                height: double.infinity,
                                width: 465,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(HCAR[index].image),
                                      fit: BoxFit.cover,

                                    )
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



                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Recommended For You",style: actor,),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:HREC.length,
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
                                borderRadius: BorderRadius.circular(10),
                                child: Image(image: AssetImage(HREC[index].image1),width: 120,
                                  fit: BoxFit.cover,),
                              ),
                            );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>horror()));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Horror",style: actor,),
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
                          itemCount: HHOR.length,
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
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image(image: AssetImage(HHOR[index].image2),width: 190,
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>adventure()));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Adventures",style: actor,),
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
                          itemCount: HADV.length,
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
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image(image: AssetImage(HADV[index].image3),width: 190,
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Triller()));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Triller",style: actor,),
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
                          itemCount: HTRI.length,
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
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image(image: AssetImage(HTRI[index].image4),width: 190,
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
              SizedBox(height: 100,),

            ],
          ),
        ),
      ),
      ),
    );
  }
}
class car{

  late final image;


  car(this.image);

}
List HCAR = modelData.map((e) => car(e['image'])).toList();
var modelData = [
  {"image":'assets/ch1.png'},
  {"image":'assets/ch2.png'},
  {"image":'assets/ch3.png'},
  {"image":'assets/ch4.png'},
  {"image":'assets/ch5.png'},
  {"image":'assets/ch6.png'},
];

class rec{

  late final image1;


  rec(this.image1);

}
List HREC = modelData1.map((e) => rec(e['image1'])).toList();
var modelData1 = [
  {"image1":'assets/lr1.jpg'},
  {"image1":'assets/lr2.png'},
  {"image1":'assets/lr3.png'},
  {"image1":'assets/lr4.png'},
];

class hor{

  late final image2;


  hor(this.image2);

}
List HHOR = modelData2.map((e) => hor(e['image2'])).toList();
var modelData2 = [
  {"image2":'assets/lt1.jpg'},
  {"image2":'assets/lt2.png'},
  {"image2":'assets/lt3.png'},
  {"image2":'assets/lt4.png'},
  {"image2":'assets/lt5.png'},
  {"image2":'assets/lt6.png'},
];

class adv{

  late final image3;


  adv(this.image3);

}
List HADV = modelData3.map((e) => adv(e['image3'])).toList();
var modelData3 = [
  {"image3":'assets/la1.png'},
  {"image3":'assets/la2.png'},
  {"image3":'assets/la3.png'},
  {"image3":'assets/la4.png'},
  {"image3":'assets/la5.png'},
  {"image3":'assets/la6.png'},
];

class tri{

  late final image4;


  tri(this.image4);

}
List HTRI = modelData4.map((e) => tri(e['image3'])).toList();
var modelData4 = [
  {"image3":'assets/lh1.jpg'},
  {"image3":'assets/lh2.jpg'},
  {"image3":'assets/lh3.jpg'},
  {"image3":'assets/lh4.jpg'},
  {"image3":'assets/lh5.jpg'},
  {"image3":'assets/lh6.jpg'},
];