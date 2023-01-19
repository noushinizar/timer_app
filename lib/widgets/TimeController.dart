import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer_app/TimerService.dart';
class TimeController extends StatelessWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerSurvice>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black26,shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: provider.timerPlaying ? Icon(Icons.pause) :Icon(Icons.play_arrow_sharp),
        color: Colors.white,
        iconSize: 55,
        onPressed: (){
          provider.timerPlaying ?  Provider.of<TimerSurvice>(context,listen: false).pause()
              : Provider.of<TimerSurvice>(context,listen: false).start();
        },
      ),
    );
  }
}
