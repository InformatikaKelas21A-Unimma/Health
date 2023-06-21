import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/game/latihansoal/menu.dart';
import 'package:health_kelompok2/game/mewarnai/mewarnai.dart';
import 'package:health_kelompok2/game/puzzle/puzzle.dart';
import 'package:health_kelompok2/game/utils.dart';
import 'package:health_kelompok2/home.dart';

class MenuGame extends StatelessWidget {
  const MenuGame({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(16 * fem, 19 * fem, 30 * fem, 200 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff59a7f3),
          borderRadius: BorderRadius.circular(10 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 73 * fem, 13 * fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                  Text(
                    'Bermain Game',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 131 * fem, 7 * fem),
              child: Text(
                'Rekomendasi Game',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            SizedBox(
              height: 8 * fem,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 7 * fem),
              width: double.infinity,
              height: 52 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        7 * fem, 3 * fem, 13 * fem, 3 * fem),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff97cbff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 15 * fem, 0 * fem),
                          width: 40 * fem,
                          height: 46 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20 * fem),
                            child: Image.asset(
                              'images/rectangle-54.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10 * fem,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 0 * fem, 5 * fem),
                          width: 120 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 120 * fem,
                                    height: 23 * fem,
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 15 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Puzzle ',
                                          ),
                                          TextSpan(
                                            text: 'Theraphy',
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 15 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0 * fem,
                                top: 21 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 111 * fem,
                                    height: 18 * fem,
                                    child: Text(
                                      'Latih daya ingatmu dengan bermain Puzzle Therapy secara rutin.',
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 6 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PuzzlePage()),
                      );
                    },
                    child: Container(
                      width: 95 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff97cbff),
                        borderRadius: BorderRadius.circular(15 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(0 * fem, 6 * fem),
                            blurRadius: 2 * fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Main',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8 * fem,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 8 * fem),
              padding: EdgeInsets.fromLTRB(7 * fem, 6 * fem, 8 * fem, 7 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffc5e0fb),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 7 * fem, 0 * fem),
                    width: 138 * fem,
                    height: 95 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5 * fem),
                      child: Image.asset(
                        'images/rectangle-42.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 139 * fem,
                    height: 95 * fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5 * fem),
                      child: Image.asset(
                        'images/rectangle-43.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8 * fem,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(7 * fem, 12 * fem, 8 * fem, 16 * fem),
              width: 299 * fem,
              decoration: BoxDecoration(
                color: Color(0xffc5e0fb),
                borderRadius: BorderRadius.circular(10 * fem),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(0 * fem, 4 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding:
                        EdgeInsets.fromLTRB(0 * fem, 6 * fem, 6 * fem, 6 * fem),
                    width: double.infinity,
                    height: 64 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x35ffffff)),
                      color: Color(0xff97cbff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 7 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              7 * fem, 7 * fem, 7 * fem, 7 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 36 * fem,
                              height: 36 * fem,
                              child: Image.asset(
                                'images/vector-7JE.png',
                                width: 36 * fem,
                                height: 36 * fem,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DrawPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Menggambar mewarnai',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 6 * fem, 132 * fem, 6 * fem),
                    width: double.infinity,
                    height: 64 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x35ffffff)),
                      color: Color(0xff97cbff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LatihanSoal()),
                              );
                            },
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 7 * fem, 0 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      8 * fem, 9 * fem, 9 * fem, 7 * fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(10 * fem),
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 36 * fem,
                                      height: 36 * fem,
                                      child: Image.asset(
                                        'images/icon-box-tick.png',
                                        width: 36 * fem,
                                        height: 36 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Latihan Soal',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem,
                                      color: Color(0xff000000),
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
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 6 * fem, 83 * fem, 6 * fem),
                    width: double.infinity,
                    height: 64 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x35ffffff)),
                      color: Color(0xff97cbff),
                      borderRadius: BorderRadius.circular(10 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 7 * fem, 0 * fem),
                          padding: EdgeInsets.fromLTRB(
                              8 * fem, 10 * fem, 9 * fem, 6 * fem),
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 36 * fem,
                              height: 36 * fem,
                              child: Image.asset(
                                'images/vector.png',
                                width: 36 * fem,
                                height: 36 * fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Gardening theraphy',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
