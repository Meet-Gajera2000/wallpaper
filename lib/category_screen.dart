import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/category_controller.dart';

class category_Screen extends StatefulWidget {
  const category_Screen({super.key});

  @override
  State<category_Screen> createState() => _category_ScreenState();
}

class _category_ScreenState extends State<category_Screen> {
  final categoryController = Get.put(CategoryController());
  Rx<TextEditingController> searchController = TextEditingController().obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchController.value,
                decoration: InputDecoration(
                  hintText: 'Search Category',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 70),
                itemCount: categoryController.categoryList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF023047),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Obx(
                            () {
                          return Image.network(
                              "${categoryController.categoryList[index]['image']}",
                              fit: BoxFit.cover);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
