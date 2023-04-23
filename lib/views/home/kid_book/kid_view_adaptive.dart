import 'package:flutter/material.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:seav_phov/views/home/kid_book/kid_view_model.dart';

class KidViewAdaptive extends StatefulWidget {
  const KidViewAdaptive({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final KidViewModel viewModel;

  @override
  State<KidViewAdaptive> createState() => KidViewAdaptiveState();
}

class KidViewAdaptiveState extends State<KidViewAdaptive> {
  RadioGroupController myController = RadioGroupController();
  @override
  void initState() {
    super.initState();
  }
  var status = 0;
  List data = [
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    },
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    },
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    },
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    },
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    },
    {
      "title": "Lorem Ipsum Sit Dolor Amet",
      "desc": "Lorem Ipsum Sit Dolor Amet",
      "image": "https://static01.nyt.com/images/2020/12/06/books/review/06KidsNotables--04/06KidsNotables--04-mobileMasterAt3x-v2.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Category"),
          actions: [
            IconButton(
              onPressed: (){
              setState(() {
                if (status == 0){
                  status = 1;
                } else {
                  status = 0;
                }
              });
              },
              icon: status == 0 ? const Icon(Icons.list) : const Icon(Icons.grid_view),
              tooltip: 'Open shopping cart',
            ),
          ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: status == 0 ? ListView.builder(
          itemBuilder: (context, index) {

            return Card(
                child: ListTile(
                  leading: Container(
                    width: 90.0,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(data[index]['image']),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  title: Text(data[index]['title'],  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                  subtitle: Text(data[index]['desc'],  style: const TextStyle(fontSize: 12)),
                  trailing: const Icon(Icons.bookmark),
                ),
            );
          },
          itemCount: data.length,
        )
        : GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (_, index){
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 150,
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(data[index]['image']),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(data[index]['title'], style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                        subtitle: Text(data[index]['desc'], style: const TextStyle(fontSize: 12, ),),
                        trailing: const Icon(Icons.bookmark),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: data.length,
        ),
      ),
    );
  }
}
