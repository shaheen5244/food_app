import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();


  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),

            Text(
              'Food Delivery App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              MyTextfield(
                controller: emailController,
                 hintText: 'Email',
                  obscureText: false,
                  ),

              const SizedBox(height: 10),
                
                 MyTextfield(
                controller: passwordController,
                 hintText: 'Password', 
                  obscureText: true,
                  ),

              const SizedBox(height: 10),

              MyButton(
                text: "Sign In",
                onTap: () {},
              ),

             const SizedBox(height: 25), 

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),),
                const SizedBox(width: 4,),
                GestureDetector(
                  on 
                  child: Text('Register now',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
             ),

       ], ),
      ),
    );
  }
}