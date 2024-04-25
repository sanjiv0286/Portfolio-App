import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'translations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(), // Define translations
      locale: const Locale('en'), // Set initial locale
      fallbackLocale: const Locale('en'), // Fallback locale
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Localization Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selected Language: ${Get.locale!.languageCode}',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('hello'.tr, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text('welcome'.tr, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.to(const LanguageScreen()),
              child: const Text('Select Language'),
            ),
          ],
        ),
      ),
    );
  }
}

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Language'),
      ),
      body: ListView.builder(
        itemCount: AppTranslations().keys.length,
        itemBuilder: (context, index) {
          final languageCode = AppTranslations().keys.keys.elementAt(index);
          final languageName = AppTranslations().keys[languageCode]!['hello']!;
          return ListTile(
            title: Text(languageName),
            onTap: () => Get.updateLocale(Locale(languageCode)),
          );
        },
      ),
    );
  }
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': 'Hello',
          'welcome': 'Welcome',
        },
        'es': {
          'hello': 'Hola',
          'welcome': 'Bienvenido',
        },
        'fr': {
          'hello': 'Bonjour',
          'welcome': 'Bienvenue',
        },
        'ar': {
          'hello': 'مرحبا',
          'welcome': 'أهلا بك',
        },
        'zh': {
          'hello': '你好',
          'welcome': '欢迎',
        },
        'ru': {
          'hello': 'Привет',
          'welcome': 'Добро пожаловать',
        },
        'de': {
          'hello': 'Hallo',
          'welcome': 'Willkommen',
        },
        'hi': {
          'hello': 'नमस्ते',
          'welcome': 'स्वागत हे',
        },
        'pt': {
          'hello': 'Olá',
          'welcome': 'Bem-vindo',
        },
        'it': {
          'hello': 'Ciao',
          'welcome': 'Benvenuto',
        },
        'ja': {
          'hello': 'こんにちは',
          'welcome': 'ようこそ',
        },
        'ko': {
          'hello': '안녕하세요',
          'welcome': '어서 오세요',
        },
        'tr': {
          'hello': 'Merhaba',
          'welcome': 'Hoş geldiniz',
        },
        'nl': {
          'hello': 'Hallo',
          'welcome': 'Welkom',
        },
        'pl': {
          'hello': 'Cześć',
          'welcome': 'Witaj',
        },
        'sv': {
          'hello': 'Hej',
          'welcome': 'Välkommen',
        },
        'th': {
          'hello': 'สวัสดี',
          'welcome': 'ยินดีต้อนรับ',
        },
        'vi': {
          'hello': 'Xin chào',
          'welcome': 'Chào mừng',
        },
        'fa': {
          'hello': 'سلام',
          'welcome': 'خوش آمدید',
        },
        'id': {
          'hello': 'Halo',
          'welcome': 'Selamat datang',
        },
        'ro': {
          'hello': 'Salut',
          'welcome': 'Bun venit',
        },
        'cs': {
          'hello': 'Ahoj',
          'welcome': 'Vítejte',
        },
        'uk': {
          'hello': 'Привіт',
          'welcome': 'Ласкаво просимо',
        },
        'el': {
          'hello': 'Γεια σας',
          'welcome': 'Καλώς ήρθατε',
        },
        'no': {
          'hello': 'Hei',
          'welcome': 'Velkommen',
        },
        'fi': {
          'hello': 'Hei',
          'welcome': 'Tervetuloa',
        },

        // Add more languages here
      };
}
// **********************************
