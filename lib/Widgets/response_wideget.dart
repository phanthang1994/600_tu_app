import 'package:flutter/material.dart';

import '../provider.dart';
Widget wrapOrFlexible(int index, double hoanThanh, double widthScreen, double heightScreen, ref) {
  Widget a = const Column();
  if (widthScreen <= 60.0) {
    a = Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 0, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Nghe Hiểu"),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                          Map<String, dynamic> data = {
                            'hoanThanh': 10,
                            'width': widthScreen,
                            'height': heightScreen,
                            'index': 1,
                          };
                          ref.read(goRouterProvider).push('/part_detail', extra: data);
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 1"),
                      const Text('Mô Tả'),
                      const Text('Hình Ảnh'),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 2"),
                      const Text('Hỏi'),
                      const Text('Đáp')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 3"),
                      const Text('Hội Thoại'),
                      const Text('Ngắn')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 4"),
                      const Text('Bài Nói'),
                      const Text('Ngắn')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Đọc Hiểu"),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                          Map<String, dynamic> data = {
                            'hoanThanh': 10,
                            'width': widthScreen,
                            'height': heightScreen,
                            'index': 1,
                          };
                          ref.read(goRouterProvider).push('/part_detail', extra: data);

                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 5"),
                      const Text('Điền'),
                      const Text('Vào Câu'),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 6"),
                      const Text('Điền Vào'),
                      const Text('Đoạn Văn')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          "Part 7"),
                      const Text('Đọc Hiểu'),
                      const Text('Đoạn Văn')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Luyện Tập"),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                          Map<String, dynamic> data = {
                            'hoanThanh': 10,
                            'width': widthScreen,
                            'height': heightScreen,
                            'index': 1,
                          };
                          ref.read(goRouterProvider).push('/part_detail', extra: data);
                        },
                      ),
                      const Text('Test Thử'),
                      const Text('Điểm Ngay'),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text('Mẹo Hay'),
                      const Text('Các Part')
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text('Từ Vựng'),
                      const Text('Chế Tác')
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 1 * widthScreen,
                          height: 1 * widthScreen,
                          padding: const EdgeInsets.all(0.0),
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            color: Colors.grey[50],
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff9E9E9E),
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-2.0, -2.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                          child: const Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                        ),
                        onTap: () {
                          debugPrint("tapped on first");
                        },
                      ),
                      const Text('Ngữ Pháp'),
                      const Text('Căn Bản'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 20)),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  InkWell(
                    child: Container(
                      width: 1 * widthScreen,
                      height: 1 * widthScreen,
                      padding: const EdgeInsets.all(0.0),
                      margin: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.grey[50],
                        borderRadius:
                        const BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xff9E9E9E),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 8.0,
                              spreadRadius: 1.0),
                          BoxShadow(
                              color: Colors.white,
                              offset: Offset(-2.0, -2.0),
                              blurRadius: 8.0,
                              spreadRadius: 1.0),
                        ],
                      ),
                      child: const Icon(
                        Icons.collections,
                        color: Colors.green,
                      ),
                    ),
                    onTap: () {
                      debugPrint("tapped on first");
                    },
                  ),
                  const Text('Điểm Cao'),
                  const Text('Lộ Trình')
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
  else {
    a = Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Nghe Hiểu"),
            ),
            Wrap(
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                        Map<String, dynamic> data = {
                          'hoanThanh': 10,
                          'width': widthScreen,
                          'height': heightScreen,
                          'index': 1,
                        };
                        ref.read(goRouterProvider).push('/part_detail', extra: data);

                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 1"),
                    const Text('Mô Tả'),
                    const Text('Hình Ảnh'),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 2"),
                    const Text('Hỏi'),
                    const Text('Đáp')
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 3"),
                    const Text('Hội Thoại'),
                    const Text('Ngắn')
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 4"),
                    const Text('Bài Nói'),
                    const Text('Ngắn')
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Đọc Hiểu"),
            ),
            Wrap(
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                        Map<String, dynamic> data = {
                          'hoanThanh': 10,
                          'width': widthScreen,
                          'height': heightScreen,
                          'index': 1,
                        };
                        ref.read(goRouterProvider).push('/part_detail', extra: data);
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 5"),
                    const Text('Điền'),
                    const Text('Vào Câu'),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 6"),
                    const Text('Điền Vào'),
                    const Text('Đoạn Văn')
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        "Part 7"),
                    const Text('Đọc Hiểu'),
                    const Text('Đoạn Văn')
                  ],
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 5, bottom: 10),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  "Luyện Tập"),
            ),
            Wrap(
              children: <Widget>[
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                        Map<String, dynamic> data = {
                          'hoanThanh': 10,
                          'width': widthScreen,
                          'height': heightScreen,
                          'index': 1,
                        };
                        ref.read(goRouterProvider).push('/part_detail', extra: data);
                      },
                    ),
                    const Text('Test Thử'),
                    const Text('Điểm Ngay'),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text('Mẹo hay'),
                    const Text('Các Part')
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text('Từ Vựng'),
                    const Text('Chế Tác')
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text('Ngữ Pháp'),
                    const Text("Căn Bản"),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      child: Container(
                        width: 1 * widthScreen,
                        height: 1 * widthScreen,
                        padding: const EdgeInsets.all(0.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.grey[50],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xff9E9E9E),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-2.0, -2.0),
                                blurRadius: 8.0,
                                spreadRadius: 1.0),
                          ],
                        ),
                        child: const Icon(
                          Icons.collections,
                          color: Colors.green,
                        ),
                      ),
                      onTap: () {
                        debugPrint("tapped on first");
                      },
                    ),
                    const Text('Điểm Cao'),
                    const Text('Lộ Trình')
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
  return a ;
}