import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/Tesdemensia/tes1.dart';
import 'package:health_kelompok2/game/utils.dart';
import 'package:health_kelompok2/home.dart';

class demensia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
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
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 10 * fem, 87 * fem, 0 * fem),
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
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 26 * fem),
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 12 * fem, 21 * fem, 14 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(20 * fem),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0xffacafef),
                    Color(0x517c7fd5),
                    Color(0x005154a2),
                    Color(0x456b6c7c),
                    Color(0xb06368df)
                  ],
                  stops: <double>[0, 0.679, 1, 1, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                    child: Text(
                      'Tes 1',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        200 * fem, 1 * fem, 0 * fem, 0 * fem),
                    width: 18 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'images/vector-cAi.png',
                      width: 18 * fem,
                      height: 21 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 26 * fem),
              padding: EdgeInsets.fromLTRB(
                  17.5 * fem, 12 * fem, 14.5 * fem, 22 * fem),
              width: 335 * fem,
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
                        1.5 * fem, 0 * fem, 0 * fem, 2 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 141.5 * fem, 0 * fem),
                          child: Text(
                            'Tes 2',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              64 * fem, 2.5 * fem, 0 * fem, 0 * fem),
                          width: 18 * fem,
                          height: 13 * fem,
                          child: Image.asset(
                            'images/vectorcopy.png',
                            width: 18 * fem,
                            height: 13 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 4 * fem, 26 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 244 * fem,
                    ),
                    child: Text(
                      'Tes 2 merupakan pertanyaan dasar seputar aktivitas anda dan daya ingat anda Dimohon menjawab pertanyaan dengan jujur. Harap anda tidak berada di tempat keramaian.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        12.5 * fem, 0 * fem, 15.5 * fem, 0 * fem),
                    width: double.infinity,
                    height: 35 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xffa0d0ff),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Row(children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => tes1()),
                            );
                          },
                          child: Text(
                            'MULAI',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 26 * fem),
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 12 * fem, 21 * fem, 14 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(20 * fem),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0xffacafef),
                    Color(0x517c7fd5),
                    Color(0x005154a2),
                    Color(0x456b6c7c),
                    Color(0xb06368df)
                  ],
                  stops: <double>[0, 0.679, 1, 1, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                    child: Text(
                      'Tes 3',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        200 * fem, 1 * fem, 0 * fem, 0 * fem),
                    width: 18 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'images/vector-cAi.png',
                      width: 18 * fem,
                      height: 21 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 26 * fem),
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 12 * fem, 21 * fem, 14 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(20 * fem),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0xffacafef),
                    Color(0x517c7fd5),
                    Color(0x005154a2),
                    Color(0x456b6c7c),
                    Color(0xb06368df)
                  ],
                  stops: <double>[0, 0.679, 1, 1, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                    child: Text(
                      'Tes 4',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        200 * fem, 1 * fem, 0 * fem, 0 * fem),
                    width: 18 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'images/vector-cAi.png',
                      width: 18 * fem,
                      height: 21 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 12 * fem, 21 * fem, 14 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(20 * fem),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0xffacafef),
                    Color(0x517c7fd5),
                    Color(0x005154a2),
                    Color(0x456b6c7c),
                    Color(0xb06368df)
                  ],
                  stops: <double>[0, 0.679, 1, 1, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: Text(
                      'Tes 5',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        200 * fem, 1 * fem, 0 * fem, 0 * fem),
                    width: 18 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'images/vector-cAi.png',
                      width: 18 * fem,
                      height: 21 * fem,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20 * fem,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 0 * fem),
              padding:
                  EdgeInsets.fromLTRB(19 * fem, 12 * fem, 21 * fem, 14 * fem),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(20 * fem),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[
                    Color(0xffacafef),
                    Color(0x517c7fd5),
                    Color(0x005154a2),
                    Color(0x456b6c7c),
                    Color(0xb06368df)
                  ],
                  stops: <double>[0, 0.679, 1, 1, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    offset: Offset(-2 * fem, 9 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                    child: Text(
                      'Tes 6',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        200 * fem, 1 * fem, 0 * fem, 0 * fem),
                    width: 18 * fem,
                    height: 21 * fem,
                    child: Image.asset(
                      'images/vector-cAi.png',
                      width: 18 * fem,
                      height: 21 * fem,
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
