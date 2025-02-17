import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_app/pages/BMI/widgets/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double heightVal = 170.0;
  double weightVal = 70.0;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Expanded(
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      maleFemaleRow('male'),
                      const SizedBox(width: 20),
                      maleFemaleRow('female'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.teal,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              heightVal.toStringAsFixed(1),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 2.5),
                            const Text(
                              'CM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          activeColor: Colors.blueGrey,
                          min: 100,
                          max: 220,
                          value: heightVal,
                          onChanged: (newValue) {
                            setState(() => heightVal = newValue);
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Row(
                    children: [
                      weightAgeRow('weight'),
                      const SizedBox(width: 20),
                      weightAgeRow('age'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                NavBotton(
                  weightVal: weightVal,
                  heightVal: heightVal,
                  isMale: isMale,
                  age: age,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded maleFemaleRow(String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => isMale = type == 'male' ? true : false),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.blueGrey
                : Colors.teal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                type == 'male' ? Icons.male : Icons.female,
                color: Colors.white,
                size: 100,
              ),
              const SizedBox(height: 10),
              Text(
                type == 'male' ? 'Male' : 'Female',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded weightAgeRow(String type) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.teal,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              type == 'weight' ? 'Weight' : 'Age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              type == 'weight' ? '$weightVal' : '$age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  heroTag: type == 'weight' ? 'weight--' : 'age--',
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: () =>
                      setState(() => type == 'weight' ? weightVal-- : age--),
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: type == 'weight' ? 'weight++' : 'age++',
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: () =>
                      setState(() => type == 'weight' ? weightVal++ : age++),
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavBotton extends StatelessWidget {
  const NavBotton({
    super.key,
    required this.weightVal,
    required this.heightVal,
    required this.isMale,
    required this.age,
  });

  final double weightVal;
  final double heightVal;
  final bool isMale;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.teal,
      ),
      child: Expanded(
        child: TextButton(
          onPressed: () {
            var result = weightVal / pow((heightVal / 100), 2);
            // ignore: avoid_print
            print('>>>>>>>>>> $result <<<<<<<<<<<<<');
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ResultScreen(
                  result: result,
                  isMale: isMale,
                  age: age,
                ),
              ),
            );
          },
          child: const Text(
            'Calculate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
