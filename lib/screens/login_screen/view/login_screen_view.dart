import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:job_finder/screens/master_screen/view/master_screen_view.dart';
import 'package:job_finder/widgets/header.dart';
import 'package:job_finder/widgets/primary_button.dart';
import 'package:job_finder/widgets/primary_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../view_model/login_view_model.dart';
class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  @override
  Widget build(BuildContext context) {
    // final provider=Provider.of<LoginScreenViewModel>(context,listen: false);
    final watch=context.watch<LoginScreenViewModel>();
    final read=context.read<LoginScreenViewModel>();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 53.w,),
          SingleChildScrollView(
           child: Center(child: Text("Login",
             style: TextStyle(
               fontWeight: FontWeight.bold,fontSize: 24.w
             ),)),
          ),
          
          Padding(padding: EdgeInsets.only(left: 30.w,right: 30.w,),
          child: SizedBox(
            height: 60.w,
              width: 60.w,
              child: Center(child: Lottie.asset("assets/lottie/loginarrow.json"),)),),
          SizedBox(height: 100.w,),
          PrimaryTextField(
            controller: watch.userMobileNumberController,
            hint: 'Enter your Phone Number',),

          SizedBox(height: 20.w,),
          PrimaryTextField(
            controller: watch.passwordController,
            hint: 'Password',
          ),
          SizedBox(height: 10.w,),
          Container(child: Text("Forgot Password",)),
          SizedBox(height: 40.w,),
          SizedBox(
            height: 40,
            child: Padding(
              padding:  EdgeInsets.only(left: 60.w,right: 60.w),
              child: PrimaryButton(
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                  color: Colors.green, onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Master()));
                // provider.userLogin(context);
                read.userLogin(context);

              }),
            ),
          ),
          SizedBox(height: 90.w,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New User?"),
              Text("Create New Account ")
            ],
          )

        ],
      ),
    );
  }
}
