import 'package:better_player/better_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../color.dart';



class movielist1 extends StatefulWidget {
  const movielist1({Key? key}) : super(key: key);

  @override
  State<movielist1> createState() => _movielist1State();
}

class _movielist1State extends State<movielist1> {
  CarouselController _carouselController = new CarouselController();
  int _current = 0;
  List<dynamic> _movies = [
    {
      'title': 'Avatar',
      'image': 'assets/ch1.png',
      'description': 'Avatar'
    },
    {
      'title': 'Justice League',
      'image': 'assets/ch2.png',
      'description': 'Justice League'
    },
    {
      'title': 'Batman',
      'image': 'assets/ch3.png',
      'description': 'Batman'
    },
    {
      'title': 'End Game',
      'image': 'assets/ch4.png',
      'description': 'End Game'
    },
    {
      'title': 'How To Train Dragon',
      'image': 'assets/ch5.png',
      'description': 'How To Train Dragon'
    },
    {
      'title': 'Bad Batch',
      'image': 'assets/ch6.png',
      'description': 'Bad Batch'
    },
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(onPressed:(){
            Navigator.pop(context);
          } ,
            icon: Icon(Icons.arrow_back),),

          backgroundColor: Colors.black,
        ),
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
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(_movies[_current]['image'], fit: BoxFit.cover),
              // Positioned(
              //   top: 0,
              //   left: 0,
              //   right: 0,
              //   bottom: 0,
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.3,
              //
              //   ),
              // ),
              Positioned(
                bottom: 50,
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 500.0,
                    aspectRatio: 16/9,
                    viewportFraction: 0.70,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  carouselController: _carouselController,

                  items: _movies.map((movie) {
                    return Builder(
                      builder: (BuildContext context) {
                        return
                          GestureDetector(
                          onTap: (){
                            showModalBottomSheet(isScrollControlled:true,context: context,
                              builder: (context)
                              {
                                return
                                  Container(
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
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                child:
                                                AspectRatio(
                                                  aspectRatio: 16 / 9,
                                                  child:
                                                  BetterPlayer.network( "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                                                    betterPlayerConfiguration: BetterPlayerConfiguration(
                                                        aspectRatio: 16/9
                                                    ),),

                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(
                                                  height:120,
                                                  width:80,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/ch1.png'),
                                                        fit: BoxFit.cover,
                                                      )
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              RichText(text:
                                              TextSpan(
                                                text:'Resident Evil\n',style: btmsht,
                                                children: [
                                                  TextSpan(text: 'Horror \n',style: btmshtl1),
                                                  TextSpan(text: '2015 . U/A 18+ \n',style: btmshtl2),

                                                ],
                                              ),

                                              ),

                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            children: [
                                              ReadMoreText(
                                                'A special military unit fights a powerful, out-of-control supercomputer and hundreds of scientists',
                                                trimLines: 1,
                                                trimMode: TrimMode.Line,
                                                trimCollapsedText: 'and more,',
                                                trimExpandedText: 'Show less',
                                                moreStyle: TextStyle(
                                                    fontSize: 14, fontWeight: FontWeight.bold,color: Colors.cyan),
                                                style: readmr,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Text('Milla Jovovich,Colin Salmon,Martin Crewes',
                                                style: cstcrw,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8,),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(
                                                  height:50,
                                                  width:138,
                                                  child: ElevatedButton(
                                                      style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.black45),
                                                      onPressed:(){},
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.download),
                                                          SizedBox(width: 10,),
                                                          Text("Dowmload",style: btnclr,),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(
                                                  height:50,
                                                  width:138,
                                                  child: ElevatedButton(
                                                      style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.black45),
                                                      onPressed:(){},
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.add_box_outlined),
                                                          SizedBox(width: 10,),
                                                          Text("Watchlist",style: btnclr,),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Container(
                                                  height:50,
                                                  width:138,
                                                  child: ElevatedButton(
                                                      style:
                                                      ElevatedButton.styleFrom(
                                                          primary: Colors.black45),
                                                      onPressed:(){},
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.mobile_screen_share),
                                                          SizedBox(width: 10,),
                                                          Text("Share",style: btnclr,),
                                                        ],
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5.0),
                                              child: SingleChildScrollView(

                                                child: Container(
                                                  height: 420,
                                                  width:450,
                                                  child: ListView.builder(

                                                    itemCount: HCAR.length,
                                                    shrinkWrap: false,

                                                    itemBuilder: (BuildContext context,index)
                                                    {
                                                      return
                                                        Container(
                                                          margin: EdgeInsets.all(5),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(5),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:200,
                                                                  width: 120,
                                                                  child: Image(image: AssetImage(HCAR[index].image),width: 190,
                                                                    fit: BoxFit.cover,),
                                                                ),
                                                                SizedBox(width: 10,),
                                                                RichText(text:
                                                                TextSpan(
                                                                  text:HCAR[index].text,style: btmsht,
                                                                  children: [
                                                                    TextSpan(text: '\nHorror \n',style: btmshtl1),
                                                                    TextSpan(text: '2015 . U/A 18+ \n',style: btmshtl2),
                                                                  ],
                                                                ),
                                                                ),
                                                                Spacer(),
                                                                Icon(Icons.play_circle_fill,
                                                                  color:Colors.cyan.shade300,
                                                                  size: 50,)
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                      ],
                                    ),
                                  );
                              },
                            );
                          },
                       child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 320,
                                      margin: EdgeInsets.only(top: 30),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(movie['image'], fit: BoxFit.cover),
                                    ),
                                    SizedBox(height: 20),
                                    Text(movie['title'], style:
                                    TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    // rating
                                    SizedBox(height: 20),
                                    Container(
                                      child: Text(movie['description'], style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey.shade600
                                      ), textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    AnimatedOpacity(
                                      duration: Duration(milliseconds: 500),
                                      opacity: _current == _movies.indexOf(movie) ? 1.0 : 0.0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.star, color: Colors.yellow, size: 20,),
                                                  SizedBox(width: 5),
                                                  Text('4.5', style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey.shade600
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.access_time, color: Colors.grey.shade600, size: 20,),
                                                  SizedBox(width: 5),
                                                  Text('2h', style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey.shade600
                                                  ),)
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.2,
                                              child: Row(
                                                children: [
                                                  Icon(Icons.play_circle_filled, color: Colors.grey.shade600, size: 20,),
                                                  SizedBox(width: 5),
                                                  Text('Watch', style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey.shade600
                                                  ),)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class car{

  late final image;
  late final text;


  car(this.image,this.text);

}
List HCAR = modelData.map((e) => car(e['image'],e['text'])).toList();
var modelData = [
  {"image":'assets/ch1.png','text':"Avatar"},
  {"image":'assets/ch2.png','text':"Justice League"},
  {"image":'assets/ch3.png','text':"Batman"},
  {"image":'assets/ch4.png','text':"End Game"},
  {"image":'assets/ch5.png','text':"How to Train Dragon"},
  {"image":'assets/ch6.png','text':"Bad Batch"},
];