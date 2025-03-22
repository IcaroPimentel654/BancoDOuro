import 'package:bancodouro/model/account.dart';
import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nome Completo: ${account.name} ${account.lastName}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('ID: ${account.id}'),
              Text('Saldo: ${account.balance}'),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
