import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      CustomTextButton(text: "Forget Password?",
                      onTap: (){},),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,this.onTap, required this.text,
  });
  final Function()?onTap;
   final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
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
