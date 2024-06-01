import 'package:first_project62/home_page.dart';
import 'package:first_project62/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key}); // constructor

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var mobileController = TextEditingController();

  //object
  var passwordController = TextEditingController();

  //object
  var emailController = TextEditingController();

  //object
  var formKey = GlobalKey<FormState>();

  // key
  bool isVisible = true;
  bool isVisibleEmail = false;

  //  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.pink,
            statusBarColor: Colors.pink
        ),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(onPressed: (){},
              child: const Text("Help",style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400),))
        ],
      ),
        body: Padding(
      padding: const EdgeInsets.only(top: 70, right: 30, left: 30),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            // scrollDirection:  Axis.horizontal,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center, // y
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal),
                ),
                const SizedBox(
                  height: 50,
                ),
                // TextField(
                //   controller: emailController,
                //  decoration: InputDecoration(
                //   border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //    hintText: "Enter User name",
                //    labelText: "Email",
                //    suffixIcon: Icon(Icons.mail),
                //
                //    // prefixIcon: Icon(Icons.mail)
                //    // labelStyle: TextStyle(fontSize: 20)
                //    // label: Text("Email"),
                //  ),
                //
                // ),
                TextFormField(
                  obscureText: isVisibleEmail,
                  // validator: (value){
                  //  return RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                  //       .hasMatch(value!) ? "please enter valid mail" : null;
                  //
                  // },
                  //     validator: (value){
                  //       if(value!.isEmpty){
                  //         return "please enter valid email";
                  //       }
                  //       return null;
                  //     },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email cannot be empty ";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[a-z]")
                        .hasMatch(value)) {
                      return ("please enter valid email");
                    } else {
                      return null;
                    }
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter User name",
                      labelText: "Email",
                      suffixIcon: IconButton(
                        icon: isVisibleEmail
                            ? const Icon(Icons.email)
                            : const Icon(
                                Icons.email_outlined,
                                color: Colors.red,
                              ),
                        onPressed: () {
                          setState(() {});
                          isVisibleEmail = !isVisibleEmail;
                          // obscureText = isVisible;
                          print(isVisibleEmail);
                        },
                      )

                      // prefixIcon: Icon(Icons.mail)
                      // labelStyle: TextStyle(fontSize: 20)
                      // label: Text("Email"),
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // TextField(
                //   controller: passwordController,
                //   decoration: InputDecoration(
                //    border: OutlineInputBorder(
                //      borderRadius: BorderRadius.circular(10),
                //    ),
                //     hintText: "Enter Password",
                //     labelText: "Password",
                //     suffixIcon: Icon(Icons.remove_red_eye),
                //   //  prefixIcon: Icon(Icons.remove_red_eye),
                //     // labelStyle: TextStyle(fontSize: 20)
                //     //label: Text("Email"),
                //   ),
                //
                //  ),
                TextFormField(
                  obscureText: isVisible,
                  obscuringCharacter: "*",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter valid password";
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Enter Password",
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: isVisible
                            ? Icon(Icons.password)
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.red,
                              ),
                        onPressed: () {
                          setState(() {});
                          isVisible = !isVisible;
                          // obscureText = isVisible;
                          print(isVisible);
                        },
                      )
                      //  prefixIcon: Icon(Icons.remove_red_eye),
                      // labelStyle: TextStyle(fontSize: 20)
                      //label: Text("Email"),
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: mobileController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter valid mobile";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Mobile",
                    suffixIcon: const Icon(Icons.call),
                    labelText: "Mobile",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )),
                ),
                // task widget one line goz2 mno cilk
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text("Create a new ",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      TextButton(
                        onPressed: () {
                          // action
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()));
                        },
                        child: const Text(
                          "account ?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Text("ForgotPassword"),
                const SizedBox(
                  height: 30,
                ),

                ElevatedButton(
                    // style: ButtonStyle(
                    //  backgroundColor: MaterialStateProperty.all(Colors.teal),
                    //
                    // ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal,
                      // shadowColor: Colors.greenAccent,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: const Size(100, 40), //////// HERE
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("login success");
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  HomePage()),
                            (route) => false);
                      }
                      print("done");
                      print(mobileController.text);
                      print(passwordController.text);
                      print(emailController.text);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
