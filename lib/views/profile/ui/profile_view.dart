import 'package:flutter/material.dart';
import 'package:market_app/core/app_colors.dart';
import 'package:market_app/views/profile/ui/edit_name_view.dart';
import 'package:market_app/views/profile/ui/my_order.dart';
import 'package:market_app/views/profile/ui/widgets/custom_row_btn.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .7,
          child: SingleChildScrollView(
            child: Card(
              margin: EdgeInsets.all(24.0),
              color: AppColors.kWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: AppColors.kPrimaryColor,
                      foregroundColor: AppColors.kWhiteColor,
                      child: Icon(
                        Icons.person,
                        size: 45,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("User Email"),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRowBtn(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){

                          return EditNameView();

                        }));
                      },
                      icon: Icons.edit,
                      text: "Edit Profile",
                    ),
                    SizedBox(height: 10,),
                    CustomRowBtn(
                      onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context){

    return MyOrder();

    }));
    },

                      icon: Icons.shopping_basket,
                      text: "My Orders",
                    ),
                    SizedBox(height: 10,),
                    CustomRowBtn(
                      onTap: () {},
                      icon: Icons.logout,
                      text: "Logout",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

