

import 'package:flutter/material.dart';
class CartImage extends StatelessWidget {
  
  final String? image;
  final double containerWidth;
  final double containerHeight;
  const CartImage(

    {super.key, 
    
    required  this.image,
    required this.containerWidth, required this.containerHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(
                     image ?? 'https://images.pexels.com/photos/21972309/pexels-photo-21972309/free-photo-of-homme-gens-personnes-individus.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  fit: BoxFit.cover,
                ),
              ),
              width: containerWidth,
              height: containerWidth,
            );
  }
}