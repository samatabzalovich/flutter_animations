import 'package:flutter/material.dart';

class ShoppingCartButton extends StatefulWidget {
  const ShoppingCartButton({super.key});

  @override
  State<ShoppingCartButton> createState() => _ShoppingCartButtonState();
}

class _ShoppingCartButtonState extends State<ShoppingCartButton> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            curve: Curves.ease,
            duration: const Duration(milliseconds: 500),
            width: isExpanded ? 150 : 80.0,
            height: 60.0,
            decoration: BoxDecoration(
              color:isExpanded ? Colors.green : Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child:  Icon(
              isExpanded ? Icons.check : Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
