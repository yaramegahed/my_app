import 'package:flutter/material.dart';
import 'package:my_app/presentation/findaccount.dart';

import 'login.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
            onPressed: () {Navigator.pop(context, MaterialPageRoute(builder :(context)=>const LoginScreen()));},
            icon: const Icon(Icons.arrow_back_ios_new),
            ),
            const Text("Find your account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const Text("Enter your mobile number or email address.",),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Mobile number or email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey),
              width: double.infinity,
              child: MaterialButton(onPressed: ()
              {Navigator.push(context, MaterialPageRoute(builder :(context)=>const FindAccount()));},
                  child: const Text("Find account",
                      style: TextStyle(fontSize: 20,color: Colors.white))),
            ),
          ],
        ),
      )),
    );
  }
}
