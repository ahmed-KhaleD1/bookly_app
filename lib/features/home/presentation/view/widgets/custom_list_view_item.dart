import 'package:flutter/material.dart';

class ListViewBookItem extends StatelessWidget {
  const ListViewBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api'))),
        ),
      ),
    );
  }
}
