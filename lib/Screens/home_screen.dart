import 'package:chatbot/helper/global.dart';
import 'package:chatbot/helper/pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showonbording = false;
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: Transform.translate(
          offset: Offset(mq.width * 0.04, 0),
          child: IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 237, 231, 231),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              size: mq.width * 0.07,
              color: Colors.black,
            ),
            color: Colors.white,
          ),
        ),
        actions: [
          Transform.translate(
            offset: Offset(mq.width * -0.05, 0),
            child: IconButton.filled(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 237, 231, 231),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: mq.width * 0.07,
                )),
          )
        ],
      ),
      body: const Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Hello Jigar  welcome to Chatpal',
              style: TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
