import 'package:flutter/material.dart';
import 'package:login_ui/Pages/Menu/menu.dart';
import 'package:login_ui/Pages/Menu/menu_small.dart';
import 'package:login_ui/Pages/body/body.dart';
import 'package:login_ui/Pages/body/body_small.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf5f5f5),
        body: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1350) {
            return ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 8),
              children: [
                Menu(),
                Body(),
              ],
            );
          } else
            return ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 8),
              children: [
                BodySmall(),
              ],
            );
        }));
  }
}
