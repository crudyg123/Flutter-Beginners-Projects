import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'weather_state.dart';

class weatherCubit extends Cubit<weatherState> {
  weatherCubit(this.weatherService) : super(weatherInitial());
  WeatherService weatherService;
  String? cityName;
  WeatherModel? weatherModel;

  void getWeather({required String CityName}) async {
    emit(weatherLoading());
    try {
      weatherModel = await weatherService.getWeather(cityName: CityName);
      emit(weatherSuccess());
    } on Exception catch (e) {
      emit(weatherFailure());
    }
  }
}
