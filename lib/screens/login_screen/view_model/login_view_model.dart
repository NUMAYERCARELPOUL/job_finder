

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/screens/login_screen/model/login_model.dart';
import 'package:job_finder/screens/master_screen/view/master_screen_view.dart';
import 'package:job_finder/widgets/loading_over_delay.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../widgets/utils_snackbar.dart';
import '../repository/login_repo.dart';
class LoginScreenViewModel extends ChangeNotifier{
  TextEditingController userMobileNumberController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  LoginScreenRepo _loginScreenRepo=LoginScreenRepo();



  Future<void>userLogin(context)async{
if (userMobileNumberController.text.trim()==""){
  Utils.showPrimarySnackbar(context,"Enter your valid Phone Number",type: SnackType.error);
return ;
}
if(passwordController.text.trim()==""){
  Utils.showPrimarySnackbar(context,"Enter your Password",type: SnackType.error);
  return;
}
LoadingOverlay.of(context).show();
    print(userMobileNumberController.text.length);
    print(passwordController.text.length);
    // return;
await _loginScreenRepo.loginscreen(LoginReqModel(
    userName:userMobileNumberController.text.trim(),
     password:passwordController.text.trim(),
    deviceType: Platform.isAndroid?"android":"ios"
)).then((response) async{
  final result=LoginResModel.fromJson(jsonDecode(response.body));
  log(response.body);
  if(response.statusCode==200){
    SharedPreferences pref=await SharedPreferences.getInstance();
    if(result.success==true){
      pref.setString("userId",result.data?.id.toString()??"");
      pref.setString("roleType",result.data?.roleType.toString()??"");
      pref.setString("type","employee");
      LoadingOverlay.of(context).hide();

      Navigator.push(context,MaterialPageRoute(builder: (context)=>Master()));
    }
    else {
      LoadingOverlay.of(context).hide();
      Utils.showPrimarySnackbar(context, result.message,
          type: SnackType.error);
    }

  }

  else {
    LoadingOverlay.of(context).hide();
    Utils.showPrimarySnackbar(context, result.message,
        type: SnackType.error);
  }


}).onError((error, stackTrace) {
  LoadingOverlay.of(context).hide();
  Utils.showPrimarySnackbar(context, error, type: SnackType.debugError);
}).catchError(
        (Object e) {
      LoadingOverlay.of(context).hide();
      Utils.showPrimarySnackbar(context, e, type: SnackType.debugError);
    },
    test: (Object e) {
      LoadingOverlay.of(context).hide();
      Utils.showPrimarySnackbar(context, e, type: SnackType.debugError);
      return false;
    });}
  }

