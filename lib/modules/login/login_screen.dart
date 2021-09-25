import 'package:flutter/material.dart';
import 'package:online_shop/modules/home/discover.dart';
import 'package:online_shop/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var checkBoxValue = false;
  var usernameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isUser = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          color: Colors.amber,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image(
                  width: 250,
                  height: 250,
                  image: NetworkImage('https://download.logo.wine/logo/Best_Buy/Best_Buy-Logo.wine.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                    lable: 'Enter your email',
                    type: TextInputType.emailAddress,
                    controller: emailController,
                    prefix: Icon(
                      Icons.email,
                    ),
                    function: (value){
                  if(value!.isEmpty){
                    return 'Your email is empty!';
                  }
                  return null;
                },
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                    lable: 'Enter your password',
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    prefix: Icon(
                      Icons.lock,
                    ),
                    suffix: Icon(
                      Icons.remove_red_eye,
                    ),
                    isPassword: true,
                    function: (value){
                      if(value!.isEmpty){
                        return 'Your password is empty!';
                      }
                      return null;
                    },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: checkBoxValue,
                        onChanged: (newValue){
                          setState(() {
                            checkBoxValue = newValue!;
                          });
                        }
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    lable: 'Login',
                    onPress: (){
                      if(formKey.currentState!.validate()){
                        print(emailController.text);
                        print(passwordController.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DiscoverScreen(),
                          ),
                        );
                      }

                    },
                  background: Colors.black,
                  width: 200,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultButton(
                        lable: 'Admin',
                        onPress: (){
                          setState(() {
                            isUser = false;
                          });
                        },
                      background: isUser? Colors.black : Colors.grey,
                      width: 150,
                      lableColor: isUser? Colors.white : Colors.black,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    defaultButton(
                      lable:'User',
                      onPress: (){
                        setState(() {
                          isUser = true;
                        });
                      },
                      background: isUser? Colors.grey : Colors.black ,
                      width: 150,
                      lableColor: isUser? Colors.black : Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 200.0,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

