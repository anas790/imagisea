import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'dart:async';
import 'package:imagisea/profile.dart';


void main() {
  runApp(const MyApp());
  MyProfile();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagisea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyProfile(),
      // const Loading_screen(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class LoginState extends State<Login> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  final TextEditingController phoneNumberController = TextEditingController();
  final _pinPutController = TextEditingController();
  static const String routeName = '/material/modal-bottom-sheet';
  bool wait = false;
  Timer? _timer;
  int start = 30;
  // String textName = 'VERIFY';

  // @override
  // void initState() {
  //   super.initState();
  //   startTimer();
  // }
  //
  // void startTimer() {
  //   const onsec = Duration(seconds: 1);
  //   _timer = Timer.periodic(
  //     onsec,
  //     (timer) => setState(() {
  //       if (start < 1) {
  //         timer.cancel();
  //       } else {
  //         start = start--;
  //       }
  //     }),
  //   );
  // }
  //
  // void resetTimer() {
  //   setState(() {
  //     start = 60;
  //   });
  //   startTimer();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80.0,
                ),
                GradientText(
                  'IMAGISEA',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 50,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: [
                      Colors.blue.shade900,
                      Colors.blue.shade500,
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Image(
                  width: 350.0,
                  image: AssetImage('images/img1.png'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextFormField(
                    controller: phoneNumberController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(
                          width: 5,
                          color: Colors.black26,
                        ),
                      ),
                      prefixIcon: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                final code = await countryPicker.showPicker(
                                    context: context);
                                setState(() {
                                  countryCode = code;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7.0, vertical: 0.0),
                                    child: countryCode != null
                                        ? countryCode!.flagImage
                                        : null,
                                  ),
                                  const Icon(
                                    Icons.arrow_right,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    countryCode?.dialCode ?? '+ country code',
                                    style: const TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      labelStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        textAlign: TextAlign.left,
                        'A verification OTP will be sent to your phone number via SMS.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 50,
                  width: 390,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.only(left: 140, top: 15, right: 140, bottom: 15),
                      ),
                      onPressed: () {
                        if (countryCode != null) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  '$countryCode!.dialCode)-${phoneNumberController.text.trim()}')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Please select a country code')));
                        }

                        showModalBottomSheet(
                            backgroundColor: Colors.blue,
                            enableDrag: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(55.0),
                                topRight: Radius.circular(55.0),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration:BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(55),
                                    topRight: Radius.circular(55),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topLeft,
                                    colors: [
                                      Colors.blue.shade900,
                                      Colors.blue.shade500,
                                    ],
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 50.0,
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        'OTP Sent Successfully',
                                        style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 25.0,
                                      ),
                                    ),
                                    const Center(
                                      child: Text(
                                        'Please enter the OTP sent to your phone\n        '
                                        '             number via SMS',
                                        style: TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 25,
                                        bottom: 6.0,
                                      ),
                                    ),
                                    OtpTextField(
                                      numberOfFields: 5,
                                      borderColor: const Color(0xFF512DA8),
                                      fieldWidth: 50,
                                      filled: true,
                                      fillColor: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular((10.0))),

                                      //set to true to show as box or false to show as dash
                                      showFieldAsBox: true,
                                      //runs when a code is typed in
                                      onCodeChanged: (String code) {
                                        //handle validation or checks here
                                      },
                                      //runs when every textfield is filled
                                      onSubmit: (String verificationCode) {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: const Text(
                                                    "Verification Code"),
                                                content: Text(
                                                    'Code entered is $verificationCode'),
                                              );
                                            });
                                      }, // end onSubmit
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 15.0,
                                      ),
                                    ),
                                    Center(
                                      child: RichText(
                                          text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'You will get OTP by SMS in ',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                          TextSpan(
                                            text: '$start ',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.orangeAccent),
                                          ),
                                          const TextSpan(
                                            text: 'sec',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ],
                                      )),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        bottom: 25.0,
                                      ),
                                    ),

                                    OutlinedButton(
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        side: const BorderSide(
                                            color: Colors.white,
                                            width: 2),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 85.0, vertical: 11.0),
                                        child: Text(
                                          'VERIFY',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,

                                          ),
                                        ),
                                      ),
                                    )

                                  ],
                                ),
                              );
                            }
                        );
                      },
                      child: const Text(
                        'GENERATE OTP',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
