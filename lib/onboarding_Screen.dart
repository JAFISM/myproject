import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';


void main(){
   runApp(const MaterialApp(
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
  int _pageIndex=0;
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
      //backgroundColor: black10,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex=index;
                    });
                  },
                  itemCount: demo_data.length,
                  itemBuilder: (context,int index)
                    => OnboardContent(
                    image:demo_data[index].image,
                    title:demo_data[index].title,
                    description:demo_data[index].description,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                    },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: teal,
                        ),
                        child:Icon(Icons.fast_rewind_sharp,color: black10,)),
                    Row(
                      children: [
                       ...List.generate(demo_data.length,(int index)=>Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: DotIndicator(isActive: index==_pageIndex,),
                       ))
                      ],
                    ),
                    ElevatedButton(onPressed: (){
                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                    },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: teal,
                        ),
                        child:Icon(Icons.fast_forward_sharp,color: black10,)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, this.isActive=false}) : super(key: key);
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:isActive? 12:4,
      width: 4,
      decoration: BoxDecoration(
          color: dark,
          borderRadius:const BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}


class Onboard {
  final String image, title, description;
  Onboard(
      {required this.image, required this.title, required this.description,});
}
  final List<Onboard> demo_data = [
    Onboard(
        image: "assets/images/Charging-car.png",
        title: "Find your nearest charging station using the Plug App",
        description: "Helping you to find a place to charge a vehicle near you at a low price",

    ),
    Onboard(
        image: "assets/images/home-modal-modelx.png",
        title: "Freedom to travel",
        description: "40,000 + \n Global Super Chargers",
    ),
    Onboard(
        image: "assets/images/Electric-Scooter-charging.png",
        title: "Locate. Connect. Charge.",
        description: "Monitor charging status of your scooter through the Plug app.",
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
          const Spacer(),
          Image.asset(image,height: 300,),
         // Spacer(),
          Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: dark,fontWeight: FontWeight.bold,fontSize: 25),
          ),
          const SizedBox(height: 16,),
          Text(description,textAlign: TextAlign.center,style:TextStyle( color: dark,fontSize: 18)),
          const Spacer(),
        ],
      ),
    );
  }
}

