import 'package:bancodouro/model/account.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:bancodouro/ui/widgets/account_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        title: Text('Sistema de gestão de conta'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "login");
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AccountWidget(
          account: Account(
            id: "1",
            name: 'Icaro',
            lastName: "Pimentel",
            balance: 1000.00,
          ),
        ),
      ),
    );
  }
}
