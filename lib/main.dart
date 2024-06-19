import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeWork2(),
    );
  }
}

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            child: Image.asset('assets/images/theme2.png'),
          ),
          Container(
            child: Image.asset('assets/images/them1.png'),
          ),
          const Positioned(
            top: 40,
            right: 140,
            child: Text(
              'Главная',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 100,
            child: Container(
              width: 360,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        color: Colors.yellow[600],
                        size: 64,
                      ),
                      const Icon(
                        Icons.bolt_sharp,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Начните зарабатывать!',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Приобретите тариф Behype-PRO и начните свою карьеру!',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 390,
                height: 600,
                decoration: BoxDecoration(
                  color: const Color(0xffF9F8FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Категории',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        CommonCard(
                          title: 'Реклама',
                          title2: '106 компаний',
                          imagesUrl: 'assets/images/hands.png',
                        ),
                        SizedBox(width: 10),
                        CommonCard(
                          title: 'Взаимопиар',
                          title2: '56 заявок',
                          imagesUrl: 'assets/images/massage.png',
                        ),
                        SizedBox(width: 10),
                        CommonCard(
                          title: 'Бартер',
                          title2: '245 заявок',
                          imagesUrl: 'assets/images/lake.png',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          'Рекламные компании',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          alignment: Alignment.center,
                          width: 40,
                          height: 23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red),
                          child: const Text(
                            'Все',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          width: 170,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFD96DFF),
                                Color(0xFF6322E0),
                              ],
                            ),
                          ),
                          child: Image.asset('assets/images/paper.png'),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 170,
                          height: 40,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Colors.white,
                          ),
                          child: const Text(
                            'В новом обновлении',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CommonCard extends StatelessWidget {
  final String title;
  final String title2;
  final String imagesUrl;
  const CommonCard({
    Key? key,
    required this.title,
    required this.title2,
    required this.imagesUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF90640),
            Color(0xFF8F00FF),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 140,
      width: 115,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Expanded(
            child: Column(
              children: [
                Image.asset(
                  imagesUrl,
                  width: 70,
                  height: 90,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  title2,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeWork2 extends StatefulWidget {
  HomeWork2({super.key});

  @override
  State<HomeWork2> createState() => _HomeWork2State();
}

class _HomeWork2State extends State<HomeWork2> {
  TextEditingController nameText = TextEditingController();
  TextEditingController ageNum = TextEditingController();

  functionInfo(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('HomeWork2'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'name'),
            controller: nameText,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'age'),
            controller: ageNum,
            keyboardType: TextInputType.number,
          ),
          Text('ваше имя:  вам лет ')
        ],
      ),
    );
  }
}

