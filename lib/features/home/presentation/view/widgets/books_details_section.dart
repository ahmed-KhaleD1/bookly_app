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
            child: const CustomBookImage()),
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
