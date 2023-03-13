import 'package:flutter/material.dart';
import 'package:score_board_app/ui/widgets/custom_team.dart';

class ScoreBoardPage extends StatefulWidget {
  @override
  State<ScoreBoardPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<ScoreBoardPage> {
  int counterTeamOne = 0;
  int counterTeamTwo = 0;

  void _incrementTeamOne(){
    setState(() {
      counterTeamOne++;
    });
  }

  void _incrementTeamTwo(){
    setState(() {
      counterTeamTwo++;
    });
  }

  void _decrementTeamOne(){
    setState(() {
      if(counterTeamOne != 0){
        counterTeamOne--;
      }
    });
  }

  void _decrementTeamTwo(){
    setState(() {
      if(counterTeamTwo != 0){
        counterTeamTwo--;
      }
    });
  }

  void _cleanScore(){
    setState(() {
      counterTeamTwo = 0;
      counterTeamOne = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              CustomTeam(
                scoreText: this.counterTeamOne,
                actionButtonIncrement: this._incrementTeamOne,
                actionButtonDecrement: this._decrementTeamOne,
                teamNameText: "HOME",
              ),

              ElevatedButton(
                onPressed: _cleanScore,
                child: Text('CLEAN'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  primary: Colors.black87
                )
              ),

              CustomTeam(
                scoreText: this.counterTeamTwo,
                actionButtonIncrement: this._incrementTeamTwo,
                actionButtonDecrement: this._decrementTeamTwo,
                teamNameText: "VISITOR",
              ),
            ],
          ),
        )
      )
    );
  }
}
