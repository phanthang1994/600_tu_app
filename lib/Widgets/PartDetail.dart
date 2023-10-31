import 'package:flutter/material.dart';

import '../Constant/constants.dart';
import 'CounterWidget.dart';
import 'InforPart.dart';
import 'SwitchWidget.dart';
import 'TotalWidget.dart';
class PartDetail extends StatelessWidget {
  final int completedQuestions;
  final int index;
  PartDetail(
      {Key? key,
        required this.completedQuestions,
        required this.index})
      : super(key: key);
  final ScrollController _firstController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Part $index')),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
                color: Colors.blue,
                height: height,
                child: const Text("Quảng cáo")),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.collections,
                        size: height * 1.2,
                        color: Colors.brown[900],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                              'Số câu đã làm'),
                          const Text('Trả lời đúng'),
                          Text('Hoàn thành: $completedQuestions %'),
                        ],
                      )
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    // height should be fixed for vertical scrolling
                    height: 3.5 * height,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      // adding borders around the widget
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    // SingleChildScrollView should be
                    // wrapped in an Expanded Widget
                    child: Scrollbar(
                      thumbVisibility: true,
                      controller: _firstController,
                      child: ListView.builder(
                          controller: _firstController,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return PaddedTextWidget(partInformation: infoPart1,);
                          }),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height,
                  child: const Text('Nâng cấp'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text('Số câu hỏi')),
                        SizedBox(
                          height: 2 * height,
                          child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, position) {
                              return CounterWidget(position + 1);
                            },
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        TotalQuestions(),
                        SwitchAppThang(),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: TextButton(
                    child: const Text(
                      'Bắt đầu nào',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          // do something
                          return const Text('Các Câu hỏi test 1');
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}