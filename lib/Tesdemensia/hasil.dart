import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/Tesdemensia/menu.dart';
import 'package:health_kelompok2/game/latihansoal/hasil.dart';
import 'package:health_kelompok2/game/latihansoal/menu.dart';
import 'package:health_kelompok2/game/latihansoal/soal1.dart';
import 'package:health_kelompok2/game/latihansoal/soal2.dart';
import 'package:health_kelompok2/game/page1/menu.dart';
import 'package:health_kelompok2/game/utils.dart';

class hasil extends StatelessWidget {
  const hasil({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 385;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(21 * fem, 16 * fem, 40 * fem, 67 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff59a7f3),
          borderRadius: BorderRadius.circular(10 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 80 * fem, 29 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => demensia()),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 10 * fem, 50 * fem, 0 * fem),
                            width: 13 * fem,
                            height: 15 * fem,
                            child: Image.asset(
                              'images/vector-icn.png',
                              width: 13 * fem,
                              height: 18 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 10 * fem, 10 * fem, 0 * fem),
                    child: Text(
                      'Tes Demensia',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(19 * fem, 100 * fem, 0 * fem, 10 * fem),
              padding: EdgeInsets.fromLTRB(
                  17.5 * fem, 12 * fem, 14.5 * fem, 10 * fem),
              width: 280 * fem,
              height: 500 * fem, //backkground putih
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        1.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              25 * fem, 25 * fem, 2 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 244 * fem,
                          ),
                          child: Image.asset(
                            'images/Group 38.png',
                            width: 200 * fem,
                            height: 200 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 2 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 244 * fem,
                        ),
                        child: Image.asset(
                          'images/Group 39.png',
                          width: 250 * fem,
                          height: 210 * fem,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        130 * fem, 0 * fem, 19 * fem, 0 * fem),
                    height: 30 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xffa0d0ff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => demensia()),
                        );
                      },
                      child: Center(
                        child: Text(
                          'Selesai',
                          textAlign: TextAlign.left,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ), //bg putih
      ),
    );
  }
}
