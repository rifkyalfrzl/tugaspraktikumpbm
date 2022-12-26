import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praktikum_8/home_screen.dart';
import 'package:praktikum_8/state_management/password.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bunny.png')),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      labelText: "Username",
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 20)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (() {
                          context.read<Password>().togglePasswordVisibility();
                        }),
                        child: Icon(context.watch<Password>().isHidePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      labelText: "Password",
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 20)),
                  obscureText: context.watch<Password>().isHidePassword,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (value) {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 100,
                  height: 40,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 103, 212, 249),
                        ),
                      ),
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
