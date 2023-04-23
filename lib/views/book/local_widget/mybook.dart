import 'package:flutter/material.dart';
import 'package:seav_phov/views/book/local_widget/book_data.dart';

Widget myBook(BookData book){
  return Container(
    width: 120.0,
    margin: const EdgeInsets.only(right: 12.0),
    child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 145,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
              image: DecorationImage(
                image: NetworkImage(book.bookCover),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Text(book.bookName, maxLines: 2,)
            )
        ],
      ),
    ),
  );
}
