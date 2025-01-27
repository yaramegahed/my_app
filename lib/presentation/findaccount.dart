import 'package:flutter/material.dart';
import 'package:my_app/presentation/forget.dart';

class FindAccount extends StatelessWidget {
  const FindAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {Navigator.pop(context, MaterialPageRoute(builder :(context)=>const ForgetPassword()));},
                  icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Text("Choose a way to log in.",style: TextStyle(fontSize: 20,color: Colors.white)),
            const SizedBox(height: 20,),
             Container(
               height: 130,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Colors.black)),
               child: Column(
                 children: [
                   const SizedBox(height: 10,),
                   Row(
                    children: [
                      const SizedBox(width: 20,),
                      const Text("Get code or link via email",style: TextStyle(fontSize: 20,color: Colors.white),),
                      const Spacer(),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.radio_button_checked,color: Colors.brown)),
                    ],
            ),
                   const SizedBox(height: 10,),
                   Row(
                     children: [
                       const SizedBox(width: 20,),
                       const Text("Enter password to log in",style: TextStyle(fontSize: 20,color: Colors.white)),
                       const Spacer(),
                       IconButton(onPressed: (){}, icon: const Icon(Icons.radio_button_unchecked,color: Colors.white))
                     ],
                   ),
                 ],
               ),

             ),
          ],
      ),
        ),
      ),
    );
  }
}
