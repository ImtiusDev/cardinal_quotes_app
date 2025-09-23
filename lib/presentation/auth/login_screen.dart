import 'package:cardinal_quotes_app/core/constants/app_colors.dart';
import 'package:cardinal_quotes_app/core/constants/app_images_path.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/custom_button.dart';
import 'package:cardinal_quotes_app/core/custom%20widgets/custom_textfield.dart';
import 'package:cardinal_quotes_app/presentation/home/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  LoginScreen({super.key});
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();


  void login(BuildContext context) {
    String email = emailTextController.text;
    String password = passwordTextController.text;

    if (email == 'hello' && password == '123') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } 
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Invalid email or password")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 0,
              child: Image.asset(AppImagePath.authBirdImage,
                opacity: AlwaysStoppedAnimation(0.5),
              ),
            ),
        
            Positioned(
              bottom: 0,
              child: Image.asset(AppImagePath.authFlowerImage,
                opacity: AlwaysStoppedAnimation(0.5),
              ),
            ),
            
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
        
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          text: "Sign Up",
                          onPressed: () {},
                          backgroundColor: AppColors.primaryWhite,
                          textColor: AppColors.primary,
                          height: 55,
                          width: 115,
                        ),
                        CustomButton(
                          text: "Login",
                          onPressed: (){
                            login(context);
                          },
                          backgroundColor: AppColors.primary,
                          textColor: AppColors.primaryWhite,
                          height: 55,
                          width: 110,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                
                    CustomTextField(
                      controller: emailTextController, 
                      hintText: "Enter Your Email Address"
                    ),
                    const SizedBox(height: 16.0),
                
                    PasswordTextField(
                      controller: passwordTextController,
                      hintText: "Enter Your Password",
                    ),
                
        
                    const SizedBox(height: 24.0),
                
                    CustomButton(
                      width: 100,
                      height: 55,
                      text: "Next",
                      onPressed: () {
                        login(context); 
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      backgroundColor: AppColors.primary,
                      textColor: AppColors.primaryWhite,
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


