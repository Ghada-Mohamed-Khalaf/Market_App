import 'package:flutter/material.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_field.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: "Search in Market",
      isSecure: false,
      suffIcon:
      ElevatedButton.icon(onPressed: () {}, label: Icon(Icons.search)),
    );
  }
}
