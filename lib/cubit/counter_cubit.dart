import 'package:counter_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(super.initialState);
   
   int teamApoints = 0;
   int teamBpoints = 0;

   void counter(String team,int buttonNumber){
      if(team=='A'){
        teamApoints+=buttonNumber;
      }else{
        teamBpoints+=buttonNumber;
      }
   }

}