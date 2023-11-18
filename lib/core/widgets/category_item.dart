import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(3),
          clipBehavior: Clip.antiAlias,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "assets/images/category_image_1.png",
              ),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            color:Color(0xff004182),
          )
        ),
        const SizedBox(height: 10,),
        const Text(
          "Women’s\nfashion",
          style: TextStyle(
            color: Color(0xff06004F),
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
