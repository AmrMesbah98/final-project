import 'package:flutter/material.dart';

import '../../../../core/widget/csutomButton.dart';
import '../../../../core/widget/customTextFormField.dart';
import '../../../Register/presntation/view/view_of_register.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(700),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Colors.blue[100]),
                // ignore: prefer_const_constructors
                child: Center(
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                  "LOGIN ",
                  style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Colors.black45,
                  ),
                ),
                        Text(
                  "    WELCOME TO ASEC ",
                  style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                  ),
                ),
                      ],
                    )

                ),
              ),
              const SizedBox(height: 20),
               Image(
                  image: const AssetImage("assets/images/login.png"),
                width:MediaQuery.of(context).size.width * 0.9 ,
                height: MediaQuery.of(context).size.height *0.3,
                 fit: BoxFit.fill,
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              CustomBottom(
                name: "Login",
                w: MediaQuery.of(context).size.width * .7,
                borderRadius: 20,
                h: 50,
                onPress: () {},
                colorButton: Colors.blue,
                colorText: Colors.black,
                sizeText: 25,
              ),
              const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text(" haven't a account Create account  ? ",style: TextStyle(fontSize: 16),),
                   GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return RegisterScreen();
                        }));
                      },
                      child: Text("Sing up",style: TextStyle(color: Colors.blue[300],fontSize: 20),)),
                 ],
               )
            ],
          ),
        ),
      ),
    );
  }
}
