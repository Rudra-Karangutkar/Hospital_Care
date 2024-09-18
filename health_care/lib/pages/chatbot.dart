import 'package:flutter/material.dart';
import 'package:health_care/widgets/widgets_support.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
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

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), // 255, 45, 52, 128
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
                      Container(
                        height: MediaQuery.of(context).size.height/1.3,
                        child: Center(
                          child: Text(
                            'Coming Soon',
                            style: AppWidget.boldSize20TextStyle(),
                          ),
                        ),
                      ),
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
      color: Color.fromARGB(255, 240, 243, 248),
      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Row(
        children: [
          Container(
            child: Text(
              'Chat Bot',
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
                  'Help',
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
}
