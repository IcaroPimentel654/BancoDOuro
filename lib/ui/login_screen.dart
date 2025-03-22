import 'package:bancodouro/ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/banner.png', width: 450),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset('assets/images/stars.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 32),
                Image.asset('assets/images/logo.png', width: 150),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Sistema de gestÃ£o de contas',
                      style: TextStyle(fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                    TextFormField(
                      decoration: InputDecoration(label: Text('E-mail')),
                    ),
                    SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(label: Text('Senha')),
                      obscureText: true,
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.orange,
                        ),
                      ),
                      onPressed:
                          () => {
                            Navigator.pushReplacementNamed(context, "home"),
                          },
                      child: Text(
                        "Enviar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
