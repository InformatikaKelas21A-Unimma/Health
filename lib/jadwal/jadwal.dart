import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/Tesdemensia/tes1.dart';
import 'package:health_kelompok2/Tesdemensia/hasil.dart';
import 'package:health_kelompok2/jadwal/cekkesehatan.dart';
import 'package:health_kelompok2/evaluasi/evaluasi.dart';
import 'package:health_kelompok2/game/utils.dart';
import 'package:health_kelompok2/home.dart';

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      child: Container(
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
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 110 * fem, 0 * fem),
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
                                  0 * fem, 10 * fem, 0 * fem, 10 * fem),
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
                          0 * fem, 10 * fem, 0 * fem, 10 * fem),
                      child: Text(
                        'Pengingat',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(15 * fem, 5 * fem, 0 * fem, 5 * fem),
                width: 120 * fem,
                height: 120 * fem,
                child: Image.asset(
                  'images/logohealth.png',
                  width: 13 * fem,
                  height: 18 * fem,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 26 * fem),
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0.5 * fem, 22 * fem),
                width: 400 * fem,
                height: 500 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 400 * fem,
                      ),
                      child: Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CekKesehatan()),
                            );
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 10 * fem, 0 * fem, 0 * fem),
                                width: 300 * fem,
                                height: 60 * fem,
                                child: Image.asset(
                                  'images/Group 41.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CekKesehatan()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 10 * fem, 0 * fem, 0 * fem),
                                  width: 300 * fem,
                                  height: 94 * fem,
                                  child: Image.asset(
                                    'images/Group 9.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EvaluasiTes()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 10 * fem, 0 * fem, 0 * fem),
                                  width: 300 * fem,
                                  height: 94 * fem,
                                  child: Image.asset(
                                    'images/Group 15.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
