// ignore_for_file: must_be_immutable

import 'package:fakestore/feature/category/viewModel/category_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  CategoryViewModel categoryViewModel = CategoryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Women",
              style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Observer(
                builder: (context) {
                  return categoryViewModel.isLoadingProduct == true
                      ? SizedBox(
                          height: 25,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryViewModel.items?.length ?? 0,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                categoryViewModel.changeIndex(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Observer(builder: (_) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        categoryViewModel.items?[index] ?? '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: categoryViewModel.selectedIndex == index
                                              ? Colors.black
                                              : Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 20 / 4), //top padding 5
                                        height: 2,
                                        width: 30,
                                        color: categoryViewModel.selectedIndex == index
                                            ? Colors.black
                                            : Colors.transparent,
                                      )
                                    ],
                                  );
                                }),
                              ),
                            ),
                          ),
                        )
                      : const CircularProgressIndicator();
                },
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Observer(builder: (_) {
                return categoryViewModel.isLoadingProduct == true
                    ? GridView.builder(
                        itemCount: categoryViewModel.productModel?.length ?? 0,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      // For  demo we use fixed height  and width
                                      // Now we dont need them
                                      // height: 180,
                                      // width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Hero(
                                        tag: "${categoryViewModel.productModel?[index]?.id ?? ''}",
                                        child: Image.network(
                                            categoryViewModel.productModel?[index]?.image ?? ''),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20 / 4),
                                    child: Text(
                                      categoryViewModel.productModel?[index]?.title ?? '',
                                      style: TextStyle(color: Color(0xFFACACAC)),
                                    ),
                                  ),
                                  Text(
                                    "\$${categoryViewModel.productModel?[index]?.price ?? ''}",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ))
                    : const CircularProgressIndicator();
              }),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          color: const Color(0xFF535353),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.abc),
          color: const Color(0xFF535353),
          onPressed: () {},
        ),
        const SizedBox(width: 20 / 2)
      ],
    );
  }
}
