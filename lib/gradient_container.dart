import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer (this.colors,{super.key,});
  final List<Color> colors;
  //we are trying to make the GradientContainer universal
  // by adding changable variables
  //to the function const GradientContainer (this.colors,{super.key,});
  // we can also do it by const GradientContainer ({required this.colors,super.key,}) 
  // for accepting two colors use const GradientContainer (this.color1,this.color2,{super.key,}); 
  //then final COlor color1; final Color color2 ; then colors =[color1,color2]
  // to make this code reusable write colors = colors
  void rollDice() {

  }
@override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:colors,
              
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
            ),
          ),
          
          child:  Center(
            child: DiceRoller(),
            ),
            );
            
    
  }
}

