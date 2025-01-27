import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/firebase/firebase_auth.dart';
import 'package:my_app/presentation/login.dart';
import 'package:my_app/presentation/screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final MyFirebaseAuth _auth = MyFirebaseAuth();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text("Sign Up",style: TextStyle(fontSize: 25),)),
        leading: IconButton(
          onPressed: () {Navigator.pop(context, MaterialPageRoute(builder :(context)=>const LoginScreen()));},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                 TextFormField(
                   keyboardType: TextInputType.text,
                   decoration: const InputDecoration(
                     labelText: "First Name",
                     border: OutlineInputBorder(),
                   ),
                 ),
                const SizedBox(height: 30,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email,color: Colors.cyan,),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock,color: Colors.cyan,),
                    suffixIcon: Icon(Icons.visibility_off,color: Colors.cyan,),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock,color: Colors.cyan,),
                    suffixIcon: Icon(Icons.visibility_off,color: Colors.cyan,),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30,),
                const Row(
                  children: [
                    Text("Phone Number",style: TextStyle(fontSize: 20),),
                  ],
                ),
                const SizedBox(height: 15,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration:const  InputDecoration(

                    icon: SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          Text("+20"),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ),labelText: "phone",
                    border: OutlineInputBorder(),

                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                  width: double.infinity,height: 50,
                  decoration: BoxDecoration(color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(24)),
                  child: MaterialButton(onPressed: _signUp,
                      child: const Text("Sign up",
                          style: TextStyle(fontSize: 20,color: Colors.white))),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
  void _signUp() async{
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    
    User? user = await _auth.signUpwithEmailandPassword(email, password);
    if(user != null){
      print("user is successfully created");
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen1(),));
    }else{
      print("object");
    }
  }

}
