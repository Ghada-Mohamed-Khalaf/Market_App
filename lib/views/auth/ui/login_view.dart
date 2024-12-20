import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

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
                      prefIcon: Icon(Icons.email),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomTextFormField(
                      isSecure: true,
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
                          text: "Forget Password?",
                          onTap: () {},
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
                            ))
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
                          onTap: (){},
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15.0,
                        ),),
                        SizedBox(width: 7,),
                        CustomTextButton(text: "Sign up",onTap: (){},),
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

class CustomArowButton extends StatelessWidget {
  CustomArowButton({
    super.key,required this.onTap,
  });
  final Function()?onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          foregroundColor: AppColors.kWhiteColor,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Icon(Icons.arrow_forward, color: AppColors.kWhiteColor),
        ));
  }
}

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    this.onTap,
    required this.text,
  });

  final Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
            color: AppColors.kPrimaryColor),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.suffIcon,
    this.prefIcon,
    required this.isSecure,
  });

  final String labelText;
  final Widget? suffIcon;
  final Widget? prefIcon;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      obscuringCharacter: "*",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This Field is Required";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffIcon,
        prefixIcon: prefIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.kBordersideColor,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
