import 'package:flutter/material.dart';
import 'package:seav_phov/core/base/view_model_provider.dart';
import 'package:seav_phov/views/book/book_view_adaptive.dart';
import 'package:seav_phov/views/book/book_view_model.dart';


class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<BookViewModel>(
      create: (context) => BookViewModel(),
      builder: (context, viewModel, child) {
        return BookViewAdaptive(viewModel: viewModel);
      },
    );
  }
}
