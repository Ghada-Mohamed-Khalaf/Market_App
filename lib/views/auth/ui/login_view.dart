import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/views/auth/ui/forget_password_view.dart';
import 'package:market_app/views/auth/ui/sign_up.dart';
import 'package:market_app/views/auth/ui/widgets/custom_arrow_button.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_button.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_field.dart';
import 'package:market_app/views/nav_bar/ui/main_home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome To our Market",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 25,
            ),
            Card(
              margin: EdgeInsets.all(24.0),
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                      isSecure: false,
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      isSecure: true,
                      keyboardType: TextInputType.visiblePassword,
                      suffIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off,
                        ),
                      ),
                      labelText: "Password",
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ForgetPasswordView();
                            }));
                          },
                          text: "Forget Password?",

                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.kPrimaryColor,
                              foregroundColor: AppColors.kWhiteColor,
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 10.0,
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                color: AppColors.kWhiteColor,
                              ),
                            ),),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Login With Google",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        CustomArowButton(
                              onTap: () {
                           // Navigator.push(context, MaterialPageRoute(builder: (context) {
                           //      return MainHomeView();
                           //      }));
                               },
                          ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15.0,
                        ),),
                        SizedBox(width: 7,),
                        CustomTextButton(text: "Sign up",onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SignUp();
                          }));

                        },),
                      ],
                    )
                  ],
                ),
              ),
            ),
                    ],
                  ),
          )),
    );
  }
}






