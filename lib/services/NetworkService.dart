import 'dart:convert';

import 'package:http/http.dart';

class NetworkService {

  NetworkService(this.url);

  final String url;

  Future getData() async {
    Response response = await get( Uri.parse(url));
    if(response.statusCode == 200){
      String data = response.body;
      return data;
    }
  }

}