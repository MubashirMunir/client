import 'package:client/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<LoginPageController>(builder: (ctrl) {
      return Scaffold(
         // appBar: AppBar(title: Text(''),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const Text('Welcome to footwear',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20)),
          SizedBox(height: 10,),
          TextFormField(
            autofillHints: ['mubasharmunir000@gmail.com'],
            controller: ctrl.email,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText:'Enter your username',
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(style: TextStyle(),
            controller: ctrl.password,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText:'Enter your username',
            ),
          ),
              const SizedBox(height: 10),
          ElevatedButton(onPressed: (){ctrl.login();}, child: Text('Sign Up'))
            ]),
      ),
    );
  }
    );
  }
}
