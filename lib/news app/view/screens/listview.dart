import 'package:flutter/material.dart';
import 'package:revision/news%20app/models/article_model.dart';

import 'webviewscreen.dart';

class listview extends StatelessWidget {
   listview({Key? key,required this.lists}) : super(key: key);
List<ArticleModel> lists=[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:lists.length,itemBuilder: (context, index) {
      return GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Webviewscreen(url: lists[index].url.toString()
            )));
        },
        child: Card(
          elevation: 5,
          color: Colors.blueGrey,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.network(
                     lists[index].urltoimg??"https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png"),
                ),
              ),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    title: Text(
                      lists[index].title.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      lists[index].des.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
