import 'package:flutter/material.dart';
import 'package:health_care/widgets/widgets_support.dart';



class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffde7),
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

}
