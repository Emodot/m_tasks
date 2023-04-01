// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:m_tasks/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: const Text('mTasks'),
        elevation: 0,
        // toolbarHeight: 70,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: iconsColor,
          ),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/MagnifyingGlass.svg",
              width: 20,
              colorFilter: const ColorFilter.mode(
                iconsColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/BellSimple.svg",
              width: 20,
              colorFilter: const ColorFilter.mode(
                iconsColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's up, Joy!",
                style: TextStyle(
                  color: Color(0xFF28315B),
                  fontWeight: FontWeight.w800,
                  fontSize: 27,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "CATEGORIES",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: headerColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      size: size,
                      tasksNo: 34,
                      categoryName: 'Business',
                      categoryColor: Colors.red,
                    ),
                    CategoryCard(
                      size: size,
                      tasksNo: 12,
                      categoryName: 'Personal',
                      categoryColor: Colors.red,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "TODAY'S TASKS",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: headerColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.size,
    required this.tasksNo,
    required this.categoryName,
    required this.categoryColor,
  });

  final Size size;
  final int tasksNo;
  final String categoryName;
  final Color categoryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: size.width * 0.5,
      decoration: BoxDecoration(
        // backgroundBlendMode: ,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: iconsColor.withOpacity(0.1),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$tasksNo Tasks",
              style: const TextStyle(
                color: iconsColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              categoryName,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Divider(
              color: categoryColor,
            )
          ],
        ),
      ),
    );
  }
}
