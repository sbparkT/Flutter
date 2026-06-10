
import 'package:flutter/material.dart';
import 'dart:math';   // Random 클래스 사용

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}


class _DiceScreenState extends State<DiceScreen> {

  // 상태 변수 (바뀌면 화면이 다시 그려짐)
  int _diceNumber = 1;     // 현재 주사위 숫자 (1~6)
  int _rollCount  = 0;     // 굴린 횟수
  List<int> _history = []; // 굴린 기록

  // 주사위 이모지 매핑
  final List<String> _diceEmoji = [
    '',    // 인덱스 0 (사용 안 함)
    '⚀', '⚁', '⚂', '⚃', '⚄', '⚅',
  ];

  // 주사위 굴리는 함수
  void _rollDice() {
    // setState() 안에서 변수를 바꿔야 화면이 갱신됨!
    setState(() {
      _diceNumber = Random().nextInt(6) + 1;  // 1~6 랜덤
      _rollCount++;
      _history.insert(0, _diceNumber);        // 앞에 추가
      if (_history.length > 10) {
        _history.removeLast();                // 최대 10개 유지
      }
    });
  }

  //
  void _reset() {
    setState(() {
      _diceNumber = 1;
      _rollCount  = 0;
      _history    = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // 앱 상단 바
      appBar: AppBar(
        title: const Text('🎲 주사위 굴리기'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          // 초기화 버튼
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _reset,
            tooltip: '초기화',
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 주사위 이모지 (크게)
            Text(
              _diceEmoji[_diceNumber],
              style: const TextStyle(fontSize: 120),
            ),

            const SizedBox(height: 16),

            // 숫자 표시
            Text(
              '$_diceNumber',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),

            const SizedBox(height: 8),

            // 굴린 횟수
            Text(
              '${_rollCount}번 굴렸어요',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(height: 40),

            // 굴리기 버튼
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: _rollDice,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  '🎲 굴리기',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 최근 기록
            if (_history.isNotEmpty) ...[
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '최근 기록',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: _history.map((n) =>
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.deepOrange.withOpacity(0.3)),
                    ),
                    child: Center(
                      child: Text(
                        _diceEmoji[n],
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ],

          ],
        ),
      ),
    );
  }
}
