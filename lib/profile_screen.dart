import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper/update_profile_screen.dart';

class profile_Screen extends StatefulWidget {
  const profile_Screen({super.key});

  @override
  State<profile_Screen> createState() => _profile_ScreenState();
}

class _profile_ScreenState extends State<profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                              image: AssetImage(
                                "assets/images/01.jpg",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFF023047),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(Icons.edit, size: 14,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "sayam kayani",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "sayamAdmin@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF023047),
                      side: BorderSide.none,
                      shape: StadiumBorder()),
                  child:
                      Text("EditProfile", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 30),
              Divider(indent: 20,endIndent: 20),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8 * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF023047),),
                          child:
                              Icon(Icons.settings, color: Colors.white, size: 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w600 ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF023047)),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 20),
                    ),
                  ],
                ),

              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,right: 16,left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF023047)),
                          child:
                          Icon(Icons.wallet, color: Colors.white, size: 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Wallet',
                          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w600 ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF023047)),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 20),
                    ),
                  ],
                ),

              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF023047)),
                          child:
                          Icon(Icons.person, color: Colors.white, size: 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'User Management',
                          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w600 ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF023047)),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 20),
                    ),
                  ],
                ),

              ),

              Divider(indent: 20,endIndent: 20),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 16,left: 16,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF023047),),
                          child:
                          Icon(Icons.info, color: Colors.white, size: 30),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Information',
                          style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:FontWeight.w600 ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF023047),),
                      child: Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 20),
                    ),
                  ],
                ),

              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF023047)),
                          child:
                          Icon(Icons.logout, color: Colors.white, size: 25),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(color: Colors.red,fontSize: 18,fontWeight:FontWeight.w600 ),
                        ),
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
