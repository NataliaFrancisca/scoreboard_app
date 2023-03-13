import 'package:flutter/material.dart';

import 'custom_button.dart';

class CustomTeam extends StatelessWidget {
  String teamNameText;
  int scoreText;
  var actionButtonIncrement;
  var actionButtonDecrement;

  CustomTeam({
    this.teamNameText,
    this.scoreText,
    this.actionButtonIncrement,
    this.actionButtonDecrement
  });

  @override
  Widget build(BuildContext context) {
   return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Text(
            '${this.teamNameText}',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
            ),
          ),

          CustomButton(
            actionButton: this.actionButtonIncrement,
            iconButton: Icon(Icons.add),
            isButtonDisabled: false,
              backgroundButtonColor: Colors.green
          ),

          Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: 200,
            child: Text(
              '${this.scoreText}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            ),
          ),

          CustomButton(
            actionButton: this.actionButtonDecrement,
            iconButton: Icon(Icons.remove),
            isButtonDisabled: this.scoreText == 0 ? true : false,
              backgroundButtonColor: Colors.red
          ),
      ],
   );
  }
}
