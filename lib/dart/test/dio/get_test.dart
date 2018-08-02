import 'package:dio/dio.dart';

main() async {
  Dio dio = new Dio();
  Response response;
  response = await dio.get("https://weapp.e7buy.cn/index.php?s=/api/index/page&wxapp_id=10001&token=9175d889014c3b95786a6e633b1aef8b");
  print(response.data['data']);

  Map params = new Map();
  params['s'] = "/api/index/page";
  params['wxapp_id'] = 10001;
  params['token'] = "9175d889014c3b95786a6e633b1aef8b";
  response = await dio.get("https://weapp.e7buy.cn/index.php", data:params);
  print(response.data['data']);
}