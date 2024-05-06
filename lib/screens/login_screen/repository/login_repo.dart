import 'package:http/http.dart' as http;
import 'package:job_finder/end_point/end_points.dart';
import 'package:job_finder/screens/login_screen/model/login_model.dart';
class LoginScreenRepo{
  Future<http.Response>loginscreen(LoginReqModel reqModel)async{
    try {
      print(EndPoint.employeeUserNameLogin);
      print(reqModel.toJson());
      return await http.post(Uri.parse(EndPoint.employeeUserNameLogin),body: reqModel.toJson());
    }
    catch (e) {
      throw Exception(e);
    }
  }
}