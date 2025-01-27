import 'package:flutter/material.dart';
import 'package:my_app/presentation/Profile.dart';
import 'package:my_app/presentation/searchScreen.dart';

import 'favoriteScreen.dart';

class HomeScreen extends StatefulWidget {

   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  List<IconData> data=[
    Icons.home,
    Icons.favorite_border,
    Icons.search,
  ];
  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.blueGrey,
      title: const Center(child: Text("C a f e",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),)),
      actions: [IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder :(context)=>const Profile()));},
          icon: const Icon(Icons.account_circle_rounded,))],
    ),
      drawer: Drawer(
        width: MediaQuery
            .of(context)
            .size
            .width / 2 + 80,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
        DrawerHeader(
        decoration: const BoxDecoration(
        color: Colors.blueGrey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder :(context)=>const Profile()));},
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
                radius: 35,
              ),
            ),
            const SizedBox(height: 15),
            const Text("name",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 5,),
            const Text("@username", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
            const ListBody(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.settings,color: Colors.redAccent,size: 25),
                      SizedBox(width: 15),
                      Text("Setting",style: TextStyle(fontSize: 23,color: Colors.black)),

                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                   padding: EdgeInsets.all(10.0),
                   child: Row(
                     children: [
                      Icon(Icons.notifications,color: Colors.redAccent,size: 25),
                      SizedBox(width: 15),
                      Text("Notifications",style: TextStyle(fontSize: 23,color: Colors.black)),

              ],
            ),
              ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.bookmark,color: Colors.redAccent,size: 25),
                      SizedBox(width: 15),
                      Text("Bookmark",style: TextStyle(fontSize: 23,color: Colors.black)),

                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.support,color: Colors.redAccent,size: 25),
                      SizedBox(width: 15),
                      Text("Support",style: TextStyle(fontSize: 23,color: Colors.black)),

                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.logout,color: Colors.redAccent,size: 25),
                      SizedBox(width: 15),
                      Text("Log out",style: TextStyle(fontSize: 23,color: Colors.black)),

                    ],
                  ),
                ),
      ],
      ),
    ],
     ),
      ),
      body: SafeArea(
        child: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),

        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey,
          child: Container(
            height: 70,
            width: double.infinity,
            child: ListView.builder(
              itemCount: data.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (ctx, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: i == selectedIndex
                              ? const Border(
                            top: BorderSide(width: 3, color: Colors.white),
                          )
                              : null,
                          gradient: i == selectedIndex
                              ? LinearGradient(
                            colors: [
                              Colors.brown.shade100,
                              Colors.brown,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                              : null,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          data[i],
                          size: 25,
                          color:
                          i == selectedIndex ? Colors.white : Colors.brown,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        _getLabel(i),
                        style: TextStyle(
                          fontSize: 12,
                          color:
                          i == selectedIndex ? Colors.white : Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ),
    );
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Favorites';
      case 2:
        return 'Search';
      default:
        return '';
    }
  }
}
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            const Text("Welcome to our Cafe",
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
            const SizedBox(height: 20),
            Image.asset("assets/images/coffee-shop.jpg"),
            const SizedBox(height: 20),
            Image.asset("assets/images/Coffee.jpg"),
            const SizedBox(height: 20),
            Image.asset("assets/images/coffee1.jpeg"),
          ],
        ),
      ),
    );
  }
}