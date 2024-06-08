import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    homeController.getAllImg();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      mainAxisExtent: 120),
                  itemCount: homeController.imgList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF023047),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Obx(() {
                          return Image.network(
                              "${homeController.imgList[index]['src']['large']}",
                              fit: BoxFit.cover);
                        }),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF023047),
          onPressed: () async {
            homeController.getAllImg();
            setState(() {});
          },
          child: (homeController.dataloder.value == true.obs)
              ? CircularProgressIndicator(
            color: Colors.orange,
          )
              : Icon(Icons.add, color: Colors.white,size: 30),
        ),
      ),
    );
  }
}
