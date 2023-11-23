import 'package:flutter/material.dart';
import 'package:Chatty/widgets/home_meeting_button.dart';


class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
        double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Meet & Chat",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: deviceHeight / 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.video_call_outlined,
                text: "Create New",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.add_box_outlined,
                text: "Join",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.calendar_month_outlined,
                text: "Schedule",
              ),
              HomeMeetingButton(
                onPressed: () {},
                icon: Icons.chat_outlined,
                text: "Chat",
              ),
            ],
          ),
        ],
      ),
    );
  }
}