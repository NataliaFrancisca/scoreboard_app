import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Icon iconButton;
  var actionButton;
  bool isButtonDisabled;
  Color backgroundButtonColor;

  CustomButton({
    this.iconButton,
    this.actionButton,
    this.isButtonDisabled,
    this.backgroundButtonColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: ElevatedButton(
          onPressed: this.isButtonDisabled ? null : this.actionButton,
          child: this.iconButton,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              primary: this.backgroundButtonColor
          )
      ),
    );
  }
}
