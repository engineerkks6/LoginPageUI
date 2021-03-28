import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: DrawClip(),
                    child: Container(
                      height: size.height / 2.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xffff5f6d), Color(0xffffc371)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 2.8,
                    width: double.infinity,
                    child: Image.network(
                        'https://i.postimg.cc/Gt0VM7MY/tinder.png'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Text(
                  "SIGN IN",
                  style: GoogleFonts.mukta(
                    color: Color(0xffff5f6d),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    hintText: "Email Address...",
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    fillColor: Colors.grey[200],
                    hintText: "Password...",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 186),
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.mukta(
                    color: Colors.grey[500],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: 10),
                child: TextButton(
                  onPressed: () {},
                  child: Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffff5f6d),
                      ),
                      height: 50,
                      child: Center(
                        child: Text("SIGN IN",
                            style: GoogleFonts.mukta(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "OR",
                  style: GoogleFonts.mukta(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    social('https://i.postimg.cc/HxFdTLVG/google-plus.png'),
                    social('https://i.postimg.cc/0y4tWK3q/facebook-2.png'),
                    social('https://i.postimg.cc/GpsXZhwT/twitter-3.png'),
                    social('https://i.postimg.cc/7YYmqNrk/linkedin.png'),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Center(
                child: Text(
                  "Dont have an account?",
                  style: GoogleFonts.mukta(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.mukta(
                    color: Color(0xffff5f6d),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Self Made this Widget
Widget social(String url) {
  return Material(
    borderRadius: BorderRadius.circular(8),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Image.network(
        url,
        height: 28,
        width: 28,
      ),
    ),
  );
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.1, size.height - 50);
    path.lineTo(size.width * 0.9, size.height - 50);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
