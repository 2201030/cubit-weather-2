import 'package:dio/dio.dart';
import 'package:weather/model.dart';

class weattherService{

 late  WeatherModel weatherModel;
    Dio dio=Dio();
    String baseurl="http://api.weatherapi.com/v1";
        String keyy="d77728242aa347e6b94215653232209";

    bool isload=true;

Future<WeatherModel> getWeatherDAta({required String city_name}) async {


  Response r=await  dio.get("http://api.weatherapi.com/v1/forecast.json?key=d77728242aa347e6b94215653232209&q=${city_name}&days=1&aqi=no&alerts=no");
weatherModel=WeatherModel.origin(r.data);
return     weatherModel;


}











}