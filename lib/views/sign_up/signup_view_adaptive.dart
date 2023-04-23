
import 'package:flutter/material.dart';
import 'package:seav_phov/views/login/login_view.dart';
import 'package:seav_phov/views/sign_up/signup_view_model.dart';

class SignupViewAdaptive extends StatelessWidget {
  final SignupViewModel viewModel;
  SignupViewAdaptive({required this.viewModel,  Key? key}) :super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    );
    final passwordField = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    );
    final confirmPasswordField = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Confirm Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
    );
    final loginButton = Material(
      color: Colors.blueGrey,
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        child: const Text(
          'Login',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.normal
          ),
        ),
        onPressed: (){
        }
      ),
    );

    return Scaffold(
      appBar: AppBar(
        actions: []
        ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height:80,
                      child: CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 50,
                        ),
                ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    emailField,
                    const SizedBox(
                      height: 25,
                    ),
                    passwordField,
                    const SizedBox(
                      height: 25,
                    ),
                    confirmPasswordField,
                    const SizedBox(
                      height: 25,
                    ),
                    loginButton,
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account already! "),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginView()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
