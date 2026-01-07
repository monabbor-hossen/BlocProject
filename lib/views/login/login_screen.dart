import 'package:blocc/models/user/user_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                focusNode: emailFocusNode,
                decoration: const InputDecoration(hintText: 'Email', border: OutlineInputBorder()),
                onChanged: (value){},
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter email';
                  }
                  return null;
                },
                onFieldSubmitted: (value){},
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                focusNode: passwordFocusNode,
                obscureText: true,
                decoration: const InputDecoration(hintText: 'Password', border: OutlineInputBorder()),
                onChanged: (value){},

                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Password';
                  }
                  return null;
                },
                onFieldSubmitted: (value){},
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
