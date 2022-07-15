  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:sizer/sizer.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/home_0/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImltaG9mbWF0dGhpZXVAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbOTU1NzMsMTQxNTg4LDE0NTgwNCwxNDE1ODEsMTQ1ODA1LDE0MTYxMV0sImltYWdlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FGZFp1Y3EwdkhqbWRCUmQ5dHVIUV9Qa1VuWDh4VGpoQ2JlU1c2dmtlZkhiPXM5Ni1jIiwibmFtZSI6Ik1hdHRiYXR0IiwiZW1pdHRlciI6IlRldGEtQXV0aCIsImlhdCI6MTY1NzkyMDMwNSwiZXhwIjo0ODEzNjgwMzA1fQ.xes_eVJYgxMKGITG7xzeyWkXpfDZhcwJ5-4rpVE8usk',
      prjId: 141611,
    );
    
      Supabase.initialize(
    url: 'https://smebyncijpfljmccnaot.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtZWJ5bmNpanBmbGptY2NuYW90Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTczOTcyMTgsImV4cCI6MTk3Mjk3MzIxOH0.004IglIpPRTuvLcCQdT445y0JiGDoC6fmmOHMUWj-Ts',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (
          final context,
          final orientation,
          final deviceType,
        ) => MaterialApp(
          title: 'KC App V5',
          home: SplashScreenView(
            navigateRoute: PageHomeA0(),
            duration: 2200,
            imageSize: 80,
            imageSrc: 'assets/teta-app.png',
            text: '',
            textType: TextType.NormalText,
            textStyle: TextStyle(
              fontSize: 30.0,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      );
    }
  }
  