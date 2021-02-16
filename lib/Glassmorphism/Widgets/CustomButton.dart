import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Function onPress;
  final double paddingH;
  const CustomButton({
    Key key,
    this.buttonName,
    this.onPress = null,
    this.paddingH = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: this.paddingH,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            )),
        child: Text(
          this.buttonName,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }
}
