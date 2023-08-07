import 'package:finalproject/core/utile/widget/csutomButton.dart';
import 'package:finalproject/core/utile/widget/customTextFormField.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
   RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();



  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    addressController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Register",style: TextStyle(color: Colors.white,fontSize:25 ),),
        centerTitle: true,
        backgroundColor: Colors.black,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
                label: "FirstName",
                iconData: Icons.person,
                controller: firstNameController,
                keyBoardType: TextInputType.text,
                obscure: false
            ),
            CustomTextFormField(
                label: "LastName",
                iconData: Icons.person,
                controller: lastNameController,
                keyBoardType: TextInputType.text,
                obscure: false
            ),
            CustomTextFormField(
                label: "Email",
                iconData: Icons.email_outlined,
                controller: emailController,
                keyBoardType: TextInputType.emailAddress,
                obscure: false
            ),
            CustomTextFormField(
                label: "phone",
                iconData: Icons.phone_outlined,
                controller: phoneController,
                keyBoardType: TextInputType.number,
                obscure: false
            ),
            CustomTextFormField(
                label: "Address",
                iconData: Icons.location_on_outlined,
                controller: addressController,
                keyBoardType: TextInputType.text,
                obscure: false
            ),
            CustomTextFormField(
                label: "Password",
                iconData: Icons.lock,
                controller: passwordController,
                keyBoardType: TextInputType.visiblePassword,
                obscure: true
            ),
            CustomBottom(
                name: "Register",
                w: width * 0.5,
                borderRadius: 20,
                h: height * 0.1,
                onPress: (){},
                colorButton: Colors.blueAccent,
                colorText: Colors.white,
                sizeText: 30
            )
          ],
        ),
      ),
    );
  }
}
