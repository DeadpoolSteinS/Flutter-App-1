// import 'package:amazon_clone_tutorial/common/widgets/loader.dart';
// import 'package:amazon_clone_tutorial/features/account/services/account_services.dart';
// import 'package:amazon_clone_tutorial/features/order_details/screens/order_details.dart';
// import 'package:amazon_clone_tutorial/models/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/global_variables.dart';
import 'package:flutter_application_1/features/account/widgets/single_product.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // List<Order>? orders;
  // final AccountServices accountServices = AccountServices();
  List list = [
    'https://images.unsplash.com/photo-1656703586591-abc37c1c586f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1656703586591-abc37c1c586f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1656703586591-abc37c1c586f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1656703586591-abc37c1c586f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   fetchOrders();
  // }

  // void fetchOrders() async {
  //   orders = await accountServices.fetchMyOrders(context: context);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // return orders == null
    //     ? const Loader()
    //     : Column(
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            // itemCount: orders!.length,
            itemCount: list.length,
            itemBuilder: (context, index) {
              // return GestureDetector(
              //   onTap: () {
              //     Navigator.pushNamed(
              //       context,
              //       OrderDetailScreen.routeName,
              //       arguments: orders![index],
              //     );
              //   },
              //   child: SingleProduct(
              //     image: orders![index].products[0].images[0],
              //   ),
              // );
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
