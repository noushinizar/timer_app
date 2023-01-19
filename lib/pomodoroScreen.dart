import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/TimerService.dart';
import 'package:timer_app/utils.dart';
import 'package:timer_app/widgets/TimeController.dart';
import 'package:timer_app/widgets/progress.dart';
import 'package:timer_app/widgets/timeoptions.dart';
import 'package:timer_app/widgets/timer_card.dart';

class pomodoroScreen extends StatelessWidget {
  const pomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerSurvice >(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text("POMOTIMER",style: textstyl(25,Colors.white,FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: (){
            Provider.of<TimerSurvice >(context ,listen: false).reset();
          }, icon: Icon(Icons.refresh,color: Colors.white,),iconSize: 40,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15,),
              TimerCard(),
              SizedBox(height: 40,),
              TimeOptions(),
              SizedBox(height: 30,),
              TimeController(),
              SizedBox(height: 30,),
              Progress()
            ],
          ),
        ),
      ),
    );
  }
}
