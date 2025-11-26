import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart'; // [OSS 1] 앱 소개 화면 라이브러리
import 'package:dash_chat_2/dash_chat_2.dart'; // [OSS 2] 채팅 UI 라이브러리
import 'package:finance_chatbot/service/chat_service.dart'; // [Custom] OpenAI API 연동 서비스

void main() {
  runApp(const IbkChatbotApp());
}

class IbkChatbotApp extends StatelessWidget {
  const IbkChatbotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IBK 기업은행 AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // IBK 기업은행 시그니처 컬러 (짙은 파란색) 적용
        primaryColor: const Color(0xFF134F9C),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF134F9C)),
        useMaterial3: true,
      ),
      // 앱 실행 시 첫 화면을 '소개 페이지'로 설정
      home: const IntroPage(),
    );
  }
}
