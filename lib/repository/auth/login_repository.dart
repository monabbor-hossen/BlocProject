import 'package:blocc/config/app_url.dart';
import 'package:blocc/data/network/network_service_api.dart';
import 'package:blocc/models/user/user_model.dart';

class LoginRepository {

  final _api = NetworkServiceApi();
  Future<UserModel> loginApi(dynamic data) async{
    final response = await _api.postApi(AppUrl.loginApi, data);
    return UserModel.fromJson(response);
  }

}