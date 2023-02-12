import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/color_palette.dart';
//import 'package:myproject/color_palette.dart';

void main() {
  runApp(MaterialApp(
    home: Vehicle_list(),
    debugShowCheckedModeBanner: false,
  ));
}

final List<VehicleData>dummydata=[
  VehicleData(image: "https://mcmscache.epapr.in/post_images/website_300/post_14627258/thumb.jpg", vehicleName: "Ather", model: "Electric Scooter"),
  // VehicleData(image: image, vehicleName: vehicleName, model: model),
  // VehicleData(image: image, vehicleName: vehicleName, model: model),
];

class Vehicle_list extends StatelessWidget {
  const Vehicle_list({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(boxShadow: [],),
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height * 0.36,
       // width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                  itemBuilder: (BuildContext,int index) {
                return VehicleCard(
                    image: dummydata[index].image,
                    vehicleName: dummydata[index].vehicleName,
                    model: dummydata[index].model);
              })
            ],
          ),
        ),
      ),
    );
  }
}
class VehicleData{
  VehicleData({required this.image, required this.vehicleName, required this.model});
 final String image,vehicleName,model;
}
class VehicleCard extends StatelessWidget {
  const VehicleCard({Key? key, required this.image, required this.vehicleName, required this.model}) : super(key: key);
final String image,vehicleName,model;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width/4,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(image)),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 100,
            ),
            Text(vehicleName,style: TextStyle(color: dark,fontSize: 20),),
            Text(model,style: TextStyle(color: dark,fontSize: 15),)
          ],
        ),
      ),
    );
  }
}


