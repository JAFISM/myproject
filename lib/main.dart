import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';
void main(){
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000 ));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return  Center(
              //heightFactor: 1,
              child: Transform.scale(
                scale: _animation.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/Ev_Logo.png",scale: 1.5,),
                    //Text("Connect your Vehicle",style: TextStyle(color: black10,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            );
        },
      ),
    );
  }

}
