import 'package:drone_docs/helpers/screen_navigation.dart';
import 'package:drone_docs/models/drone_model.dart';
import 'package:drone_docs/screens/details.dart';
import 'package:flutter/material.dart';

import '../helpers/styles.dart';
import 'custom_text.dart';

class DroneType extends StatelessWidget {
  DroneType({Key? key}) : super(key: key);

  List<DroneModel> droneList = [
    DroneModel(name: 'DJI F450', image: 'DJI_f450.jpeg', rating: 4.2, vendor: '', wishList: true, price: 50),
    DroneModel(name: 'HSKRC build', image: 'quad_fiber_frame.jpeg', rating: 4.7, vendor: '', wishList: true, price: 65),
    DroneModel(name: 'TransTEC Frog', image: 'TransTEC_Frog_Lite.jpeg', rating: 4.5, vendor: "", wishList: false, price: 85),
    DroneModel(name: 'Chameleon Ti', image: 'Chameleon_Ti_5_inch.jpeg', rating: 4.8, vendor: '', wishList: true, price: 00),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(


          scrollDirection: Axis.horizontal,
          itemCount: droneList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  changeScreen(_, Details(droneModel: droneList[index]));
                },
                child: Container(
                  height: 260,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: red[50]!,
                            offset: const Offset(4, 6),
                            blurRadius: 8),
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "images/${droneList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: droneList[index].name),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: grey,
                                        offset: Offset(1, 1),
                                        blurRadius: 8),
                                  ]),
                              child:  Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: droneList[index].wishList ? const Icon(
                                  Icons.favorite,
                                  color: red,
                                ) : const Icon(Icons.favorite_border, color: red,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children:  [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CustomText(
                                  text: droneList[index].rating.toString(),
                                  color: grey,
                                  size: 14,
                                ),
                              ),
                              const Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              const Icon(
                                Icons.star,
                                color: grey,
                                size: 16,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(text: '${droneList[index].price}K +', weight: FontWeight.bold,),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
