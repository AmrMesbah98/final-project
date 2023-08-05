import 'package:finalproject/utile/widget/csutomButton.dart';
import 'package:finalproject/utile/widget/customTextFormField.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});


  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 100),
          CustomTextFormField(
              label: "Email",
              iconData: Icons.email_outlined,
              controller: emailController,
              keyBoardType: TextInputType.emailAddress,
            obscure: false,
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
              label: "Password",
              iconData: Icons.lock,
              controller: passwordController,
              keyBoardType: TextInputType.visiblePassword,
            obscure: true,
          ),
          const SizedBox(height:20),
          CustomBottom(
              name: "Login",
              width: 150,
              borderRadius: 20,
              height: 50,
              onPress: (){},
              colorButton: Colors.blue,
              colorText: Colors.black,
            sizeText: 25,
          )
        ],
      ),
    );
  }
}
