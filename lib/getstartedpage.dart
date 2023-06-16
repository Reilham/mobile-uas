import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileuas/start.dart';

class getstartedpage extends StatelessWidget {
  const getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/cuci_sepatu 1.png"))),
        ),
        SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("NEAT",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Color(0xffFFFFFF),
                        fontWeight: FontWeight.w800,
                      )),
                  Text(" SNEAKER",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "I wish you was here Reviving Life to Your Shoes",
              style: GoogleFonts.poppins(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StartPage()),
                );
              },
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 80),
                  padding: EdgeInsets.symmetric(horizontal: 58, vertical: 14),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 152, 225),
                      borderRadius: BorderRadius.circular(17)),
                  child: Text("Get Started",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ),
          ],
        ))
      ]),
    );
  }
}
