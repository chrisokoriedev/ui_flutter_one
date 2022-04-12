import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'main.dart';

class Money extends StatelessWidget {
  const Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 18,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color(0xffF1F1F1), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.grey,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Total Balance',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Money Distribution',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  ", when an unknown printer took a galley of type and scrambled it to make a "
                  "type specimen book. It has survived not only five centuries,",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    filled: true,
                    fillColor: const Color(0xff222222),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff222222),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff222222),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xff222222),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    buildListComponent(
                        'Namo Horo', Colors.blue, const FlutterLogo()),
                    buildListComponent('Namo Horo', const Color(0xff222222),
                        const FlutterLogo()),
                    buildListComponent(
                        'Namo Horo',
                        const Color(0xff222222),
                        const Icon(
                          Icons.person,
                          color: Colors.black,
                        )),
                    buildListComponent(
                        'Namo Horo', Colors.blue, const FlutterLogo()),
                    buildListComponent('Namo Horo', const Color(0xff222222),
                        const FlutterLogo()),
                    buildListComponent(
                        'Namo Horo',
                        const Color(0xff222222),
                        const Icon(
                          Icons.person,
                          color: Colors.black,
                        )),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildElevatedButton(
                            'Draft', const Color(0xff222222), () {}),
                        buildElevatedButton('Proceed', Colors.blue,
                            () => Get.to(const DashBoard())),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildListComponent(String name, Color colorStatus, Widget widget) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: widget),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'issue name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ],
          ),
          const Text(
            "\$250",
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Container(
              padding: const EdgeInsets.all(5),
              decoration:
                  BoxDecoration(color: colorStatus, shape: BoxShape.circle),
              child: const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 18,
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color(0xffF1F1F1), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.grey,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Total Balance',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                  ", when an unknown printer took a galley of type and scrambled it to make a "
                  "type specimen book. It has survived not only five centuries,",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 20),
                SfCartesianChart(
                  plotAreaBorderColor: Colors.transparent,
                  primaryXAxis: CategoryAxis(),
                  series: <SplineAreaSeries<SalesData, String>>[
                    SplineAreaSeries(
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Jan', 35),
                        SalesData('Feb', 28),
                        SalesData('Mar', 34),
                        SalesData('Apr', 32),
                        SalesData('May', 40)
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: const Color(0xff6A55DE),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 39, vertical: 15),
                              decoration: BoxDecoration(
                                  color: const Color(0xff5C45DB),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text(
                                'Credit',
                                style: TextStyle(fontSize: 28),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Salary',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'loruem fgje',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        '+\$2800',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    thickness: 1.5,
                                    indent: 38,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Online',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            'loruem fgje',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(
                                      //   width: 40,
                                      // ),
                                      const Text(
                                        '+ \$800',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff222222),
                    border: Border.all(
                      color: const Color(0xff5C45DB),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 15),
                              decoration: BoxDecoration(
                                  color: const Color(0xff5C45DB),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text(
                                'Debt',
                                style: TextStyle(fontSize: 28),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Spend',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'loruem fgje',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    '- \$20',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
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

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
