import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/TimerService.dart';
import 'package:timer_app/utils.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerSurvice >(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${provider.rounds}/4",
              style: textstyl(30,Colors.grey[350],FontWeight.bold),),
            Text("${provider.goal}/12",
              style: textstyl(30,Colors.grey[350],FontWeight.bold),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("ROUND",
              style: textstyl(20,Colors.white,FontWeight.bold),),
            Text("GOAL",
              style: textstyl(20,Colors.white,FontWeight.bold),),
          ],
        )
      ],
    );
  }
}
