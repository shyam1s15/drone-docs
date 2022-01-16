import 'package:drone_docs/models/part_model.dart';
import 'package:flutter/material.dart';

import '../helpers/styles.dart';
import 'custom_text.dart';

List<PartModel> partsList = [
  const PartModel(name:"Transmitter", image: "flysky-fs-i6-2-4g-6ch-transmitter-and-receiver-system-lcd-screen.jpeg"),
  const PartModel(name:"Frame", image: "frame_HSKRC.jpeg"),
  const PartModel(name:"Motors", image: "motors_samguk.jpeg"),
  const PartModel(name:"ESC fiber", image: "ESC_30hv.jpeg"),
  const PartModel(name:"F4S FC", image: "CL_racing_F4S_FC.jpeg"),
  const PartModel(name:"camera", image: "foxeer_HS1177_mini.jpeg"),
  const PartModel(name:"video transmitter", image: "video_transmitter.jpeg"),
];


class Parts extends StatelessWidget {
  const Parts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // please change height of below two containers simultaneously

    return Container(
      height: 130,
      // width: 200,
      child: ListView.builder(
        itemCount: partsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return Padding(
            padding: const EdgeInsets.all(3.0),

            child: Column(

              children: [
                Container(
                  height: 100,
                  decoration:
                  BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: red[50]!, offset: const Offset(4, 6), blurRadius: 20),
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("images/${partsList[index].image}", width: 70,),
                  ),

                ),
                const SizedBox(height: 10,),
                CustomText(text: partsList[index].name, size: 12, color: grey,),
              ],
            ),
          );
        },
      ),
    );

  }
}
