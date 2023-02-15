import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VehicleCard(),
    debugShowCheckedModeBanner: false,
  ));
}

class VehicleCard extends StatelessWidget {
  var images = [
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
    'https://imgd.aeplcdn.com/600x600/n/cw/ec/126579/450x-gen-3-right-front-three-quarter.jpeg?isig=0',
  ];
  var vehiclename = [
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",
    "Ather",

  ];
  var description = [
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
    "Electric Scooter",
  ];
  // var rate = [
  //   "\$69/night",
  //   "\$79/night",
  //   "\$89/night",
  //   "\$99/night",
  //   "\$69/night",
  //   "\$99/night",
  //   "\$59/night",
  //   "\$89/night",
  //   "\$99/night",
  //   "\$119/night",
  // ];
  // var rating = [
  //   "3.8",
  //   "3.5",
  //   "4.5",
  //   "5.0",
  //   "3.5",
  //   "4.5",
  //   "3.8",
  //   "3.5",
  //   "4.5",
  //   "5.0",
  //   "3.5",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 3,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Your Vehicle',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  // physics:NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width * .4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              spreadRadius: 2,
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(images[index]))),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Text(
                                    vehiclename[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    description[index],
                                    style: const TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  ),
                                ],
                              )),
                          // Expanded(
                          //   flex: 3,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       Text(
                          //         rate[index],
                          //         style: const TextStyle(color: Colors.blue),
                          //       ),
                          //       Row(
                          //         children: [
                          //           Text(
                          //             rating[index],
                          //             style: const TextStyle(color: Colors.blue),
                          //           ),
                          //           const Icon(
                          //             CupertinoIcons.star_fill,
                          //             color: Colors.amber,
                          //             size: 16,
                          //           )
                          //         ],
                          //       )
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myproject/color_palette.dart';
// //import 'package:myproject/color_palette.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Vehicle_list(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
// final List<VehicleData>dummydata=[
//   VehicleData(image: "https://mcmscache.epapr.in/post_images/website_300/post_14627258/thumb.jpg", vehicleName: "Ather", model: "Electric Scooter"),
//   // VehicleData(image: image, vehicleName: vehicleName, model: model),
//   // VehicleData(image: image, vehicleName: vehicleName, model: model),
// ];
//
// class Vehicle_list extends StatelessWidget {
//   const Vehicle_list({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(boxShadow: [],),
//         padding: EdgeInsets.only(right: 20),
//         margin: EdgeInsets.only(top: 10),
//         height: MediaQuery.of(context).size.height * 0.36,
//        // width: double.infinity,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           physics: BouncingScrollPhysics(),
//           child: Row(
//             children: [
//               ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: 1,
//                   itemBuilder: (BuildContext,int index) {
//                 return VehicleCard(
//                     image: dummydata[index].image,
//                     vehicleName:dummydata[index].vehicleName,
//                     model: dummydata[index].model
//                 );
//               })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class VehicleData{
//   VehicleData({required this.image, required this.vehicleName, required this.model});
//  final String image,vehicleName,model;
// }
// class VehicleCard extends StatelessWidget {
//    VehicleCard({Key? key, required this.image, required this.vehicleName, required this.model}) : super(key: key);
// final String image,vehicleName,model;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height / 4,
//       width: MediaQuery.of(context).size.width * .4,
//       decoration: BoxDecoration(
//         color: black10,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade400,
//             spreadRadius: 2,
//             blurRadius: 3,
//           ),
//         ],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                   ),
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: NetworkImage(
//                           image))),
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Column(
//               children: [
//                 Text(
//                   vehicleName,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 15),
//                 ),
//                 Text(
//                   model,
//                   style: const TextStyle(fontSize: 10, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }