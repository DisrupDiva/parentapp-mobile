import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CardEstablishment extends StatelessWidget {
  DocumentSnapshot<Object?> establishment;

  CardEstablishment({required this.establishment, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 136,
      padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Colors.white),
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 79,
            height: 79,
            decoration: ShapeDecoration(
              image: DecorationImage(image: NetworkImage(establishment['image']), fit: BoxFit.fill),
              shape: const OvalBorder(side: BorderSide(width: 0.50)),
            ),
          ),
          SizedBox(
            width: 83,
            child: Text(
              establishment.get('name'),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 10, fontFamily: 'Inter', fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
