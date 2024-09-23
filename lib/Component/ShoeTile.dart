
import 'package:ecommerce_app/Component/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(25),
              child: Expanded(child: Image.asset(shoe.imagePath))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(shoe.description,
            style:TextStyle(color: Colors.grey[600],
            fontSize: 16),),
          ),
Padding(
  padding: const EdgeInsets.only(left: 25.0),
  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(shoe.name,
          style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold),),
          Text('\$' + shoe.price,
          style: TextStyle(color: Colors.grey,
          fontSize: 16),),

        ],
      ),
      GestureDetector(
        onTap: onTap,
        child: Container(padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))
            ),
            child: Icon(Icons.add,
            color: Colors.white,)),
      ),
    ],
  ),
)
        ],
      ),
    );
  }
}
