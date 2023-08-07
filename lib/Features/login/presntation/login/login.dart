import 'package:finalproject/core/utile/widget/customTextFormField.dart';
import 'package:flutter/material.dart';

import '../../../../core/utile/widget/csutomButton.dart';
import '../../../Register/presntation/view/view_of_register.dart';

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
              w: 150,
              borderRadius: 20,
              h: 50,
              onPress: (){},
              colorButton: Colors.blue,
              colorText: Colors.black,
            sizeText: 25,
          ),
          SizedBox(height: 20),
          CustomBottom(
              name: "donot have account! signup",
              w: 150,
              borderRadius: 20,
              h: 50,
              onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (_){
                  return RegisterScreen();
                }));
              },
              colorButton: Colors.blue,
              colorText: Colors.black,
            sizeText: 25,
          ),
        ],
      ),
    );
  }
}
