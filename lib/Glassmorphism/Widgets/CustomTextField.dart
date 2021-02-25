import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isObscure;
  final TextEditingController controller;
  final Function onTap;
  CustomTextField({
    Key key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscure = false,
    this.controller,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(
            this.prefixIcon,
            color: Colors.white,
          ),
          SizedBox(width: 5.0),
          Expanded(
            child: TextField(
              controller: this.controller,
              obscureText: this.isObscure,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                hintText: this.hintText,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18.0,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 5),
          this.suffixIcon != null
              ? GestureDetector(
                  onTap: this.onTap,
                  child: Icon(
                    this.suffixIcon,
                    color: Colors.white,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
