import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/ui/screens/auth/register_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    height: 410,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/food_bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: FadeInDown(
                    duration: const Duration(milliseconds: 1200),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon:
                            const Icon(Icons.help_outline, color: Colors.black),
                        onPressed: () {
                          // Add your help button action here
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1000),
                    child: const Text(
                      'Create an Account',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1200),
                    child: const Text(
                      'Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor incididunt ut.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1400),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF3FB4B1), // Button color
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Register using email',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                              width: 180, "assets/tugmalar/google.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                              width: 180, "assets/tugmalar/apple.png"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Have an account? ',
                          style: const TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                color: Color(0xFF3FB4B1),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Navigate to login page
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
