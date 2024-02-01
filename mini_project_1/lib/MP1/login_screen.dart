import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  //const LoginScreen({super.key});
  bool _obscureText = true;
  //GoogleFonts.config.allowRuntimeFetching = false;

  @override
  Widget build(BuildContext context) {
    String ImgLink = 'https://i.pinimg.com/originals/b3/f9/6e/b3f96eae88adb466c67b9a1abd6f5be3.jpg';
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.network(ImgLink, fit: BoxFit.cover),
        toolbarHeight: 200),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            children: [
              //Image.asset("assets/img/Arknights_logo.png"),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.only(left: 50),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome!',
                        style: TextStyles.headerStyle
                      ),
                      TextSpan(text:'\n'),
                      TextSpan(
                        text: 'Sign In to Continue',
                        style: TextStyles.subheaderStyle
                      ),
                    ],
                  ),
                ),
              ),

              //('Welcome!', style: TextStyles.headerStyle, textAlign: TextAlign.left,),
              
              SizedBox(height: 30),

              // USERNAME
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 77, 137, 192)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email or username',
                      ),
                    )
                  )
                )
              ),
              SizedBox(height: 10),

              // PASSWORD
              Padding(
                padding: EdgeInsets.all(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 77, 137, 192)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  // setState(() {
                                  //   _obscureText = !_obscureText;
                                  // });
                                },
                              ),
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),     
              SizedBox(height: 10),

              // FORGOT PASSWORD
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: (){
                    print('Send a confirmation email');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [TextSpan(text: 'Forgot password?', style: TextStyles.smallerStyle)],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // LOGIN BUTTON
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                onPressed: (){
                  print('Login process...');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 106, 117, 155),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )
                ),
              ),
              ),
              SizedBox(height: 10),

              // DON'T HAVE AN ACCOUNT
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: (){
                    print('To the Sign Up page');
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Don't have an account?", style: TextStyles.smallerStyle),
                        TextSpan(text: '  '),
                        TextSpan(text: 'Sign Up', style: TextStyles.linkedText)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}


// Style khusus teks
class TextStyles {
  /// UNTUK HEADER
  static const TextStyle headerStyle = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 64, 83, 100),
    fontStyle: GoogleFonts.abyssinicaSIL(),
  );
  static const TextStyle subheaderStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 64, 83, 100),
    fontStyle: GoogleFonts.abyssinicaSIL(),
  );

  /// UNTUK BODY
  static const TextStyle bodyStyle = TextStyle(
    fontSize: 15,
    color: Color.fromARGB(255, 84, 115, 143),
    fontStyle: GoogleFonts.jura(),
  );

  static const TextStyle smallerStyle = TextStyle(
    fontSize: 10,
    color: Color.fromARGB(255, 104, 104, 104),
    fontStyle: GoogleFonts.jura(),
  );

  static const TextStyle linkedText = TextStyle(
    fontSize: 10,
    color: Color.fromARGB(255, 84, 115, 143),
    fontStyle: GoogleFonts.jura(),
  );
}