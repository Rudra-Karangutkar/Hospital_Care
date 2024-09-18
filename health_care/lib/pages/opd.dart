import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_care/pages/book_opd.dart';
import 'package:health_care/pages/history_opd.dart';
import 'package:health_care/widgets/widgets_support.dart';

class Opd extends StatefulWidget {
  const Opd({super.key});

  @override
  State<Opd> createState() => _OpdState();
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





class _OpdState extends State<Opd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(
          children: [
            Container(
              // App Bar Container
              // color: Colors.blue,
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: AppBarMain(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [AppBookedOpdMain()],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget AppBarMain() {
    return Container(
      color: Color.fromARGB(255, 240, 243, 248),
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BookOpd()));
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              'OPD',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HistoryOpd()));
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.history,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget AppBookedOpdMain() {
    return Container(
      padding: EdgeInsets.only(bottom: 30,top: 20),
      child: Column(
        children: [
          AppBookedOpd(),
          AppBookedOpd(),
          AppBookedOpd()
        ],
      ),
    );
  }

  Widget AppBookedOpd() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10,bottom: 20),
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      decoration: AppWidget.whiteBorderShadowBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    backgroundImage: AssetImage(
                        'assets/images/profile.png'), // Image from assets
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          'Doctor Name',
                          style: AppWidget.semiBoldSize20TextStyle(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          'Cardiology Department',
                          style: AppWidget.semiBoldSize18TextStyle(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 249, 254),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Date: ',
                          style: AppWidget.boldSize16TextStyle(),
                        ),
                      ),
                      Container(
                        child: Text(
                          ' Monday, Sep 15, 2024',
                          style: AppWidget.semiBoldSize16TextStyle(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Time: ',
                          style: AppWidget.boldSize16TextStyle(),
                        ),
                      ),
                      Container(
                        child: Text(
                          '10:30 AM',
                          style: AppWidget.semiBoldSize16TextStyle(),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: RichText(
                            text: TextSpan(
                              text: 'Hospital:', // Default style
                              style: AppWidget.boldSize16TextStyle(),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'XYZ Hospital, Room 12B, OPD Floor',
                                  style: AppWidget.semiBoldSize16TextStyle(),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Container(
                      child: Text(
                        'Status: ',
                        style: AppWidget.boldSize16TextStyle(),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Pending',
                        style: AppWidget.semiBoldSize16TextStyle(),
                      ),
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
