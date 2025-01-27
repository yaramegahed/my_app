import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 150,


              child: ListView.builder(
                itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person,color: Colors.black,),
                    backgroundColor: Colors.cyan,
                  ),
                );
              }),
            ),
            Container(
              height: 100,
              width: 300,

              color: Colors.blueGrey,
              child: const Center(child: Text("data",style: TextStyle(fontSize: 35),)),

            ),
  ]
        ),

      ),

    );
  }
}
