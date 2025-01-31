import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Rightsidebar extends StatefulWidget {
  const Rightsidebar({super.key});

  @override
  State<Rightsidebar> createState() => _RightsidebarState();
}

class _RightsidebarState extends State<Rightsidebar> {

  DateTime? _selectedDay ;
  DateTime _focusedDay = DateTime(2023, 6 , 1);
  DateTime? _rangeStart ;
  DateTime? _rangeEnd ;
  CalendarFormat _calendarFormat = CalendarFormat.month ;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.grey[200],
      // color: Colors.grey[500],
      height: double.infinity,
      width: double.infinity,
      child:  SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            Padding(
              padding: EdgeInsets.only(left: 15 , top: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [

                            IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/logo1.png", height: 40, width: 35,)
                            ),

                            IconButton(
                                onPressed: () {},
                                icon: Image.asset("assets/logo2.png", height: 25,)
                            ),

                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.power_settings_new_outlined, size: 25,)
                            ),

                          ],
                        ),

                        Image.asset("assets/man_logo.png", height: 40, width: 40,)

                      ],
                    ),

                  ],

                ),
              ),
            ),

            SizedBox(height: 5,),

            Container(
              height: 1000,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff19264b),
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0 , right: 8 , top: 20),
                child: Column(
                  children: [

                    Text(
                      "GENERAL 10:00 AM TO 7:00 PM",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                    ),

                    SizedBox(height: 10,),

                    Container(
                      margin: EdgeInsets.all(8), // Reduced outer margin
                      height: 250, // Slightly decreased height
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15), // Reduced padding
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEF0FF),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4), // Reduced padding
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'OCT',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5A55D2),
                                            fontSize: 10),
                                      ),
                                      Icon(Icons.keyboard_arrow_down, color: Color(0xFF5A55D2)),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 12), // Reduced space between month and year
                                Row(
                                  children: [
                                    Text(
                                      '2023',
                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 4), // Reduced vertical spacing
                            TableCalendar(
                              firstDay: DateTime.utc(2010, 1, 1),
                              lastDay: DateTime.utc(2030, 12, 31),
                              focusedDay: _focusedDay,
                              rangeStartDay: _rangeStart,
                              rangeEndDay: _rangeEnd,
                              selectedDayPredicate: (day) {
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                  _focusedDay = focusedDay;
                                });
                              },
                              onRangeSelected: (start, end, focusedDay) {
                                setState(() {
                                  _rangeStart = start;
                                  _rangeEnd = end;
                                  _focusedDay = focusedDay;
                                });
                              },
                              calendarFormat: _calendarFormat,
                              onFormatChanged: (format) {
                                setState(() {
                                  _calendarFormat = format;
                                });
                              },
                              headerVisible: false,
                              daysOfWeekStyle: DaysOfWeekStyle(
                                weekdayStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                weekendStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                              ),
                              calendarStyle: CalendarStyle(
                                todayDecoration: BoxDecoration(
                                  color: Color(0xFF5A55D2),
                                  shape: BoxShape.circle,
                                ),
                                selectedDecoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                rangeStartDecoration: BoxDecoration(
                                  color: Color(0xFF5A55D2),
                                  borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
                                ),
                                rangeEndDecoration: BoxDecoration(
                                  color: Color(0xFF5A55D2),
                                  borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
                                ),
                                withinRangeDecoration: BoxDecoration(
                                  color: Color(0xFFE0E7FF),
                                  shape: BoxShape.rectangle,
                                ),
                                outsideDaysVisible: false,
                                defaultTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                                weekendTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                                selectedTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                                rangeStartTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                                rangeEndTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                                withinRangeTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                                todayTextStyle: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
                                cellMargin: EdgeInsets.all(1), // Reduced cell margin
                              ),
                              startingDayOfWeek: StartingDayOfWeek.monday,
                              daysOfWeekVisible: true,
                              weekendDays: [DateTime.saturday, DateTime.sunday],
                              availableGestures: AvailableGestures.all,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 5,),

                    Container(
                      margin: EdgeInsets.all(8),
                      height: 312,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xff3c354a),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15), // Reduced padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 40,
                            width: double.infinity,
                            child: Stack(
                              children: [
                                
                                Positioned(
                                    child: Text(
                                      "✨",
                                      style: TextStyle(fontSize: 25,),)
                                ),
                                
                                Positioned(
                                    top: 10,
                                    left: 45,
                                    child: Text(
                                      "Today Birthday",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                ),

                                Positioned(
                                    top: 15,
                                    right: 1,
                                    child: Text(
                                      "✨",
                                      style: TextStyle(fontSize: 20,),)
                                ),

                              ],
                            ),

                          ),

                          SizedBox(height: 10,),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Stack(
                                children: [

                                  Container(
                                    width: 80,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xff614698),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                  
                                  Positioned(
                                      height: 70,
                                      width: 70,
                                      left: 6,
                                      top: 25,
                                      child: Image.asset("assets/rec1.png",)
                                  ),

                                  Positioned(
                                      height: 60,
                                      width: 60,
                                      left: 42,
                                      top:-2,
                                      child: Text("🎂", style: TextStyle(fontSize: 25),)
                                  ),

                                ],
                              ),

                              SizedBox(width: 10,),

                              Stack(
                                children: [

                                  Container(
                                    width: 80,
                                    height: 105,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xff614698),
                                        width: 4,
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                      height: 70,
                                      width: 70,
                                      left: 6,
                                      top: 20,
                                      child: Image.asset("assets/rec2.png",)
                                  ),

                                  Positioned(
                                      height: 60,
                                      width: 60,
                                      left: 42,
                                      top:-2,
                                      child: Text("🎂", style: TextStyle(fontSize: 25),)
                                  ),

                                ],
                              ),

                            ],
                          ),

                          SizedBox(height: 10,),

                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8),
                                child: Text(
                                  "Total",
                                  style: TextStyle(
                                    color: Color(0xff8577a8),
                                    fontSize: 25,
                                  ),
                                ),
                              ),

                              SizedBox(width: 40,),

                              Container(
                                width: 2,
                                height: 35,
                                color: Colors.grey,
                              ),

                              SizedBox(width: 15,),
                              
                              Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 15,),

                              Container(
                                width: 2,
                                height: 35,
                                color: Colors.grey,
                              ),

                            ],
                          ),
                          
                          SizedBox(height: 25,),
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ElevatedButton.icon(

                                onPressed: () {

                                },
                                icon: Image.asset("assets/send_logo.png", height: 25, width: 25, ),
                                label: Text("Birthday Wishing", style: TextStyle(color: Colors.white, fontSize: 16),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffb577f1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),

                                ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),

                    SizedBox(height: 5,),

                    Container(
                      margin: EdgeInsets.all(8),
                      height: 312,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xff3c354a),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(2, 4),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(15), // Reduced padding
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            height: 40,
                            width: double.infinity,
                            child: Stack(
                              children: [

                                Positioned(
                                    child: Text(
                                      "✨",
                                      style: TextStyle(fontSize: 25,),)
                                ),

                                Positioned(
                                  top: 10,
                                  left: 55,
                                  child: Text(
                                    "Anniversary",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),

                                Positioned(
                                    top: 15,
                                    right: 1,
                                    child: Text(
                                      "✨",
                                      style: TextStyle(fontSize: 20,),)
                                ),

                              ],
                            ),

                          ),

                          SizedBox(height: 10,),

                          Row(
                            children: [

                              Stack(
                                children: [

                                  Container(
                                    width: 65,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Color(0xff614698),
                                        width: 4,
                                      ),
                                    ),
                                  ),

                                  Positioned(
                                      left: 9,
                                      top: 28,
                                      child: SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset("assets/rec1.png")
                                      )
                                  ),

                                ],
                              ),

                              SizedBox(width: 10,),

                              Stack(
                                children: [

                                  Container(
                                    width: 65,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff4a435c),
                                    ),
                                  ),

                                  Positioned(
                                      left: 13,
                                      top: 30,
                                      child: SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset("assets/rec2.png")
                                      )
                                  ),

                                ],
                              ),

                              SizedBox(width: 10,),

                              Stack(
                                children: [

                                  Container(
                                    width: 65,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff4a435c),
                                    ),
                                  ),

                                  Positioned(
                                      left: 13,
                                      top: 30,
                                      child: SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: Image.asset("assets/rec2.png")
                                      )
                                  ),

                                ],
                              ),

                            ],
                          ),

                          SizedBox(height: 10,),

                          Row(
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8),
                                child: Text(
                                  "Total",
                                  style: TextStyle(
                                    color: Color(0xff8577a8),
                                    fontSize: 25,
                                  ),
                                ),
                              ),

                              SizedBox(width: 40,),

                              Container(
                                width: 2,
                                height: 35,
                                color: Colors.grey,
                              ),

                              SizedBox(width: 15,),

                              Text(
                                "3",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(width: 15,),

                              Container(
                                width: 2,
                                height: 35,
                                color: Colors.grey,
                              ),

                            ],
                          ),

                          SizedBox(height: 25,),

                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: ElevatedButton.icon(

                              onPressed: () {

                              },
                              icon: Image.asset("assets/send_logo.png", height: 25, width: 25, ),
                              label: Text("Anniversary Wishing", style: TextStyle(color: Colors.white, fontSize: 15),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffb577f1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );

  }
}
