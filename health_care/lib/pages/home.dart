import 'package:flutter/material.dart';
import 'package:health_care/pages/hospitaldetails.dart';
import 'package:health_care/pages/profile.dart';
import 'package:health_care/pages/specializationdetails.dart';
import 'package:health_care/widgets/widgets_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 254, 247, 255),
        child: Column(
          children: [
            Container(
              // App Bar Container
              // color: Colors.blue,
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: AppBarMain(),
            ),
            Container(
              // Body Container
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Specialization(),
                      RecommendedHospital(),
                      MapNearbyHospital(),
                    ],
                  ),
                ),
              ),
            ),
            Container(// Nav Bar Container

                ),
          ],
        ),
      ),
    );
  }

  Widget AppBarMain() {
    return Container(
      margin: EdgeInsets.only(top: 20, right: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
                backgroundImage:
                    AssetImage('assets/images/profile.png'), // Image from assets
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            child: Text(
              'Hello Rudra,',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black87, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget Specialization() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Specializations:',
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
              // This is the card widget for specialization
              margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  CardSpecialization(),
                  SizedBox(
                    width: 15,
                  ),
                  CardSpecialization(),
                  SizedBox(
                    width: 15,
                  ),
                  CardSpecialization(),
                  SizedBox(
                    width: 15,
                  ),
                  CardSpecialization(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget CardSpecialization() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SpecializationDetails()));
      },
      child: Container(
        decoration: AppWidget.whiteBorderShadowBoxDecoration(),
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100,
              ),
              margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
              child: Image.asset(
                'assets/images/heart.png',
                height: 140,
                width: 140,
                color: Colors.black,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Text(
              'Cardiology',
              style: AppWidget.semiBoldSize20TextStyle(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )),
            Container(
                width: 150,
                child: Text(
                  'Heart and blood vessel care',
                  style: AppWidget.semiBoldSize18TextStyle(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }

  Widget RecommendedHospital() {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      decoration: AppWidget.whiteBorderShadowBoxDecoration(),
      margin: EdgeInsets.only(top: 5),
      child: Column(
        children: [
          Container(
            // This is the information of widget
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: [
                Text(
                  'Recommended:',
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
          SizedBox(
            height: 10,
          ),
          Container(
            height: 250, // Height for the parent container
            child: ListView.builder(
              itemCount: 8, // Number of list items
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap:() {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => HospitalDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade50,
                          // color: Colors.red,
                        ),
                        height: 80, // Height for each item
                        width: double.infinity,
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
                                  image: AssetImage(
                                      'assets/images/hospital.jpg'), // Your image
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
                                    width:
                                        MediaQuery.of(context).size.width / 1.6,
                                    child: Text(
                                      'Hospital Name',
                                      style: AppWidget.semiBoldSize18TextStyle(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.6,
                                    child: Text(
                                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
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
                                Icons.more_vert,
                                size: 28,
                                color: Colors.black38,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    if (index > -2)
                      Divider(), // Divider between items (not after the last item)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget MapNearbyHospital() {
    return Container(
      decoration: AppWidget.whiteBorderShadowBoxDecoration(),
      width: MediaQuery.of(context).size.width,
      height: 350,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Nearby Hospital:',
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black38,
            ),
            height: 250,
            margin: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }

}
