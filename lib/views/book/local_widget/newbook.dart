import 'package:flutter/material.dart';
import 'package:seav_phov/views/book/local_widget/book_data.dart';

Widget newBook(BookData book){
  return SafeArea(
    child: SizedBox(
      width: double.infinity,
      height: 128.0,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 128.0,
              width: 83.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(book.bookCover),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.bookName,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      book.author,
                      style: const TextStyle(
                        fontSize: 16.0
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.content_copy),
                        Text(book.pageNum.toString()),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                          child: Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber,),
                              Text(book.rating.toString()),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.bookmark_border),
            )
          ],
        ),
      ),
    ),
  );
}
