import 'package:flutter/material.dart';

class MenuSmall extends StatelessWidget {
  const MenuSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              _menuItem(title: "Home"),
              _menuItem(title: "About Us"),
              _menuItem(title: "Contact Us"),
              _menuItem(title: "Help"),
            ],
          ),
          Row(
            children: [
              _menuItem(title: "Sign In", isActive: true),
              _registerButton(),
            ],
          )
        ],
      ),
    );
  }
}

Widget _menuItem({String title = "Title Menu", bool isActive = false}) {
  return Padding(
    padding: EdgeInsets.only(right: 15),
    child: Column(
      children: [
        Text(
          "$title",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.deepPurple : Colors.grey),
        ),
        SizedBox(
          height: 6,
        ),
        isActive
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(30),
                ),
              )
            : SizedBox(),
      ],
    ),
  );
}

Widget _registerButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          spreadRadius: 10,
          blurRadius: 12,
        ),
      ],
    ),
    child: Text(
      "Register",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
    ),
  );
}
