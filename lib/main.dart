import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/news%20app/provider/breakingnews_provider.dart';
import 'package:revision/news%20app/provider/control_provider.dart';
import 'package:revision/news%20app/provider/search_provider.dart';
import 'package:revision/news%20app/provider/sports_provider.dart';
import 'package:revision/news%20app/view/screens/berkingnews_screen.dart';
import 'package:revision/news%20app/view/widgets/control_view.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context)=>ControlProvider()),
        ChangeNotifierProvider(create: (context)=>BreakingNewsProvider()),
        ChangeNotifierProvider(create: (context)=>SearchProvider()),
        ChangeNotifierProvider(create: (context)=>SportsProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: ControlView(),
      ),
    );
  }
}
