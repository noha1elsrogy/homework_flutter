import 'package:dio/dio.dart';
import 'package:whether_app/models/whether_model.dart';

class WhetherService {
  Dio dio = Dio();

  Future getWhetherMaxtTemp(String nameCountry) async {
    var dataDay;
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=e0df36db57664644bfa174007251404&q=$nameCountry&days=1');

    var jsonData = response.data;

    List whetherData = jsonData["forecast"]["forecastday"];

    var whetherDay = jsonData["forecast"]["forecastday"][0]['day'];
    return WhetherModel(
      maxTemp: whetherDay["maxtemp_c"].toString(),
      minTemp: whetherDay['mintemp_c'].toString(),
      wheherStatus: whetherDay['condition']['text'].toString(),
      avgTemp: whetherDay['avgtemp_c'].toString(),
      icon: whetherDay['condition']['icon'].toString(),
    );
  }
}
