import 'package:flutter/material.dart';

import 'books_list_view.dart';
import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppbar(), BooksListView()],
    );
  }
}
