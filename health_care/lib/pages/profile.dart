import 'package:flutter/material.dart';
import 'package:health_care/widgets/widgets_support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
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



class _ProfileState extends State<Profile> {
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
              child: Column(
                children: [
                  AppProfileInfo(),
                  widgetRecommendedSettingMain()
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
      // color: Colors.blue,
      padding: EdgeInsets.only(top: 40, right: 20, bottom: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Profile()));
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
              'MyProfile',
              style: AppWidget.boldSize25TextStyle(),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.exit_to_app,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }

  Widget AppProfileInfo() {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 30),
              width: MediaQuery.of(context).size.width,
              child: widgetMyProfileMain())
        ],
      ),
    );
  }

  Widget widgetMyProfileMain() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.red,
            backgroundImage:
                AssetImage('assets/images/profile.png'), // Image from assets
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Text(
            'UserName',
            style: AppWidget.boldSize25TextStyle(),
          ),
        ),
        Container(
          child: Text(
            'username123@gmail.com',
            style: AppWidget.semiBoldSize18TextStyle(),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: widgetRecommendedProfile(),
        )
      ],
    );
  }

  Widget widgetRecommendedProfile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width / 3.8,
          decoration: AppWidget.greenShadowBoxDecoration(),
          child: Column(
            children: [
              Container(
                child: Icon(Icons.edit_document),
              ),
              Container(
                child: Text(
                  'Edit',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width / 3.8,
          decoration: AppWidget.greenShadowBoxDecoration(),
          child: Column(
            children: [
              Container(
                child: Icon(Icons.history),
              ),
              Container(
                child: Text(
                  'History',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width / 3.8,
          decoration: AppWidget.greenShadowBoxDecoration(),
          child: Column(
            children: [
              Container(
                child: Icon(Icons.wallet),
              ),
              Container(
                child: Text(
                  'Wallet',
                  style: AppWidget.semiBoldSize20TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget widgetRecommendedSettingMain(){
    return Container(
      child: widgetRecommendedProfileSetting()
    );
  }

  Widget widgetRecommendedProfileSetting(){
    return Column(
        children: [
          Container(
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(bottom: 20,top: 30),
            child: Row(
              children: [
                Container(
                  decoration: AppWidget.lightgreenShadowBoxDecoration(),
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.document_scanner_rounded,size: 35,),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Records', style: AppWidget.semiBoldSize20TextStyle(),),
                      ),
                      Container(
                        child: Text('Edit Records', style: AppWidget.semiBoldSize16TextStyle(),),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.arrow_right_rounded, size: 70,),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  decoration: AppWidget.lightgreenShadowBoxDecoration(),
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.notifications,size: 35,),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Notification', style: AppWidget.semiBoldSize20TextStyle(),),
                      ),
                      Container(
                        child: Text('Silent Notification', style: AppWidget.semiBoldSize16TextStyle(),),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.arrow_right_rounded, size: 70,),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  decoration: AppWidget.lightgreenShadowBoxDecoration(),
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.settings,size: 35,),
                ),
                SizedBox(width: 20,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Setting', style: AppWidget.semiBoldSize20TextStyle(),),
                      ),
                      Container(
                        child: Text('Privacy, Dark Mode', style: AppWidget.semiBoldSize16TextStyle(),),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.arrow_right_rounded, size: 70,),
                ),
              ],
            ),
          ),
        ],
      );
  }


}
