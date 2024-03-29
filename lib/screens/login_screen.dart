import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:imagisea/screens/HomeScreen.dart';

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
  CountryCode? countryCode =
      const CountryCode(name: 'India', code: 'IN', dialCode: '+91');
  final TextEditingController phoneNumberController = TextEditingController();
  final _pinPutController = TextEditingController();
  static const String routeName = '/material/modal-bottom-sheet';
  bool wait = false;
  int start = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: GradientText(
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
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Image(
                    width: 350.0,
                    image: AssetImage('images/img1.png'),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50, left: 10.0, right: 10.0),
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
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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
                        padding: const EdgeInsets.only(
                            left: 140, top: 15, right: 140, bottom: 15),
                      ),
                      onPressed: () {
                        if (countryCode != null &&
                            phoneNumberController.text.trim().isNotEmpty &&
                            phoneNumberController.text.trim().length == 10) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  '$countryCode!.dialCode)-${phoneNumberController.text.trim()}')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text('Invalid Phone Number Entered')));
                          return;
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
                                decoration: BoxDecoration(
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
                                      child: OtpTextField(
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
                                          if (verificationCode == '12345') {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Homepage()),
                                            );
                                          } else {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                        "Invalid Verification Code"),
                                                    content: Text(
                                                        'Code entered is Invalid - $verificationCode'),
                                                  );
                                                });
                                          }
                                        }, // end onSubmit
                                      ),
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50.0),
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          side: const BorderSide(
                                              color: Colors.white, width: 2),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 85.0, vertical: 11.0),
                                          child: Text(
                                            'VERIFY',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: const Text(
                        'GENERATE OTP',
                        style: TextStyle(
                          fontSize: 15,
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
