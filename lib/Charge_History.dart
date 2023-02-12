import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';

void main(){
   runApp(MaterialApp(
     home: History(),
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primaryColorLight: Colors.white,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
   ));
}
class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListTile(
                leading: Text("Jafis",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: dark),),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/prof_pic.jpeg"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
