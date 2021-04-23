import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextField(IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 9.0),
    child: TextField(
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.purple,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontFamily: 'Nunito', fontSize: 20)),
    ),
  );
}

TextButton buildTextButton(
    IconData icon, String title, Color backgroundColor) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
      side: BorderSide(width: 1, color: Colors.grey),
      minimumSize: Size(155, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      primary: Colors.white,
      backgroundColor: backgroundColor,
    ),
    child: Row(
      children: [
        Icon(icon),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(fontFamily: 'Nunito', fontSize: 17),
        ),
      ],
    ),
  );
}