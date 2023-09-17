import 'package:flutter/material.dart';

import '../../../core/models/service_model.dart';
import '../../../shared/default/text_styles.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel serviceModel;
  const ServiceCard({super.key, required this.serviceModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: NetworkImage(serviceModel.imageUrl), width: 80, height: 80),
          const SizedBox(width: 10),
          SizedBox(
            width: size.width*0.9-90,
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(serviceModel.name, style: titleStyle.copyWith(color: Colors.white)),
                SizedBox(child: Text(serviceModel.description, style: const TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.bold))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
