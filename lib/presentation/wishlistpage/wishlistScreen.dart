import 'package:flutter/material.dart';
import 'package:happyshop/appLogic/firebaseDB.dart';
import 'package:happyshop/constants/constants.dart';
import 'package:happyshop/model/itemDetailModel.dart';
import 'package:happyshop/presentation/wishlistpage/wishitemContainer.dart';
import 'package:happyshop/services/provider.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbottomNavColor,
        title: const Text('Wishlist'),
      ),
      body: Consumer<SMProvider>(
        builder: (context, provider, child) {
          List<ProductModel> data = provider.wishList;
          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return WishItemContainer(
                  onTap: () => context.read<SMProvider>().addToBag(
                        BagModel(
                            imageUrl: data[index].imageUrl1,
                            label: data[index].label,
                            //  size: data[index].size!,
                            style: data[index].style!,
                            quantity: data[index].quantity!,
                            price: data[index].price),
                      ),
                  index: index,
                  imageUrl: data[index].imageUrl1,
                  label: data[index].label,
                  price: data[index].price,
                );
              });
        },
      ),
    );
  }
}
