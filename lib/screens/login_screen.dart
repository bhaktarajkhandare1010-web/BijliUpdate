import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  String verificationId = "";

  bool otpSent = false;

  void sendOTP() async {

    await auth.verifyPhoneNumber(
      phoneNumber: "+91${phoneController.text}",
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.message ?? "OTP Failed")),
        );
      },
      codeSent: (String id, int? resendToken) {

        setState(() {
          verificationId = id;
          otpSent = true;
        });

      },
      codeAutoRetrievalTimeout: (String id) {
        verificationId = id;
      },
    );
  }


  void verifyOTP() async {

    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(
          verificationId: verificationId,
          smsCode: otpController.text,
        );

    await auth.signInWithCredential(credential);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Login Successful"),
      ),
    );

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("⚡ Bijli Update"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Mobile Number",
                hintText: "9876543210",
              ),
            ),


            const SizedBox(height:20),


            if(otpSent)

            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Enter OTP",
              ),
            ),


            const SizedBox(height:20),


            ElevatedButton(

              onPressed: otpSent ? verifyOTP : sendOTP,

              child: Text(
                otpSent ? "Verify OTP" : "Send OTP",
              ),

            )

          ],
        ),
      ),

    );
  }
}


