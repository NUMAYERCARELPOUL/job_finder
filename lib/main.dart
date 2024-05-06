import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/screens/login_screen/view/login_screen_view.dart';
import 'package:job_finder/screens/login_screen/view_model/login_view_model.dart';
import 'package:job_finder/screens/master_screen/view/master_screen_view.dart';
import 'package:job_finder/screens/splash_screen/view/splash_screen_view.dart';
import 'package:job_finder/widgets/loading_over_delay.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>LoginScreenViewModel()),

  ],child: MyApp(),));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child){
       return Container(
           alignment: Alignment.center,
           child: Directionality(
             textDirection: TextDirection.ltr,
             child: LoadingOverlay(
               child: GestureDetector(
                 behavior: HitTestBehavior.opaque,
                 onTap: () {
                   FocusScopeNode currentFocus = FocusScope.of(context);
                   if (!currentFocus.hasPrimaryFocus &&
                       currentFocus.focusedChild != null) {
                     FocusManager.instance.primaryFocus?.unfocus();
                   }
                 },
                 child: MaterialApp(
                   title: 'DutyPar',
                   theme: ThemeData(
                     primarySwatch: Colors.blue,
                     scaffoldBackgroundColor:  Colors.white,
                     fontFamily: 'Inter',
                   ),
                   debugShowCheckedModeBanner: false,
                   home:

                   SplashScreenView(),
                 ),
               ),
             ),
           ));
     } ,
    );

  }
}