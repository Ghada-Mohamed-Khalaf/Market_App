import 'package:flutter/material.dart';
import 'package:market_app/core/components/Cusrom_search_field.dart';
import 'package:market_app/views/auth/ui/widgets/custom_arrow_button.dart';
import 'package:market_app/views/auth/ui/widgets/custom_text_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CustomSearchField(),
        ],
      ),
    );
  }
}

