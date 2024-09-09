import 'package:flutter/material.dart';
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: AppBarMain(),
            ),
            Container(
              child: Column(
                children: [
                  AppNearByHospital(),
                ],
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

  Widget AppNearByHospital() {
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
                    Container(
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
                                      MediaQuery.of(context).size.width / 1.7,
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
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                            color: Colors.red, borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.call,
                              size: 25,
                              color: Colors.white,
                            ),
                          )
                        ],
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

}
