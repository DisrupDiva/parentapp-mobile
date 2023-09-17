import 'package:flutter/material.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFF353535)),
          child: Stack(
            children: [
              const Positioned(
                left: 12,
                top: 395,
                child: Text(
                  'estabelecimentos',
                  style: TextStyle(
                    color: Color(0xFF37FC0F),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 437,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 147,
                top: 437,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 437,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 607,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 147,
                top: 607,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 607,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 777,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 147,
                top: 777,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 283,
                top: 777,
                child: Container(
                  width: 96,
                  height: 136,
                  padding: const EdgeInsets.only(top: 7, left: 7, right: 6, bottom: 13),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF7A7A7A)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/79x79"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 83,
                        height: 24,
                        child: Text(
                          'Nome do estabelecimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 4,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 231,
                child: SizedBox(
                  width: 390,
                  height: 135,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 163,
                        top: 124,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 181,
                        top: 124,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFC80FF2),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 199,
                        top: 124,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 217,
                        top: 124,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 0,
                        child: Container(
                          width: 353,
                          height: 115.56,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/353x116"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 381,
                        top: 2,
                        child: Container(
                          width: 343,
                          height: 116,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/343x116"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -331,
                        top: 0,
                        child: Container(
                          width: 341,
                          height: 116,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/341x116"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Positioned(
              //   left: 12,
              //   top: 150,
                // child: Container(
                //   width: 59,
                //   height: 76,
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Container(
                //         width: 56,
                //         height: 55,
                //         decoration: ShapeDecoration(
                //           image: DecorationImage(
                //             image: NetworkImage("https://via.placeholder.com/56x55"),
                //             fit: BoxFit.fill,
                //           ),
                //           shape: OvalBorder(side: BorderSide(width: 0.50)),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 59,
                //         height: 17,
                //         child: Text(
                //           'Restaurante',
                //           textAlign: TextAlign.center,
                //           style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 10,
                //             fontFamily: 'Inter',
                //             fontWeight: FontWeight.w600,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              // ),
              Positioned(
                left: 88,
                top: 150,
                child: SizedBox(
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
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/56x55"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 59,
                        height: 17,
                        child: Text(
                          'Restaurante',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 164,
                top: 150,
                child: SizedBox(
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
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/56x55"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 59,
                        height: 17,
                        child: Text(
                          'Restaurante',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 240,
                top: 150,
                child: SizedBox(
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
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/56x55"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 59,
                        height: 17,
                        child: Text(
                          'Restaurante',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 316,
                top: 150,
                child: SizedBox(
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
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://via.placeholder.com/56x55"),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 0.50)),
                        ),
                      ),
                      const SizedBox(
                        width: 59,
                        height: 17,
                        child: Text(
                          'Restaurante',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
