import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '스키장 선호도 조사',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SkiResortSurvey(),
    );
  }
}

class SkiResortSurvey extends StatefulWidget {
  @override
  _SkiResortSurveyState createState() => _SkiResortSurveyState();
}

class _SkiResortSurveyState extends State<SkiResortSurvey> {
  String? selectedResort;
  List<String> skiResorts = ['용평리조트', '비발디파크', '엘리시안 강촌', '하이원 리조트', '알펜시아'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스키장 선호도 조사'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '가장 자주 가는 스키장을 선택해주세요:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            for (String resort in skiResorts)
              RadioListTile<String>(
                title: Text(resort),
                value: resort,
                groupValue: selectedResort,
                onChanged: (value) {
                  setState(() {
                    selectedResort = value;
                  });
                },
              ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('제출'),
              onPressed: selectedResort != null
                  ? () {
                      // 여기에 제출 로직 추가
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('선택하신 스키장: $selectedResort')),
                      );
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
