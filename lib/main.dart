import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:uione/sss.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              color: Color(0xffF1F1F1), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          )),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'User name',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Eler Minton',
                            style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications_none,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'This paper gives an insight into a key arm of Renewable Energy (RE) - Solar PPhoto-'
                'Voltaic). It presents key definitions, processes and technologies behind the Solar P'
                'V power generation process. willing to keyinto Solar PV as a clean alternative ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 350,
                child: StackedCardCarousel(
                  spaceBetweenItems: 140,
                  type: StackedCardCarouselType.cardsStack,
                  items: [
                    buildCard('Adewale Sheyi', '5234 4590 3421 4564',
                        const Color(0xff222222), 'master card'),
                    buildCard('Adewale Sheyi', '5234 4590 3421 4564',
                        const Color(0xff2A0073), 'master card'),
                    buildCard('Adewale Sheyi', '5234 4590 3421 4564',
                        const Color(0xff000173), 'master card'),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        'swipe up to revealed other card ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildElevatedButton('Send Money', Colors.blue, ()=>Get.to(const Money())),
                        buildElevatedButton(
                            'Pay Bills', const Color(0xff2A0073), () {}),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildElevatedButtonII(
                            'Add Money', const Color(0xff222222), () {}),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

ElevatedButton buildElevatedButton(
    String title, Color color, VoidCallback press) {
  return ElevatedButton(

    style: ButtonStyle(
      fixedSize:
      MaterialStateProperty.resolveWith((states) => const Size(150, 50)),
      backgroundColor: MaterialStateColor.resolveWith((states) => color),
      shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    onPressed: press,
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.w600),
    ),
  );
}

ElevatedButton buildElevatedButtonII(
    String title, Color color, VoidCallback press) {
  return ElevatedButton(
    style: ButtonStyle(
      fixedSize:
      MaterialStateProperty.resolveWith((states) => const Size(200, 50)),
      backgroundColor: MaterialStateColor.resolveWith((states) => color),
      shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    onPressed: press,
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 20, letterSpacing: 2.0, fontWeight: FontWeight.w600),
    ),
  );
}

buildCard(String cardHolderName, String accountNumber, Color color,
    String cardType) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Card Holder',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 2),
        Text(
          cardHolderName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 25),
        Text(
          accountNumber,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '12/25',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/card_icon.png',
                  width: 50,
                ),
                Text(
                  cardType,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
