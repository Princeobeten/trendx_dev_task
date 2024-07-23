import 'package:dev_task/investment_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

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
              color: const Color.fromRGBO(131, 131, 131, 1.0),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 0.5,
              ),
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

              // Circular Percent Indicator
              Center(
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 28.0,
                  backgroundColor: const Color.fromRGBO(29, 29, 29, 1.0),
                ),
              ),
              const SizedBox(height: 44.58),

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
                          "\$5,000",
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
                          "\$0",
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

              // Financial Target Section
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
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
                                color: const Color.fromRGBO(167, 252, 0, 1.0)),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Financial target",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                                Text(
                                  "0% progress made",
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
                          "\$10,000",
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
              const SizedBox(height: 16),

              // Start Investing Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InvestmentScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(29, 29, 29, 1.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Start investing",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        color: Color.fromRGBO(167, 252, 0, 1.0),
                        fontSize: 16),
                  ),
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
                          "\$5,000.00",
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
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
