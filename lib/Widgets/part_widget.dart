import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'PartDetail.dart';
class GridPart extends StatelessWidget {
  GridPart({Key? key}) : super(key: key);
  final List<Widget> buildMap = [
    const Row(
      children: [
        PartInformation(index: 0),
        PartInformation(index: 1),
      ],
    ),
    const Row(
      children: [
        PartInformation(index: 2),
        PartInformation(index: 3),
      ],
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(5, 8, 5, 6),
      child: ListTile(
        onTap: () {},
        selected: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        selectedTileColor: Colors.indigoAccent.shade100,
        title: const Text(
          "ADs",

        ),
        subtitle: const Text(
          "A Greet welcome to you all.",
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        // crossAxisSpacing: 12.0,
        // mainAxisSpacing: 12.0,
        // mainAxisExtent: 310,
      ),
      itemCount: buildMap.length,
      itemBuilder: (_, index) {
        return Container(
          child: buildMap.elementAt(index),
        );
      },
    );
  }
}
final List<Map<String, dynamic>> gridMap = [
  {
    "title": "white sneaker with adidas logo",
    "price": "\$255",
    "images":
    "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
  },
  {
    "title": "Black Jeans with blue stripes",
    "price": "\$245",
    "images":
    "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "title": "Red shoes with black stripes",
    "price": "\$155",
    "images":
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  },
  {
    "title": "Gamma shoes with beta brand.",
    "price": "\$275",
    "images":
    "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "title": "Alpha t-shirt for alpha testers.",
    "price": "\$25",
    "images":
    "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "title": "Beta jeans for beta testers",
    "price": "\$27",
    "images":
    "https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "title": "V&V  model white t shirts.",
    "price": "\$55",
    "images":
    "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  }
];

class PartInformation extends StatelessWidget {
  const PartInformation({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.0,
        ),
        color: Colors.amberAccent.shade100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Image.network(
              "${gridMap.elementAt(index)['images']}",
              height: 170,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${gridMap.elementAt(index)['title']}",
                  style: Theme.of(context).textTheme.subtitle1!.merge(
                    const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  "${gridMap.elementAt(index)['price']}",
                  style: Theme.of(context).textTheme.subtitle2!.merge(
                    TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.heart,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.cart,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
