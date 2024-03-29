import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OJ-TICKET',
      theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
        Theme.of(context).textTheme,
      )),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xFFF9F9F9),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 139,
                      ),
                      Text(
                        'OJ-Tix',
                        style: TextStyle(
                            color: Color(0xFF407BFF),
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your Ticket Assistant',
                        style: TextStyle(
                            color: Color(0xFF1E282D),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: 88,
                      ),
                      Container(
                        width: 179,
                        height: 43,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF407BFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 15,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: 179,
                        height: 43,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFB3CAFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Register');
                          },
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Color(0xFF1E282D),
                                fontSize: 15,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 434,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/bg-home.png'))))
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
