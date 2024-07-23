import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Color.fromRGBO(167, 252, 0, 1.0)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: ImageIcon(
              Image.asset('assets/images/share_ios.png').image,
              color: const Color.fromRGBO(167, 252, 0, 1.0),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 17),
            // Date Range Selector
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDateRangeButton("Today", true),
                    _buildDateRangeButton("1W"),
                    _buildDateRangeButton("2W"),
                    _buildDateRangeButton("1M"),
                    _buildDateRangeButton("3M"),
                    _buildDateRangeButton("6M"),
                    _buildDateRangeButton("9M"),
                    _buildDateRangeButton("1Y"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 44),

            // Circular Progress Bar
            Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Circular Percent Indicator
                  Center(
                    child: CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 28.0,
                      percent: 0.25,
                      animation: true,
                      animationDuration: 900,
                      backgroundColor: const Color.fromRGBO(29, 29, 29, 1.0),
                      linearGradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(169, 77, 255, 1.0),
                          Color.fromRGBO(169, 77, 255, 1.0),
                          Color.fromRGBO(69, 7, 105, 1.0),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 44),
            // Portfolio and Investments Info
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        "Portfolio",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Color.fromRGBO(131, 131, 131, 1.0),
                            fontSize: 16),
                      ),
                      Text(
                        "\$17,500",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 32),
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 40,
                    color: const Color.fromRGBO(52, 52, 52, 1.0),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Investments",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Color.fromRGBO(131, 131, 131, 1.0),
                            fontSize: 16),
                      ),
                      Text(
                        "\$9,500",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 32),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 44),
            // Portfolio Goal
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Portfolio goal",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
              ),
            ),
            const SizedBox(height: 14),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(20, 20, 20, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/solar_wallet-money-bold.png',
                            color: const Color.fromRGBO(167, 252, 0, 1.0),
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Financial target",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                  )),
                              Text(
                                "25% progress made",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        "\$15,000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // Investments Info
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Investments",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Text(
                      "See all stats",
                      style: TextStyle(
                        color: Color.fromRGBO(167, 252, 0, 1.0),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(20, 20, 20, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/user.png',
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Canvas: The Journey Unveiled",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                  )),
                              Text("Entertainment",
                                  style: TextStyle(
                                    color: Color.fromRGBO(131, 131, 131, 1.0),
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  const Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Capital invested:",
                            style: TextStyle(
                              color: Color.fromRGBO(179, 180, 179, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            "\$5,000.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gains till date:",
                            style: TextStyle(
                              color: Color.fromRGBO(179, 180, 179, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            "\$+550.00",
                            style: TextStyle(
                              color: Color.fromRGBO(41, 179, 88, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Losses till date:",
                            style: TextStyle(
                              color: Color.fromRGBO(179, 180, 179, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            "\$-97.50",
                            style: TextStyle(
                              color: Color.fromRGBO(186, 37, 67, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Current value:",
                            style: TextStyle(
                              color: Color.fromRGBO(179, 180, 179, 1.0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                          Text(
                            "\$5,452.50",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(10),
                    backgroundColor: const Color.fromRGBO(52, 52, 52, 1.0),
                    value: 0.1,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      Color.fromRGBO(169, 77, 255, 1.0),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    "Contributes 5% to your portfolio goal",
                    style: TextStyle(
                      color: Color.fromRGBO(186, 113, 255, 1.0),
                      fontSize: 12,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 36),

            Container(
              width: double.infinity,
              height: 1,
              color: const Color.fromRGBO(29, 29, 29, 1.0),
            ),
            const SizedBox(height: 16),

            // Wallet Balance and Fund Wallet Button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(20, 20, 20, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet balance",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      Text(
                        "\$8,000.00",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Color.fromRGBO(167, 252, 0, 1.0),
                            fontSize: 20),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Fund wallet",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 1,
              color: const Color.fromRGBO(29, 29, 29, 1.0),
            ),
            const SizedBox(height: 56),
          ],
        ),
      ),
    );
  }

  Widget _buildDateRangeButton(String text, [bool isSelected = false]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isSelected ? Colors.white : const Color.fromRGBO(29, 29, 29, 1.0),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: 'Inter',
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
