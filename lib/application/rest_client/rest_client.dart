import 'package:get/get_connect.dart';

class RestClient extends GetConnect {
//  https://api.themoviedb.org/3/genre/movie/list?api_key=<<api_key>>&language=en-US

  RestClient() {
    httpClient.baseUrl = "https://api.themoviedb.org/3";
  }
}
