
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Congratulation You have reached 10!'),
      ),
    );
  }
}
