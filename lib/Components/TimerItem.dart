import 'dart:async';

import 'package:flutter/material.dart';

class TimerItem extends StatefulWidget {
  bool isSelected;
  TimerItem({this.isSelected});
  @override
  _TimerItemState createState() => _TimerItemState();
}

class _TimerItemState extends State<TimerItem> {
  int time = 10;
  @override
  void initState() {
    super.initState();
    setTimer();

  
    
  }


  setTimer(){
    Timer.periodic((Duration(seconds: 1)), (timer) { 
      if(widget.isSelected){
        // print(timer.tick);
        setState(() {
          time -= 1;
        });
        
      }else{
        // timer.cancel();
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: widget.isSelected ? Colors.blue : Colors.grey[800],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              time.toString()+" mins",
            ),
          )
        ],
      ),
    );;
  }
}
