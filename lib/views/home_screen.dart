import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_web_app/controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        backgroundColor: const Color(0xfffafafa),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: controller.onWriteBtnTapped, icon: const Icon(Icons.add),color: Colors.red),
            const SizedBox(height: 50),
            IconButton(onPressed: controller.onReadBtnTapped, icon: const Icon(Icons.remove),color: Colors.red),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          toolbarHeight: 90,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Plant App",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 500,
                child: TextField(
                  onChanged: (val) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: "  Search Here",
                    suffixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(Icons.search)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.green,
                  )),
              const Text(
                " Cart",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.green),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outline_rounded,
                    color: Colors.green,
                  )),
              const Text(
                " Sign In",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.green),
              ),
            ],
          ),
          bottom: const TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.lightGreen,
              padding: EdgeInsets.only(bottom: 10),
              labelPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              tabs: [
                Text("All", style: TextStyle(color: Colors.black)),
                Text("Lorem Ipsum", style: TextStyle(color: Colors.black)),
                Text("Indoor Plant", style: TextStyle(color: Colors.black)),
                Text("Outdoor Plant", style: TextStyle(color: Colors.black)),
                Text("accompanied", style: TextStyle(color: Colors.black)),
                Text("Rackham", style: TextStyle(color: Colors.black)),
                Text("voluptatem", style: TextStyle(color: Colors.black)),
                Text("Nor", style: TextStyle(color: Colors.black)),
                Text("All", style: TextStyle(color: Colors.black)),
                Text("All", style: TextStyle(color: Colors.black)),
              ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  height: 450,
                  enlargeCenterPage: true,
                  viewportFraction: .98,
                  autoPlay: false,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.lightGreen.withOpacity(0.1),
                                const Color(0xfffafafa),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                      height: 120,
                                      width:
                                          MediaQuery.of(context).size.width * 0.2,
                                      color:  Colors.white),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                      height: 120,
                                      width:
                                          MediaQuery.of(context).size.width * 0.2,
                                      color: Colors.white),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                      height: 120,
                                      width:
                                          MediaQuery.of(context).size.width * 0.2,
                                      color: Colors.white),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 1000),
              Container(
                height: 350,
                width: double.infinity,
                color: const Color(0xff224229),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("COMPANY",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white)),
                        SizedBox(height: 20),
                        Text("About",style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text("Carrers",style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text("Lorem",style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text("Ipsum",style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text("hghgh",style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text("hguyjhbhj",style: TextStyle(color: Colors.white)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
