import 'package:flutter/material.dart';
import 'package:health_care/pages/emergency.dart';
import 'package:health_care/pages/hospitaldetails.dart';
import 'package:health_care/pages/profile.dart';
import 'package:health_care/pages/specializationdetails.dart';
import 'package:health_care/widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
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




class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 243, 248),
      body: Column(
        children: [
          // AppBar
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            child: AppBarMain(),
          ),
          // Remaining content like map and draggable sheet
          Expanded(
            child: Stack(
              children: [
                // Background Image (Map or Placeholder)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                ),
                // Map Text (or a map widget)
                Positioned.fill(
                  child: Center(
                    child: Text(
                      'Map or Map-like Text Here',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // Swipe-up DraggableScrollableSheet
                DragScrollingPage()
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Custom AppBarMain Widget
  Widget AppBarMain() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage(
                    'assets/images/profile.png'), // Image from assets
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Text(
              'SwasthSetu',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Container(
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }

  // DraggableScrollableSheet widget for swipe-up feature
  Widget DragScrollingPage() {
    return DraggableScrollableSheet(
      initialChildSize: 0.15,
      minChildSize: 0.15,
      maxChildSize: 0.95,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 10,
                offset: Offset(0, -5),
              ),
            ],
          ),
          child: ListView(
            controller: scrollController,
            children: [
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16, bottom: 15),
                      child: Text(
                        'Hello Name,',
                        style: AppWidget.boldSize25TextStyle(),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Emergency()));
                      },
                      child: Container(
                          margin:
                              EdgeInsets.only(left: 16, bottom: 15, right: 16),
                          padding: EdgeInsets.only(
                              top: 12, bottom: 12, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Emergency',
                            style: AppWidget.boldSize12TextStyle(),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 4),
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 242, 242, 242),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Hospital',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.black12,
              ),
              Expanded(child: RecommendedHomePageMain()),
            ],
          ),
        );
      },
    );
  }

  Widget RecommendedHomePageMain() {
    return Container(
      height: 520,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Specializations:',
                    style: AppWidget.boldSize20TextStyle(),
                  ),
                ),
                Container(
                  height: 242,
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
                                  builder: (context) =>
                                      SpecializationDetails()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 236, 242, 254),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 132,
                                width: 257,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20)),
                                  color: Colors.grey.shade100,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/hospital1.png'), // Your image
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  // color: Colors.black,
                                  width: 227,
                                  child: Text(
                                    'Cardiology',
                                    style: AppWidget.semiBoldSize20TextStyle(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                              Container(
                                  margin: EdgeInsets.only(left: 15),
                                  // color: Colors.black,
                                  width: 227,
                                  child: Text(
                                    'Heart and blood vessel care. This is for You',
                                    style: AppWidget.semiBoldSize18TextStyle(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'See all',
                      style: AppWidget.semiBoldBlueSize20TextStyle(),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 242, 242, 242),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Recommended Hospital:',
                    style: AppWidget.boldSize20TextStyle(),
                  ),
                ),
                Container(
                  height: 190, //180
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
                              color: Color.fromARGB(255, 236, 242, 254),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 10),
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Text(
                                          'Hospital Name',
                                          style: AppWidget
                                              .semiBoldSize20HeightTextStyle(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 5),
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
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 5),
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
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 5),
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
                                        padding: EdgeInsets.only(
                                            left: 10, bottom: 5),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'See all',
                      style: AppWidget.semiBoldBlueSize20TextStyle(),
                    ),
                  ),
                ),
                Container(
                  height: 10,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 242, 242, 242),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
