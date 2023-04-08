import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final int maxLength25 = 25;
  int _selectIndex = 0;
  final List<String> _choiceChipsList = [
    'IT/개발', '디자인', '문화활동', '음악', '여행', '봉사활동', '운동', '반려동물', '사교', '수업', '외국어', '맛집', '요리', '금융'
  ];
  List<int> _selectedIndex2 = [0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: Border(
              bottom: BorderSide(
                color: Color(0xFFF0F1F5),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 29),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '어떤 모임을 등록하실래요?',
                    hintStyle: TextStyle(
                        fontSize: 24,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFCED0D5)),
                    counterStyle: TextStyle(
                      height: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SUIT',
                      color: Color(0xFFCED0D5),
                    ),
                  ),
                  maxLength: maxLength25,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '카테고리',
                style: TextStyle(
                  fontFamily: 'SUIT',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFF1C1C1D),
                ),
              ),
              SizedBox(height: 19,),
              // Wrap(
              //   children: List<Widget>.generate(14, (int index) {
              //     return ChoiceChip(
              //       label: Text('_options', style: TextStyle(
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //         fontFamily: 'SUIT',
              //         color: Color(0xFF414346),
              //       ),),
              //       selected: false,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(8),
              //       side: BorderSide(color: Color(0xFFF2F3F7),),
              //     ),
              //     onSelected: (bool selected) {
              //       //Do something here
              //     },
              //     );
              //   }),
              //   runSpacing: 12.0,
              //   spacing: 12.0,
              //   alignment: WrapAlignment.start,
              // ),
            ],),
        ),
      ),
    );
  }
}
