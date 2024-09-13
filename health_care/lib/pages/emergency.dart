import 'package:flutter/material.dart';
import 'package:health_care/pages/hospitaldetails.dart';
import 'package:health_care/widgets/widgets_support.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecefe8),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: AppBarMain(),
            ),
            Container(
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      AgeSelectionMain(),
                      DiscribeDiseaseMain(),
                      NearbyHospitalMain(),
                      SubmitInformationMain(),
                    ],
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
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Row(
        children: [
          Container(
            child: Text(
              'Emergancy',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Text(
                  'Call',
                  style: AppWidget.semiBoldSize16TextStyle(),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget AgeSelectionMain() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Select Age:',
              style: AppWidget.boldSize20TextStyle(),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey.shade200, // Background color for the box
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 3, // Spread of the shadow
                          blurRadius: 7, // Blur radius of the shadow
                          offset: Offset(0,
                              3), // Vertical and horizontal offset of the shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10), // Padding inside the container
                    child: Text(
                      '5-18 Age',
                      style: AppWidget
                          .semiBoldSize18TextStyle(), // Custom text style
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey.shade200, // Background color for the box
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 3, // Spread of the shadow
                          blurRadius: 7, // Blur radius of the shadow
                          offset: Offset(0,
                              3), // Vertical and horizontal offset of the shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10), // Padding inside the container
                    child: Text(
                      '18-25 Age',
                      style: AppWidget
                          .semiBoldSize18TextStyle(), // Custom text style
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey.shade200, // Background color for the box
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 3, // Spread of the shadow
                          blurRadius: 7, // Blur radius of the shadow
                          offset: Offset(0,
                              3), // Vertical and horizontal offset of the shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10), // Padding inside the container
                    child: Text(
                      '25-40 Age',
                      style: AppWidget
                          .semiBoldSize18TextStyle(), // Custom text style
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, top: 10, bottom: 20, right: 10),
                    decoration: BoxDecoration(
                      color:
                          Colors.grey.shade200, // Background color for the box
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // Shadow color
                          spreadRadius: 3, // Spread of the shadow
                          blurRadius: 7, // Blur radius of the shadow
                          offset: Offset(0,
                              3), // Vertical and horizontal offset of the shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10), // Padding inside the container
                    child: Text(
                      '40-100 Age',
                      style: AppWidget
                          .semiBoldSize18TextStyle(), // Custom text style
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget DiscribeDiseaseMain() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Discribe Proble:',
              style: AppWidget.boldSize20TextStyle(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Changes the position of the shadow
                ),
              ],
            ),
            child: TextField(
              maxLines: 8, // Allows multi-line input
              decoration: InputDecoration(
                hintText: 'Enter the details of the problem...',
                contentPadding: EdgeInsets.all(15),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget NearbyHospitalMain() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Recommended Hospital:',
              style: AppWidget.boldSize20TextStyle(),
            ),
          ),
          Container(
            height: 190, // 180
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Scroll horizontally
              itemCount: 10, // Number of cards
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HospitalDetail()));
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      width: MediaQuery.of(context).size.width / 1.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.only(left: 10, bottom: 10),
                                  // color: Colors.red,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: Text(
                                    'Hospital Name is place here You can see Hospital Name from here',
                                    style: AppWidget
                                        .semiBoldSize20HeightTextStyle(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          '3.7',
                                          style: AppWidget
                                              .semiBoldSize16TextStyle(),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.black54,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.black54,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '(287)',
                                          style: AppWidget
                                              .semiBoldSize16TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Government Hospital',
                                          style: AppWidget
                                              .semiBoldSize16TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Open24 hours',
                                          style: AppWidget
                                              .semiBoldSize16GreenTextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, bottom: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          '2.5 km',
                                          style: AppWidget
                                              .semiBoldSize16TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 15, right: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.call),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(Icons.directions),
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                );
              },
            ),
          )
        ]));
  }

  Widget SubmitInformationMain() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey, // Red background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 15), // Padding inside the button
              ),
              onPressed: () {
                // Your submit action here
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 35,right: 35),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white, // White text color
                    fontSize: 18, // Font size of the text
                    fontWeight: FontWeight.bold, // Bold font
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
