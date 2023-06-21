import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/evaluasi/evaluasi.dart';
import 'package:health_kelompok2/game/utils.dart';
import 'package:health_kelompok2/home.dart';
import 'package:health_kelompok2/jadwal/jadwal.dart';

class CekKesehatan extends StatefulWidget {
  @override
  _CekKesehatanState createState() => _CekKesehatanState();
}

class _CekKesehatanState extends State<CekKesehatan> {
  List<bool> _isCheckedList = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(21 * fem, 16 * fem, 40 * fem, 10 * fem),
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
                            MaterialPageRoute(
                                builder: (context) => JadwalPage()),
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
                        'Kesehatan',
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
                    EdgeInsets.fromLTRB(15 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                    EdgeInsets.fromLTRB(19 * fem, 0 * fem, 0 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0.5 * fem, 0 * fem),
                width: 400 * fem,
                height: 540 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 10 * fem, 10 * fem, 0 * fem),
                      width: double.infinity,
                      height: 60 * fem,
                      child: Card(
                        color: Colors.white,
                        shadowColor: Colors.white.withOpacity(0.100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(13, 3, 0, 0),
                          child: CheckboxListTile(
                            title: Text(
                              'Aktif/Nonaktif',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 0.5 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            value: _isCheckedList[1],
                            onChanged: (bool? value) {
                              setState(() {
                                _isCheckedList[1] = value ?? false;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            activeColor: Colors.blue,
                          ),
                        ),
                      ),
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
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 300 * fem,
                                  height: 94 * fem,
                                  child: Image.asset(
                                    'images/Group 42.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
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
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 10 * fem, 0 * fem),
                                width: 400 * fem,
                                height: 150 * fem,
                                child: Image.asset(
                                  'images/Group 22.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  10 * fem, 0 * fem, 10 * fem, 0 * fem),
                              width: 400 * fem,
                              height: 200 * fem,
                              child: Image.asset(
                                'images/Group 43.png',
                              ),
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
