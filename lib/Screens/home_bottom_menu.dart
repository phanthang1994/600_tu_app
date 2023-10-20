import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Widgets/PartDetail.dart';
import '../provider.dart';
class HomeBottomMenuScreen extends ConsumerStatefulWidget  {

  const HomeBottomMenuScreen({Key? key,
  }) : super(key: key);

  @override
  ConsumerState<HomeBottomMenuScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeBottomMenuScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.removeListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }
  Widget wrapOrFlex1ible(double widthScreen, double heightScreen) {
    Widget a = Column();
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                // do something
                                return PartDetail(
                                    index: 1,
                                    hoanThanh: 10,
                                    width: widthScreen,
                                    height: heightScreen);
                              }),
                            );
                          },
                        ),
                        Text(
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
                        Text(
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
                        Text(
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
                        Text(
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                // do something
                                return PartDetail(
                                    index: 1,
                                    hoanThanh: 10,
                                    width: widthScreen,
                                    height: heightScreen);
                              }),
                            );
                          },
                        ),
                        Text(
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
                        Text(
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
                        Text(
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                // do something
                                return PartDetail(
                                    index: 1,
                                    hoanThanh: 10,
                                    width: widthScreen,
                                    height: heightScreen);
                              }),
                            );
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
    } else {
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              // do something
                              return PartDetail(
                                  index: 1,
                                  hoanThanh: 10,
                                  width: widthScreen,
                                  height: heightScreen);
                            }),
                          );
                        },
                      ),
                      Text(
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
                      Text(
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
                      Text(
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
                      Text(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              // do something
                              return PartDetail(
                                  index: 1,
                                  hoanThanh: 10,
                                  width: widthScreen,
                                  height: heightScreen);
                            }),
                          );
                        },
                      ),
                      Text(
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
                      Text(
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
                      Text(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              // do something
                              return PartDetail(
                                  index: 1,
                                  hoanThanh: 10,
                                  width: widthScreen,
                                  height: heightScreen);
                            }),
                          );
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
    return a;
  }
  @override
  Widget build(BuildContext context) {
    const double height = 70;
    double heightScreen = (MediaQuery.of(context).size.height - height) / 12;
    double widthScreen = (MediaQuery.of(context).size.width) / 5;
    double width = (MediaQuery.of(context).size.width);
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
        ),
        Positioned.fill(
          child: Image.asset(
            'assets/pictures/home_1.png',
            key: UniqueKey(),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomLeft,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: height),
          child: ListView(
            controller: scrollController,
            children: [
              InkWell(
                child: Container(
                  height: 2 * heightScreen,
                  color: Colors.red,
                  child: const Text('Để ảnh tự quảng cáo'),
                ),
                onTap: () {
                  debugPrint("tapped on first");
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.5 * heightScreen),
                  child: wrapOrFlex1ible(widthScreen, heightScreen)),
            ],
          ),
        ),
        Positioned(
            top: 0.0,
            child: Container(
                color: Colors.blue,
                height: height,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child:
                        Text("Quảng cáo đầu trang"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        color: Colors.white,
                        height: height,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) {
                                      return Scaffold(
                                        appBar: AppBar(
                                          title: const Text('Next page'),
                                        ),
                                        body: const Center(
                                          child: Text(
                                            'This is the next page',
                                            style: TextStyle(fontSize: 24),
                                          ),
                                        ),
                                      );
                                    },
                                  ));
                            },
                            icon: const Icon(IconData(0xee74,
                                fontFamily: 'MaterialIcons'))),
                      ),
                    )
                  ],
                ))),
      ],
    );
  }
}