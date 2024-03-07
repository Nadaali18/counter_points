import 'package:counter_points/widgets/custom_text.dart';
import 'package:counter_points/widgets/evaluated_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;
  int teamBpoints = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sports_basketball_rounded),
          title: const CustomText(
            text: 'Points Counter',
            fontFamily: 'Caveat',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.purple,
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/basketballs.jpeg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const CustomText(
                          text: 'Team A',
                          color: Colors.white,
                          fontSize: 40,
                        ),
                        CustomText(
                          text: '$teamApoints',
                          color: Colors.white,
                          fontSize: 130,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 1 Points',
                          onPressed: () {
                            setState(() {
                              teamApoints++;
                            });
                          },
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 2 Points',
                          onPressed: () {
                            setState(() {
                              teamApoints += 2;
                            });
                          },
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 3 Points',
                          onPressed: () {
                            setState(() {
                              teamApoints += 3;
                            });
                          },
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 360,
                      child: VerticalDivider(
                        thickness: 1,
                        width: 50,
                        color: Colors.purple[200],
                      ),
                    ),
                    Column(
                      children: [
                       
                        const CustomText(
                          text: 'Team B',
                          color: Colors.white,
                          fontSize: 40,
                        ),
                        CustomText(
                          text: '$teamBpoints',
                          color: Colors.white,
                          fontSize: 130,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 1 Points',
                          onPressed: () {
                            setState(() {
                              teamBpoints++;
                            });
                          },
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 2 Points',
                          onPressed: () {
                            setState(() {
                              teamBpoints += 2;
                            });
                          },
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 3 Points',
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3;
                            });
                          },
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                EvaluatedButtonn(
                  text: 'Reset',
                  onPressed: () {
                    setState(() {
                      teamApoints = 0;
                      teamBpoints = 0;
                    });
                  },
                  color: Colors.purple,
                )
                ,
                SizedBox(height: 50,),
                CustomText(
                  text: 'Enjoy counting points ^_^',
                  color: Colors.purple[300],
                  fontSize: 30,
                  fontFamily: 'Caveat',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
