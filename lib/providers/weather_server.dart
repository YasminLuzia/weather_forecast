import 'package:dio/dio.dart';

Future getData() async{
  var dio = Dio();
  var result = await dio.get("https://api.hgbrasil.com/weather?woeid=455823&key=a74889c4");
  return result.data;
}