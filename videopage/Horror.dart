import 'package:better_player/better_player.dart';
import 'package:fictionott/Fiction%20OTT/Hollywood.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:readmore/readmore.dart';
import '../../color.dart';
class horror extends StatefulWidget {
  const horror({Key? key}) : super(key: key);

  @override
  State<horror> createState() => _horrorState();
}

class _horrorState extends State<horror> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:
          IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon:const Icon(Icons.arrow_back,color: Colors.white,),
          ),

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

          backgroundColor: Colors.black,
        ),
        body:
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
          child:
          AnimationLimiter(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              children: List.generate(HTRI.length, (index) {
                return AnimationConfiguration.staggeredGrid(
                    position: index,
                    columnCount: 2,
                    child:
                    ScaleAnimation(
                      duration: Duration(milliseconds: 1000),
                      child:
                      FadeInAnimation(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child:
                          Column(
                            children: [
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
                                                          image: AssetImage('assets/lt1.jpg'),
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

                                                        itemCount: HHOR.length,
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
                                                                      child: Image(image: AssetImage(HHOR[index].image2),width: 190,
                                                                        fit: BoxFit.cover,),
                                                                    ),
                                                                    SizedBox(width: 10,),
                                                                    RichText(text:
                                                                    TextSpan(
                                                                      text:HTRI[index].text,style: btmsht,
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
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 185,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(HTRI[index].image),
                                        fit: BoxFit.cover,
                                        
                                      )
                                    ),

                                    // color: Colors.black,

                                  ),
                                ),
                              ),
                              Text(HTRI[index].text,style: OTPH,),
                            ],
                          ),
                        ),
                      ),
                    )
                );
              }
              ),
            ),
          ),
        ),
      ),
    );


  }
}
class tri{

  late final image;
  late final text;



  tri(this.image,this.text);

}
List HTRI = modelData.map((e) => tri(e['image'],e['text'])).toList();
var modelData = [
  {"image":'assets/lt1.jpg',"text":"Tenet"},
  {"image":'assets/lt2.png',"text":"Conjuring"},
  {"image":'assets/lt3.png',"text":"Ring"},
  {"image":'assets/lt4.png',"text":"Evildead"},
  {"image":'assets/lt5.png',"text":"The Grudge"},
  {"image":'assets/lt6.png',"text":"Lights out"},
];