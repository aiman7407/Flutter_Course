import 'package:flutter/material.dart';
import 'package:flutter_session3/models/Item.dart';


class MarketItemCard extends StatelessWidget {


  final Item item;
  final function;



  MarketItemCard({required this.item, this.function, });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),

        width: 200,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Image.network(
             item.image,
              height: 80,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(item.title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold

                          ),
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(item.country,
                          style: TextStyle(color: Colors.grey[500],
                              fontWeight: FontWeight.bold
                          ),
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('${item.price} LE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,

                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            GestureDetector(
              onTap: function,
              child: Align(

                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight:Radius.circular(10) ,
                          topLeft: Radius.circular(10),

                        ) ,
                        color: Colors.green
                    ),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )),
            )



          ],
        ),
      ),
    );
  }
}
