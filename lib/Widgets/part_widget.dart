import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constant/constants.dart';

class ListVIewPart extends StatelessWidget {
  ListVIewPart({Key? key}) : super(key: key);
  final List<Widget> buildMap = [
    const Text(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        "Nghe Hiểu"),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0),
        )),
        const Expanded(child: PartInformation(index: 1))
      ],
    ),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0),
        )),
        const Expanded(child: PartInformation(index: 3))
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
    ),
    const Text(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        "Đọ Hiểu"),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0),
        )),
        const Expanded(child: PartInformation(index: 5))
      ],
    ),
    const Row(
      children: [
        Expanded(child: PartInformation(index: 6)),
        Spacer()
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
    ),

    const Text(
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        "Luyện Tập"),

    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0),
        )),
        const Expanded(child: PartInformation(index: 1))
      ],
    ),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0),
        )),
        const Expanded(child: PartInformation(index: 3))
      ],
    ),
    const Row(
      children: [
        Expanded(child: PartInformation(index: 6)),
        Spacer()
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: buildMap.length,
      itemBuilder: (_, index) {
        // Add vertical spacing between items
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0), // Adjust the value as needed
          child: buildMap.elementAt(index),
        );
      },
    );
  }

}

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
                  style: Theme.of(context).textTheme.titleMedium!.merge(
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
                  style: Theme.of(context).textTheme.titleSmall!.merge(
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
