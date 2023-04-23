import 'package:flutter/material.dart';
import 'package:seav_phov/views/book/book_view_model.dart';
import 'package:seav_phov/views/book/local_widget/book_data.dart';
import 'package:seav_phov/views/book/local_widget/mybook.dart';
import 'package:seav_phov/views/book/local_widget/newbook.dart';


class BookViewAdaptive extends StatelessWidget {
  BookViewAdaptive({
    super.key,
    required this.viewModel,
  });

  final BookViewModel viewModel;

  List<BookData> books = [
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    ),
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    ),
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    ),
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    ),
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    ),
    BookData(
      bookCover: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781481409209/story-thieves-9781481409209_hr.jpg",
      bookName: 'A Place Called Perfect',
      author: 'author',
      pageNum: 132,
      rating: 3.8,
      description: 'book description'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Library'),
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu)
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 190, 190, 190),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.all(8.0),
                  hintText: 'Search your favorite book...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'My Books',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 210.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myBook(books[0]),
                    myBook(books[1]),
                    myBook(books[2]),
                    myBook(books[4]),
                    myBook(books[5]),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "New Books",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 650.0,
                child: ListView(
                  children: [
                    newBook(books[0]),
                    newBook(books[1]),
                    newBook(books[2]),
                    newBook(books[3]),
                    newBook(books[4]),
                    newBook(books[5]),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
