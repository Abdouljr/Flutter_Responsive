// ignore_for_file: unused_local_variable

import 'package:application_responsive/pages/Chat.dart';
import 'package:application_responsive/pages/listChat.dart';
import 'package:application_responsive/pages/menu.dart';
import 'package:flutter/material.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(title: const Text("Application Flutter")),
        body: SafeArea(
          child: SizedBox(
              height: height,
              child: Row(
                children: const [
                  Expanded(flex: 3, child: Menu()),
                  Expanded(flex: 7, child: ListChat()),
                  Expanded(flex: 8, child: Chat()),
                ],
              )),
        ));
  }
}
