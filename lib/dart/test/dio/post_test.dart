import 'package:dio/dio.dart';

main() async {
  Dio dio = new Dio();
  Response response;
  response=await dio.post("/test",data:{"id":12,"name":"wendu"});
  print(response.data);
}