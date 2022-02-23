import 'package:dio/dio.dart';

class DioHelper {

  static Dio dio;

  static init(){
    dio=Dio(
        BaseOptions(
          baseUrl: 'https://raw.githubusercontent.com/Biuni/',
          receiveDataWhenStatusError: true,
        )
    );
  }

  static Future<Response> getData({
    String url,
    Map<String,dynamic> query,
  })
  async {
    return await dio.get('PokemonGO-Pokedex/master/pokedex.json',queryParameters:query );
  }



}


