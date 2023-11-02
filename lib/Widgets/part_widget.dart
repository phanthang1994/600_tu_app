import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
import '../provider.dart';

class ListVIewPart extends StatelessWidget {
  ListVIewPart({Key? key}) : super(key: key);
  final List<Widget> buildMap = [
    Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.red,
            width: 5,
          ),
        ),
      ),
      child: const Text(
        "Nghe Hiểu",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),

    Row(
      children: [
        Flexible(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 0,),
        )),
        const Expanded(child: PartInformation(index: 1, ))
      ],
    ),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 2, ),
        )),
        const Expanded(child: PartInformation(index: 3, ))
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
    Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.red,
            width: 5,
          ),
        ),
      ),
      child: const Text(
        "Đọc Hiểu",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 4, ),
        )),
        const Expanded(child: PartInformation(index: 5, ))
      ],
    ),
    const Row(
      children: [
        Expanded(child: PartInformation(index: 6, )),
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

    Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.red,
            width: 5,
          ),
        ),
      ),
      child: const Text(
        "Luyện Tập",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ),

    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 7, ),
        )),
        const Expanded(child: PartInformation(index: 8, ))
      ],
    ),
    Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(right: 8.0),
          child: const PartInformation(index: 9, ),
        )),
        const Expanded(child: PartInformation(index: 10, ))
      ],
    ),
    const Row(
      children: [
        Expanded(child: PartInformation(index: 11, )),
        Spacer()
      ],
    ),
    const SizedBox(height: 10,)
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

class PartInformation extends ConsumerWidget {
  const PartInformation({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          GestureDetector(
            onTap: () {
              Map<String, dynamic> data = {
                'index': index,
              };
              ref.read(goRouterProvider).push('/part_detail', extra: data);
            },
            child: ClipRRect(
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${gridMap.elementAt(index)['PartNumber']}",
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
                  "${gridMap.elementAt(index)['Description']}",
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
