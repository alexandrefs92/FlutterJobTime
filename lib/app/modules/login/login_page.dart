import 'dart:async';

import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller;
  const LoginPage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return BlocListener<LoginController, LoginState>(
      bloc: controller,
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          final message = state.errorMessage ?? 'Erro ao realizar login';
          AsukaSnackbar.alert(message).show();
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0XFF0092B9),
            Color(0XFF0167B2),
          ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/logo.png'),
                SizedBox(height: screenSize.height * .1),
                SizedBox(
                    width: screenSize.width * .8,
                    height: 49,
                    child: ElevatedButton(
                        onPressed: () {
                          controller.signIn();
                        },
                        style:
                            ElevatedButton.styleFrom(primary: Colors.grey[200]),
                        child: Image.asset('lib/assets/images/google.png'))),
                BlocSelector<LoginController, LoginState, bool>(
                  bloc: controller,
                  selector: (state) {
                    return state.status == LoginStatus.loading;
                  },
                  builder: (context, show) {
                    return Visibility(
                      visible: show,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}