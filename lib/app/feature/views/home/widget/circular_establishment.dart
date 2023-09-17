import 'package:flutter/material.dart';
import 'package:parentapp/app/core/models/service_model.dart';

class CircularEstablishment extends StatelessWidget {
  final ServiceModel service;
  const CircularEstablishment({required this.service, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 59,
      height: 76,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 55,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(service.imageUrl),
                fit: BoxFit.fill,
              ),
              shape: const OvalBorder(side: BorderSide(width: 0.50)),
            ),
          ),
          SizedBox(
            width: 59,
            height: 17,
            child: Text(
              service.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
