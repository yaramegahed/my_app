import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/download.jpeg"),
                const SizedBox(height: 35,),
                const Text("Enjoy Your Coffee",style: TextStyle(fontSize: 25,color: Colors.brown),),
                const SizedBox(height: 40,),
                const SizedBox(width: 20),
                Image.asset("assets/images/OIP4.jpeg"),
                const SizedBox(height: 20,),
                const Text("With Love",style: TextStyle(fontSize: 25,color: Colors.brown),),
              ],
            ),
            const SizedBox(width: 20),
            Image.asset("assets/images/OIP2.jpeg"),
            const SizedBox(width: 20,height: 100,),
            Column(
              children: [
                Image.asset("assets/images/OIP.jpeg"),
                const SizedBox(height: 90,),
                Image.asset("assets/images/OIP6.jpeg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
