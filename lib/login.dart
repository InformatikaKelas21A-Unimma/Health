import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:health_kelompok2/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF59A7F3),
      body: Center(
        child: Container(
          width: 310,
          height: 460,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'images/logohealth.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15),

              //EMAIL
              Center(
                child: SizedBox(
                  height: 35.0,
                  width: 270.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan Email",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              //PASSWORD
              Center(
                child: SizedBox(
                  height: 35.0,
                  width: 270.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan Password",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF1976D2)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 18)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(270, 40)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text("Masuk"),
                ),
              ),

              SizedBox(
                height: 30.0,
              ),

              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Belum Mempunyai Akun? ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Daftar',
                      style: TextStyle(
                        color: Color(0xFF1976D2),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 1,
                    color: Colors.black,
                  ),
                ],
              ),

              SizedBox(
                height: 12.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'images/google.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    'Lanjutkan Dengan Google',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
