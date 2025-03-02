import 'package:counter_points/cubit/counter_cubit.dart';
import 'package:counter_points/cubit/counter_state.dart';
import 'package:counter_points/widgets/custom_text.dart';
import 'package:counter_points/widgets/evaluated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({
    super.key,
  });
int teamApoints=0;
int teamBpoints=0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      listener: (context,state){
        if(state is TeamAIncrementState){
           teamApoints=BlocProvider.of<CounterCubit>(context).teamApoints;
        }else{
          teamBpoints=BlocProvider.of<CounterCubit>(context).teamBpoints;
        }
      },
      builder:(context,state){ 
        return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sports_basketball_rounded,color: Colors.white,),
          title: const CustomText(
            text: 'Points Counter',
            fontFamily: 'Caveat',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                const SizedBox(height: 20,),
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
                          text: '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                          color: Colors.white,
                          fontSize: 130,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 1 Points',
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('A', 1);},
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 2 Points',
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('A', 2);},
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 3 Points',
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('A', 3);},
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
                          text: '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                          color: Colors.white,
                          fontSize: 130,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 1 Points',
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('B', 1);},
                          color: Colors.purple,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        EvaluatedButtonn(
                          text: 'Add 2 Points',
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('B', 2);},
                          color: Colors.purple,
                        ),
                        const SizedBox(height: 15,),
                        EvaluatedButtonn(
                          text: 'Add 3 Points', 
                          onPressed: () {BlocProvider.of<CounterCubit>(context).counter('B', 3);},
                          color: Colors.purple
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
                    BlocProvider.of<CounterCubit>(context).counter('R', 0);
                  },
                  color: Colors.purple,
                )
                ,
                const SizedBox(height: 50,),
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
      );
      }
    );
  }
}
