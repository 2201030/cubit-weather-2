import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather/manager/service.dart';
import 'package:weather/model.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit() : super(ApiInitial());
  getObj(String city)async{
 try {
  WeatherModel w=await weattherService().getWeatherDAta(city_name: city);
  
  emit(loding(W: w));
} on Exception catch (e) {
 emit(failuer());
}


  }
}
