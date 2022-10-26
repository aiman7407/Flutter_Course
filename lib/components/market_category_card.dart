import 'package:flutter/material.dart';

class MarketCategoryCard  extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool isSelected;

  MarketCategoryCard({required this.title,required this.iconData,
  required this.isSelected
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  color: isSelected==true?Colors.green:Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Icon(iconData,
              color: isSelected==true?Colors.white:Colors.black,
              size: 30,
              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 3,
              vertical: 8
            ),
            child: Text(title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
