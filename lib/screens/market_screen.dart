import 'package:flutter/material.dart';
import 'package:flutter_session3/screens/order_summery_screen.dart';

import '../components/market_items_card.dart';
import '../components/market_category_card.dart';
import '../models/Item.dart';
import '../utils/app_navigator.dart';

class MarketScreen extends StatefulWidget {
  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {

  double total =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          //categories cards
          Row(
            children: [
              MarketCategoryCard(
                isSelected: false,
                title: 'Bakery',
                iconData: Icons.bakery_dining,
              ),
              MarketCategoryCard(
                isSelected: true,
                title: 'Fruits' ,
                iconData: Icons.fastfood_outlined,
              ),
              MarketCategoryCard(
                isSelected: false,
                title: 'Vegetables',
                iconData: Icons.fastfood,
              ),
              MarketCategoryCard(
                isSelected: false,
                title: 'Milk',
                iconData: Icons.local_drink,
              ),
            ],
          ),


      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(

            itemCount: marketItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.76,
                crossAxisCount: 2),
            itemBuilder: (context, index) =>  Column(
              children: [
                MarketItemCard(
                  item: marketItems[index],
                  function: (){
                    setState(() {
                      marketItems[index].counter++;
                      total+=marketItems[index].price;
                      print(total);
                    });
                  },
                ),
                Text('Counter of ${marketItems[index].counter}')
              ],
            )),
        ),
      ),

          TextButton(onPressed: (){
            AppNavigator.navigateToNewScreen(context, OrderSummryScreen(total: total), true);
          }, child: Text('Submit Order'))


        ],
      ),
    );
  }
}
