import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating_widget.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: const CustomBookImage(
              imageUrl:
                  'http://books.google.com/books/content?id=zsJlEK4nK7sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
            )),
        const SizedBox(
          height: 45,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'Rudyard Kipling',
          style:
              Styles.textStyle18.copyWith(color: Colors.white.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRatingWidget(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 36,
        ),
        const BooksAction()
      ],
    );
  }
}
