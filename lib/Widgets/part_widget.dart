import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
import '../provider.dart';

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
