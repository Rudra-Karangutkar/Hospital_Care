import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:health_care/pages/book_opd.dart';
import 'package:health_care/pages/opd.dart';
import 'package:health_care/widgets/widgets_support.dart';

class HistoryOpd extends StatefulWidget {
  const HistoryOpd({super.key});

  @override
  State<HistoryOpd> createState() => _HistoryOpdState();
}

class _HistoryOpdState extends State<HistoryOpd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xfffffde7),
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
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Opd()));
            },
            child: Container(
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
              'History OPD',
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
                color: Colors.grey.shade100,
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
                        'Complete/Cancle',
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
