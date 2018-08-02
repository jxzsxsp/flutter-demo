import 'package:dio/dio.dart';

main() async {
  Dio dio = new Dio();
  Response response;
  response = await dio.download("https://weapp.e7buy.cn/uploads/20180801101525caae12254.JPG", "./download/test.jpg");
  print(response.statusCode);
}