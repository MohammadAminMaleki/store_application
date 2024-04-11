import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:store_application/splash_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController textEditingPhoneController =
      TextEditingController();

  final TextEditingController textEditingPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final widthMobileSize = MediaQuery.of(context).size.width;
    final heightMobileSize = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        body: Stack(
          children: <Widget>[
            Container(
              width: widthMobileSize,
              height: heightMobileSize / 2,
              color: const Color.fromARGB(255, 29, 29, 29),
              child: 'صفحه ثبت نام'.textSyleToText(Colors.white, 45),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: 500,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child:
                                'شماره تلفن'.textSyleToText(Colors.black, 15)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: textEditingPhoneController,
                            keyboardType: TextInputType.emailAddress,
                            autofocus: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.phone),
                              labelText: 'Please enter your phone number',
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: 'رمز عبور'.textSyleToText(Colors.black, 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: textEditingPasswordController,
                            keyboardType: TextInputType.visiblePassword,
                            autofocus: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    
                                  });
                                },
                                icon: const Icon(Icons.remove_red_eye),
                              ),
                              labelText: 'Please enter your password',
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () async {
                              final supabase = Supabase.instance.client;
                              await supabase.auth
                                  .signUp(password: '123', phone: null);
                              Navigator.pushNamed(context, '/third');
                            },
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 29, 29, 29),
                              ),
                            ),
                            child: 'ثبت نام'.textSyleToText(Colors.white, 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        'اگر حساب کاربری دارید'
                            .textSyleToText(Colors.black, 20),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/fourth');
                            },
                            child:
                                'وارد شوید'.textSyleToText(Colors.black, 20)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
