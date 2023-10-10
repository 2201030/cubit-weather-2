part of 'api_cubit.dart';

@immutable
abstract class ApiState {}

final class ApiInitial extends ApiState {}
final class loding extends ApiState {
final  WeatherModel W;

  loding({required this.W});

}
final class failuer extends ApiState {}
