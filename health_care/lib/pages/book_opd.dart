import 'package:flutter/material.dart';
import 'package:health_care/pages/opd.dart';
import 'package:health_care/widgets/widgets_support.dart';
import 'package:table_calendar/table_calendar.dart';


class BookOpd extends StatefulWidget {
  const BookOpd({super.key});

  @override
  State<BookOpd> createState() => _BookOpdState();
}



// Color.fromARGB(255, 255, 255, 255) white
// Color.fromARGB(255, 236, 236, 244) dark white
// Color.fromARGB(255, 250, 249, 254) grey white
// Color.fromARGB(255, 242, 242, 242) light grey white
// Color.fromARGB(255, 240, 243, 248) light blue
// Color.fromARGB(255, 236, 242, 254) light blue button
// Color.fromARGB(255, 215, 227, 239) light blue button 2
// Color.fromARGB(255, 211, 227, 253) blue
// Color.fromARGB(255, 11, 87, 207) dark blue
// Color.fromARGB(255, 22, 88, 196) dark blue text
// Color.fromARGB(255, 76, 150, 99) green






class _BookOpdState extends State<BookOpd> {
  
  late Map<DateTime, List<String>> _events;
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
    _events = {
      DateTime.utc(2024, 9, 5): ['Appointment 1'],
      DateTime.utc(2024, 9, 15): ['Appointment 2'],
      // Add more events as needed
    };
  }

  List<String> _getEventsForDay(DateTime day) {
    return _events[day] ?? [];
  }


  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            Container(
              child: AppBarMain(),
            ),
            Container(
              child:  Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      AppCalendarMain(),
                      AppSlotsMain(),
                      AppAppointmentMain()
                    ],
                  ),
                ),
              ),
             ),
            )
          ],
        ),
      ),
    );
  }

  Widget AppBarMain() {
    return Container(
      color: Color.fromARGB(255, 240, 243, 248),
      padding: EdgeInsets.only(top: 40, right: 20, bottom: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Opd()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              'Book OPD',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }

  Widget AppCalendarMain() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
      padding: EdgeInsets.only(right: 20, left: 20, top: 10),
      decoration: AppWidget.buttonBorderShadowBoxDecoration(),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  'Calender Filter:',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: AppWidget.semiBoldSize18TextStyle(),
                )
              ],
            ),
          ),
          AppCalendar()
        ],
      ),
    );
  }

  Widget AppCalendar() {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 242, 242, 242), borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.only(right: 10, left: 10),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2040, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        eventLoader: _getEventsForDay,
        calendarStyle: CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
        ),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
        ),
      ),
    );
  }

  Widget AppSlotsMain() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  'Slots Filter:',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: AppWidget.semiBoldSize18TextStyle(),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20,bottom: 20),
              child: Row(
                children: [
                  AppSlots('6AM-8AM'),
                  AppSlots('8AM-10AM'),
                  AppSlots('11AM-12PM'),
                  AppSlots('12PM-2PM'),
                  AppSlots('2PM-4PM'),
                  AppSlots('4PM-6PM'),
                  AppSlots('6PM-8PM'),
                  AppSlots('8PM-10PM'),
                  AppSlots('10PM-12PM'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget AppSlots(time) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      decoration: AppWidget.buttonBorderShadowBoxDecoration(),
      padding: EdgeInsets.all(8),
      child: Text(
        '$time',
        style: AppWidget.semiBoldSize18TextStyle(),
      ),
    );
  }
  
  Widget AppAppointmentMain() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  'OPD Booking:',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
                Spacer(),
                Text(
                  'See More',
                  style: AppWidget.semiBoldSize18TextStyle(),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                AppAppointment(),
                AppAppointment(),
                AppAppointment(),
                AppAppointment(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget AppAppointment() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      decoration: AppWidget.buttonBorderShadowBoxDecoration(),
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/hospital.jpg'), // Your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text(
                    'Hospital Name',
                    style: AppWidget.semiBoldSize18TextStyle(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Text(
                    "Doctor Name\nCardiology Opd",
                    style: AppWidget.semiBoldSize16TextStyle(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.add,
              size: 28,
              color: Colors.black38,
            ),
          )
        ],
      ),
    );
  }

}