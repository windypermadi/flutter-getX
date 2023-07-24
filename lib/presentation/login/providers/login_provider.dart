import 'package:get/get.dart';

import '../login_model.dart';

class LoginProvider extends GetConnect {
  var endPoint = 'https://baronbay.updateproject.my.id/api/user/login';

  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Login.fromJson(map);
      if (map is List) return map.map((item) => Login.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://baronbay.updateproject.my.id/api/user/login';
  }

  Future<Login?> getLogin(int id) async {
    final response = await get('login/$id');
    return response.body;
  }

  Future<Login> postLogin(Map<String, dynamic> login) async {
    var data = await post(endPoint, FormData(login));
    

    if (data.statusCode == 200){
      Login _login = Login.fromJson(data.body);
      return _login;
    } else {
      print(data.body);
      throw data.body;
    }
  } 

  Future<Response> deleteLogin(int id) async => await delete('login/$id');
}
