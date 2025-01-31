import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Maincontent extends StatelessWidget {
  Maincontent({super.key});

  final List<Map<String, dynamic>> creators = [
    {"name": "@maddison_c21", "artworks": 9821, "rating": 0.8, "image": "assets/random_user1.png"},
    {"name": "@karlwil02", "artworks": 7032, "rating": 0.6, "image": "assets/random_user2.png"},
    {"name": "@maddison_c21", "artworks": 9821, "rating": 0.8, "image": "assets/random_user1.png"},
    {"name": "@maddison_c21", "artworks": 9821, "rating": 0.8, "image": "assets/random_user2.png"},
  ];

  @override
  Widget build(BuildContext context) {
  
    return Container(
      color: Colors.grey[200],
      height: double.infinity,
      width: double.infinity,
      child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Top Section ....
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffa6a7a6)
                        ),
                      ),

                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 280,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Color(0xff2e293e),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color(0xff2e293e),
                              width: 5
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Text("Search", style: TextStyle(color: Colors.white, ),),

                              Icon(Icons.search, color: Colors.white,)

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20,),

                // Content Area .....
                Container(
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff55499d),
                            Color(0xffb776b1),
                            Color(0xfff7adad)
                          ]
                      ),
                      borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              "ETHEREUM 2.0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10
                              ),
                            ),

                            SizedBox(height: 2,),

                            SizedBox(
                              height: 70,
                              width: 100,
                              child: Text(
                                "Top Rating Project",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 40,
                              width: 220,
                              child: Text(
                                "Trending project and high rating Project Created by team.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),

                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                width: 120,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Color(0xff2e293e),
                                    borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Learn More.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                )
                              ),
                            ),

                          ],
                        ),
                      ),

                      Image.asset("assets/Home1.png", fit: BoxFit.cover, height: 300, width: 350,)

                    ],
                  ),
                ),

                SizedBox(height: 20,),

                // All Projects & Top Creators Section ....
                Row(
                  children: [

                    Container(
                      height: 280,
                      width: 330,
                      decoration: BoxDecoration(
                        color: Color(0xff131e43),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 18.0, top: 18),
                            child: Text(
                              "All Projects",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),

                          // First Container ....
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 6),
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffc23651),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      height: 35,
                                      width: 40,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/blockchain.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        SizedBox(height: 5,),

                                        Text(
                                          "Technology behind the Blockchain",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),

                                        Row(

                                          children: [

                                            Text(
                                              "Project#1",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "•",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "See project details",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  decoration: TextDecoration.underline,
                                                  decorationColor: Colors.white,
                                              ),
                                            ),

                                          ],
                                        )
                                      ],
                                    ),



                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.edit, color: Colors.white, size: 15,)
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),

                            ),
                          ),

                          SizedBox(height: 10,),

                          // Second Container ....
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff28325b),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/blockchain.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          "Technology behind the Blockchain",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),

                                        Row(

                                          children: [

                                            Text(
                                              "Project#1",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "•",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "See project details",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.white,
                                              ),
                                            ),

                                          ],
                                        )
                                      ],
                                    ),

                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.edit, color: Colors.white, size: 12,)
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),

                            ),
                          ),

                          SizedBox(height: 10,),

                          // Third Container ....
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 6),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff28325b),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12, top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                      height: 40,
                                      width: 40,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          "assets/blockchain.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: 10,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          "Technology behind the Blockchain",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500
                                          ),
                                        ),

                                        Row(

                                          children: [

                                            Text(
                                              "Project#1",
                                              style: TextStyle(
                                                  color: Colors.white54,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "•",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),

                                            SizedBox(width: 5,),

                                            Text(
                                              "See project details",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.white,
                                              ),
                                            ),

                                          ],
                                        )
                                      ],
                                    ),

                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.edit, color: Colors.white, size: 12,)
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              ),

                            ),
                          ),

                        ]
                      ),
                    ),

                    SizedBox(width: 20,),

                    Container(
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xff131e43),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [

                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff202f5b),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding: EdgeInsets.only(left: 18.0, top: 18),
                                    child: Text(
                                      "Top Creators",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                ),

                                SizedBox(height: 20,),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Name", style: TextStyle(color: Colors.white60, fontSize: 16),),
                                      Text("Artworks", style: TextStyle(color: Colors.white60, fontSize: 16),),
                                      Text("Rating", style: TextStyle(color: Colors.white60, fontSize: 16),),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),

                          SizedBox(height: 5,),

                          // Creator List
                          Column(
                            children: creators.map((creator) {
                              return Padding(

                                padding: const EdgeInsets.only(left: 10, right: 15, top: 10,),

                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [

                                    // Profile image and name
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(creator["image"]),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          creator["name"],
                                          style: TextStyle(color: Colors.white, fontSize: 14),
                                        ),
                                      ],
                                    ),

                                    // Artwork count
                                    Text(
                                      creator["artworks"].toString(),
                                      style: TextStyle(color: Colors.white, fontSize: 14),
                                    ),

                                    // Rating bar
                                    Container(
                                      width: 50,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: LinearProgressIndicator(
                                        value: creator["rating"],
                                        backgroundColor: Colors.white24,
                                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff665eaa)),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ),

                        ],
                      )
                    ),

                  ],
                ),

                SizedBox(height: 20,),

                // Graph Section .....
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xffe2def7),
                      width: 3
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            SizedBox(
                                height: 40,
                                width: 170,
                                child: Text(
                                    "Over All Performance The Years",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                    ),
                                ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Indicator(color: Color(0xffea8f95), text: "Pending Done"),
                                ),
                                SizedBox(width: 10),
                                Indicator(color: Color(0xff5041bc), text: "Project Done"),

                              ],
                            )


                          ],
                        ),

                        SizedBox(height: 15,),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: AspectRatio(
                              aspectRatio: 5,
                              child: LineChart(
                                LineChartData(
                                  titlesData: FlTitlesData(
                                    leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        getTitlesWidget: (value, meta) {
                                          return Text(
                                            (2015 + value.toInt()).toString(),
                                            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  gridData: FlGridData(show: false),
                                  borderData: FlBorderData(show: false),
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: [
                                        FlSpot(0, 30),
                                        FlSpot(1, 25),
                                        FlSpot(2, 20),
                                        FlSpot(3, 40),
                                        FlSpot(4, 15),
                                        FlSpot(5, 35),
                                      ],
                                      isCurved: true,
                                      color: Colors.pinkAccent,
                                      barWidth: 3,
                                      belowBarData: BarAreaData(show: false),
                                    ),
                                    LineChartBarData(
                                      spots: [
                                        FlSpot(0, 25),
                                        FlSpot(1, 20),
                                        FlSpot(2, 30),
                                        FlSpot(3, 35),
                                        FlSpot(4, 20),
                                        FlSpot(5, 30),
                                      ],
                                      isCurved: true,
                                      color: Colors.deepPurple,
                                      barWidth: 5,
                                      belowBarData: BarAreaData(
                                        show: true,
                                        gradient: LinearGradient(
                                          colors: [Colors.deepPurple.withOpacity(0.4), Colors.transparent],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ),
                                  ],
                                  extraLinesData: ExtraLinesData(
                                    extraLinesOnTop: true,
                                    horizontalLines: [
                                      HorizontalLine(
                                        y: 55,
                                        color: Colors.purple,
                                        strokeWidth: 2,
                                        label: HorizontalLineLabel(
                                          show: true,
                                          labelResolver: (line) => '55',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(top: 4),
                                          // backgroundColor: Colors.purple,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],

                    ),
                  ),
                ),


              ],
            ),
          ),
      ),
    );

  }

}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;

  const Indicator({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
              color: color,
              fontSize: 15,
              fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
