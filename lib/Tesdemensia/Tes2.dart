import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_kelompok2/Tesdemensia/hasil.dart';
import 'package:health_kelompok2/Tesdemensia/tes1.dart';
import 'package:health_kelompok2/game/utils.dart';

class tes2 extends StatefulWidget {
  @override
  _Soal1State createState() => _Soal1State();
}

class _Soal1State extends State<tes2> {
  List<bool> _isCheckedList = [false, false, false, false, false];
  TextEditingController _textInputController = TextEditingController();

  @override
  void dispose() {
    _textInputController.dispose();
    super.dispose();
  }

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
                          MaterialPageRoute(builder: (context) => tes1()),
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
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(19 * fem, 100 * fem, 0 * fem, 26 * fem),
              padding: EdgeInsets.fromLTRB(
                  17.5 * fem, 12 * fem, 14.5 * fem, 22 * fem),
              width: 280 * fem,
              height: 400 * fem, //backkground putih
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
                              0 * fem, 30 * fem, 2 * fem, 20 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 244 * fem,
                          ),
                          child: Text(
                            'Apakah anda ingat, aktivitas yang anda lakukan 1 jam yang lalu?',
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        12.5 * fem, 0 * fem, 15.5 * fem, 6 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.white.withOpacity(0.100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: CheckboxListTile(
                        title: Text(
                          'Ya',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        value: _isCheckedList[0],
                        onChanged: (bool? value) {
                          setState(() {
                            _isCheckedList[0] = value ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        12.5 * fem, 0 * fem, 15.5 * fem, 6 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.white.withOpacity(0.100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: CheckboxListTile(
                        title: Text(
                          'Tidak',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        value: _isCheckedList[1],
                        onChanged: (bool? value) {
                          setState(() {
                            _isCheckedList[1] = value ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        40 * fem, 0 * fem, 25 * fem, 30 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    child: Card(
                      color: Colors.white,
                      shadowColor: Colors.white.withOpacity(0.100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: TextField(
                        controller: _textInputController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 0 * fem),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black, width: 2.0 * fem),
                          ),
                          hintText: 'Ketik aktivitas anda di sini',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        105 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 35 * fem,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              5 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 110 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff000000)),
                            color: Color(0xffa0d0ff),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => hasil()),
                              );
                            },
                            child: Center(
                              child: Text(
                                'Selanjutnya',
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), //bg putih
          ],
        ),
      ),
    );
  }
}
