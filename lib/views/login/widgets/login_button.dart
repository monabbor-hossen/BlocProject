import 'package:blocc/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  const LoginButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (current, previous) => false,
      builder: (context,state) {
        return ElevatedButton(onPressed: (){
          if(formKey.currentState!.validate()){
            if(state.password.length < 6){
              print('I am here');
            }
          }
        }, child: const Text('Login'));
      }
    );
  }
}
