import 'package:flutter/material.dart';
import 'package:smart_timer/Components/TimerItem.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [1, 1, 1, 1, 1];
  int selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: data.length,
            itemBuilder: (bc, i) {
              return GestureDetector(
                onTap: (){
                  if(selectedItem== i){
                    setState(() {
                      selectedItem = -1;
                    });
                  }else{
                    setState(() {
                      selectedItem = i;
                    });
                  }
                },
                child: TimerItem(
                  isSelected: selectedItem == i,
                ),
              );
            }),
      ),
    );
  }
}
