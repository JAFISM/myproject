import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';


void main(){
   runApp(MaterialApp(
     home: Onboardscreeen(),
     debugShowCheckedModeBanner: false,
   ));
}
class Onboardscreeen extends StatefulWidget {
  const Onboardscreeen({Key? key}) : super(key: key);

  @override
  State<Onboardscreeen> createState() => _OnboardscreeenState();
}

class _OnboardscreeenState extends State<Onboardscreeen> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black10,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: demo_data.length,
                itemBuilder: (context,int index)
                  => OnboardContent(
                  image:demo_data[index].image,
                  title:demo_data[index].title,
                  description:demo_data[index].description,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  _pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: teal,
                    ),
                    child:Icon(Icons.fast_rewind_sharp,color: black10,)),
                ElevatedButton(onPressed: (){
                  _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
                },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: teal,
                    ),
                    child:Icon(Icons.fast_forward_sharp,color: black10,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}
  final List<Onboard> demo_data = [
    Onboard(
        image: "assets/images/Model-Y-Specs-Hero-Desktop-LHD-removebg-preview.png",
        title: "Find the nearest charging Station",
        description: "Connect your Ev"
    ),
    Onboard(
        image: "assets/images/Model-Y-Specs-Hero-Desktop-LHD-removebg-preview.png",
        title: "Find the nearest charging Station",
        description: "Connect your Ev"
    ),
    Onboard(
        image: "assets/images/Model-Y-Specs-Hero-Desktop-LHD-removebg-preview.png",
        title: "Find the nearest charging Station",
        description: "Connect your Ev"
    ),

  ];

class OnboardContent extends StatelessWidget {
  const OnboardContent({Key? key, required this.image, required this.title, required this.description,}) : super(key: key);
final String image,title,description;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Image.asset(image,height: 300,),
         // Spacer(),
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: teal,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16,),
          Text(description,textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,),),
          Spacer(),
        ],
      ),
    );
  }
}

