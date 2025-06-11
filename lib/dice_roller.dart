import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-2.png';
  var message = '';
  void rollDice(){
    setState(() {
      var diceRoll = randomizer.nextInt(6) + 1 ;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
      Text('Changing image...');
    });
    
    
  }
  @override Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
            //child: Text('VibeCheck', style: TextStyle(color: Colors.black,fontSize: 28, ),),
              Image.asset(activeDiceImage, width: 200,),
               SizedBox(height: 20,),
            
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28,)
                ) ,
              child: Text('Roll Dice'),
              ),
              ]
            );
  }
}