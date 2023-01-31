// image =  "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png"
// const Color(0xff151f2c),
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revision/news%20app/provider/breakingnews_provider.dart';
import 'package:revision/news%20app/view/screens/listview.dart';
import 'package:revision/news%20app/view/screens/webviewscreen.dart';

class BreakingNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var provider1 = Provider.of<BreakingNewsProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('News app'),
        ),
        body:
            Consumer<BreakingNewsProvider>(builder: (context, provider, child) //di zy var provider bs di ansab llprojects el t2yla w kbera
            {
          return provider.breakingNewsList.length==0?Center(child:CircularProgressIndicator()):listview(lists:provider.breakingNewsList);

        }));
  }
}
